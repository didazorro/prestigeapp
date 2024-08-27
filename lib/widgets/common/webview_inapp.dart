import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart' hide kIsWeb;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:inspireui/widgets/platform_error/platform_error.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../common/config.dart';
import '../../common/constants.dart';
import '../../common/extensions/extensions.dart';
import '../../models/entities/cookie_data.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class WebViewInApp extends StatefulWidget {
  final String url;
  final String? title;
  final String? script;
  final Function(String?, String?, InAppWebViewController?)? onUrlChanged;
  final Map<String, String>? headers;
  final Function? onClosed;
  final bool enableForward;
  final bool enableBackward;
  final bool enableClose;
  final Function? overrideNavigation;
  final AppBar? appBar;
  final bool showAppBar;
  final bool showLoading;
  final List<CookieData>? cookies;

  const WebViewInApp({
    super.key,
    required this.url,
    this.title,
    this.script,
    this.onUrlChanged,
    this.onClosed,
    this.headers,
    this.enableBackward = true,
    this.enableForward = true,
    this.enableClose = true,
    this.overrideNavigation,
    this.appBar,
    this.showAppBar = true,
    this.showLoading = true,
    this.cookies,
  });

  @override
  State<WebViewInApp> createState() => _WebViewInAppState();
}

class _WebViewInAppState extends State<WebViewInApp> {
  final GlobalKey webViewKey = GlobalKey();

  int selectedIndex = 1;

  InAppWebViewController? webViewController;

  InAppWebViewSettings settings = InAppWebViewSettings(
    useShouldOverrideUrlLoading: true,
    transparentBackground: true,
    mediaPlaybackRequiresUserGesture: false,
    useOnDownloadStart: true,
    useHybridComposition: true,
    allowsInlineMediaPlayback: true,
  );

  late PullToRefreshController pullToRefreshController;
  bool get _canPop =>
      ModalRoute.of(context)?.canPop ?? Navigator.of(context).canPop();

  void onTapBackButton() async {
    final value = await webViewController?.canGoBack();
    if (value == true) {
      await webViewController?.goBack();
    } else if (!widget.enableClose && _canPop) {
      widget.onClosed?.call();
      Navigator.of(context).pop();
    }
  }

  void onTapForwardButton() {
    webViewController?.goForward();
  }

  void onTapCloseButton() async {
    widget.onClosed?.call();

    if (_canPop) {
      Navigator.of(context).pop();
    }
  }

  @override
  void dispose() {
    if (kAdvanceConfig.alwaysClearWebViewCache) {
      InAppWebViewController.clearAllCache();
    }
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    if (widget.cookies?.isNotEmpty ?? false) {
      final cookieManager = CookieManager.instance();
      for (var cookie in widget.cookies!) {
        if (cookie.valid) {
          cookieManager.setCookie(
            url: WebUri(widget.url),
            name: cookie.name,
            value: cookie.value,
            isSecure: true,
          );
        }
      }
    }

    pullToRefreshController = PullToRefreshController(
      settings: PullToRefreshSettings(
        color: Colors.black45,
      ),
      onRefresh: () async {
        printLog('[WebView InApp] Pull to Refresh');
        if (isAndroid) {
          await webViewController?.reload();
        } else if (isIos) {
          await webViewController?.loadUrl(
              urlRequest: URLRequest(url: await webViewController?.getUrl()));
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    if (kIsWeb || isDesktop) {
      return const PlatformError(
        enablePop: false,
      );
    }
    return Scaffold(
      appBar: !widget.showAppBar
          ? null
          : widget.appBar ??
              AppBar(
                backgroundColor: Theme.of(context).colorScheme.surface,
                elevation: 0.0,
                centerTitle: true,
                title: Text(
                  widget.title ?? '',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                leadingWidth: 150,
                actions: [
                  if (widget.enableClose)
                    IconButton(
                      onPressed: onTapCloseButton,
                      icon: const Icon(Icons.close, size: 20),
                    ),
                  const SizedBox(width: 10),
                ],
                leading: Builder(builder: (buildContext) {
                  return Row(
                    children: [
                      const SizedBox(width: 20),
                      if (widget.enableBackward)
                        IconButton(
                          icon: const Icon(Icons.arrow_back_ios, size: 20),
                          onPressed: onTapBackButton,
                        ),
                      if (webViewController?.canGoForward() != null &&
                          widget.enableForward)
                        IconButton(
                          onPressed: onTapForwardButton,
                          icon: const Icon(Icons.arrow_forward_ios, size: 20),
                        ),
                    ],
                  );
                }),
              ),
      body: IndexedStack(
        index: selectedIndex,
        children: [
          InAppWebView(
            key: webViewKey,
            initialUrlRequest: URLRequest(
              url: WebUri(
                widget.url.addUrlQuery(kAdvanceConfig.alwaysClearWebViewCache
                    ? 'dummy=${DateTime.now().millisecondsSinceEpoch}'
                    : ''),
              ),
              headers: widget.headers,
            ),
            shouldOverrideUrlLoading: (controller, navigationAction) async {
              final url = navigationAction.request.url.toString();
              printLog('[WebViewInApp] should OverrideUrlLoading: $url');
              final result = await widget.overrideNavigation?.call(url);

              if (result == true) {
                return NavigationActionPolicy.CANCEL;
              }

              return NavigationActionPolicy.ALLOW;
            },
            initialUserScripts: UnmodifiableListView<UserScript>([
              /// Demo the Javascript Style override
              UserScript(
                source: widget.script ?? '',
                injectionTime: UserScriptInjectionTime.AT_DOCUMENT_END,
              ),
            ]),
            gestureRecognizers: <Factory<VerticalDragGestureRecognizer>>{}..add(
                const Factory<VerticalDragGestureRecognizer>(
                    VerticalDragGestureRecognizer.new),
              ),
            initialSettings: settings,
            pullToRefreshController: pullToRefreshController,
            onWebViewCreated: (controller) {
              webViewController = controller;
              InAppWebViewController.clearAllCache();
            },
            onPermissionRequest: (controller, request) async {
              return PermissionResponse(
                resources: request.resources,
                action: PermissionResponseAction.GRANT,
              );
            },
            onGeolocationPermissionsShowPrompt:
                (InAppWebViewController controller, String origin) async {
              final status = await Permission.locationWhenInUse.status;
              if (status.isDenied) {
                // For the first time if user have never asked for permission yet,
                // this status will return [PermissionStatus.denied].
                await Permission.location.request();
              } else if (status.isPermanentlyDenied) {
                // For the next time if user already denied permission, they
                // must go to app settings to allow permission manually again.
                await openAppSettings();
              }

              return GeolocationPermissionShowPromptResponse(
                origin: origin,
                allow: status.isGranted,
                retain: true,
              );
            },
            onReceivedError: (controller, request, error) {
              pullToRefreshController.endRefreshing();
            },
            onLoadStop: (androidIsReload, uri) {
              setState(() {
                selectedIndex = 0;
              });
              if (isAndroid) {
                _onUrlChange(uri);
              }
            },
            onProgressChanged: (_, progress) {
              if (progress == 100) {
                pullToRefreshController.endRefreshing();
              }
            },
            onUpdateVisitedHistory: (ctrl, uri, androidIsReload) {
              if (isAndroid == false) {
                _onUrlChange(uri);
              }
            },
            onDownloadStartRequest: (_, request) async {
              // ignore: deprecated_member_use
              await launch(request.url.toString());
            },
          ),
          if (widget.showLoading)
            Center(
              child: kLoadingWidget(context),
            )
          else
            const SizedBox(),
        ],
      ),
    );
  }

  Future<void> _onUrlChange(WebUri? uri) async {
    if (widget.onUrlChanged != null) {
      final html = await webViewController?.getHtml();
      WidgetsBinding.instance.addPostFrameCallback((_) =>
          widget.onUrlChanged!(uri?.toString(), html, webViewController));
    }
  }
}
