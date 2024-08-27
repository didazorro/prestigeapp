import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart' as image;
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';
// ignore: depend_on_referenced_packages
import 'package:webview_flutter_android/webview_flutter_android.dart';
// ignore: depend_on_referenced_packages
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

import '../../common/config.dart';
import '../../common/constants.dart';
import '../../common/tools.dart' hide ImagePicker;
import '../../generated/l10n.dart';
import '../../screens/common/app_bar_mixin.dart';
import '../html/index.dart';
import 'webview_inapp.dart';

mixin WebviewMixin {
  /// Return true when overridden and the navigation in webview should stop.
  Future<bool> overrideWebNavigation(String url) async {
    /// open the normal web link
    var isHttp = 'http';
    if (url.startsWith(isHttp)) {
      return false;
    }

    if (url.startsWith('intent://') && url.contains('scheme=')) {
      final intentInfo = url.substring(url.indexOf('scheme='));
      final scheme = intentInfo.substring(
          intentInfo.indexOf('scheme=') + 7, intentInfo.indexOf(';'));
      final newUrl = url.replaceFirst('intent://', '$scheme://');
      await Tools.launchURL(
        newUrl,
        mode: LaunchMode.externalNonBrowserApplication,
      );
      return true;
    }

    /// open external app link
    await Tools.launchURL(
      url,
      mode: LaunchMode.externalNonBrowserApplication,
    );

    return true;
  }

  Future<NavigationDecision> getNavigationDelegate(
      NavigationRequest request) async {
    final url = request.url;
    printLog('[WebView] getNavigationDelegate: $url');
    final overridden = await overrideWebNavigation(url);

    if (overridden) {
      return NavigationDecision.prevent;
    }

    return NavigationDecision.navigate;
  }
}

class WebView extends StatefulWidget {
  final String? url;
  final String? title;
  final AppBar? appBar;
  final bool enableForward;
  final bool enableBackward;
  final bool enableClose;
  final Function(String url)? onPageFinished;
  final Function? onClosed;
  final String script;
  final Map<String, String>? headers;
  final String? routeName;
  final bool hideNewAppBar;
  final bool showAppBar;
  final bool showLoading;

  const WebView({
    super.key,
    this.title,
    required this.url,
    this.appBar,
    this.onPageFinished,
    this.onClosed,
    this.script = '',
    this.headers,
    this.enableForward = true,
    this.enableBackward = true,
    this.enableClose = true,
    this.routeName,
    this.hideNewAppBar = false,
    this.showAppBar = true,
    this.showLoading = true,
  }) : assert(
          !(!showAppBar && (enableForward || enableBackward || enableClose)),
          'Cannot hide app bar if one of the following options EnableForward or EnableBackward or EnableClose is enabled',
        );

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> with WebviewMixin, AppBarMixin {
  int selectedIndex = 1;
  bool isLoading = true;
  String html = '';
  String get url {
    var value = widget.url ?? '';

    final uri = value.toUri();
    if (uri != null && uri.scheme.isEmpty) {
      value = 'https://$value';
    }

    if (kAdvanceConfig.alwaysClearWebViewCache) {
      value =
          value.addUrlQuery('dummy=${DateTime.now().millisecondsSinceEpoch}');
    }

    return value;
  }

  late final WebViewController _controller;
  late final PlatformWebViewControllerCreationParams params;

  final Set<foundation.Factory<OneSequenceGestureRecognizer>>
      gestureRecognizers = {
    const foundation.Factory(EagerGestureRecognizer.new)
  };

  void onFinishLoading() {
    setState(() {
      selectedIndex = 0;
    });
    _controller.runJavaScript(widget.script.isEmptyOrNull
        ? kAdvanceConfig.webViewScript
        : widget.script);
  }

  void onTapBackButton(BuildContext buildContext) async {
    var value = await _controller.canGoBack();
    if (value) {
      await _controller.goBack();
    } else if (!widget.enableClose && Navigator.canPop(context)) {
      widget.onClosed?.call();
      Navigator.of(context).pop();
    } else {
      Tools.showSnackBar(
          ScaffoldMessenger.of(buildContext), S.of(context).noBackHistoryItem);
    }
  }

  void onTapForwardButton(BuildContext buildContext) async {
    if (await _controller.canGoForward()) {
      await _controller.goForward();
    } else {
      Tools.showSnackBar(ScaffoldMessenger.of(buildContext),
          S.of(context).noForwardHistoryItem);
    }
  }

  void onTapCloseButton() async {
    widget.onClosed?.call();
    Navigator.of(context).pop();
  }

  void _handleGeolocationPermissionListener() async {
    if (isAndroid) {
      final androidController =
          _controller.platform as AndroidWebViewController;
      await androidController.setGeolocationPermissionsPromptCallbacks(
        onShowPrompt: (request) async {
          final status = await Permission.locationWhenInUse.request();

          if (status.isDenied) {
            // For the first time if user have never asked for permission yet,
            // this status will return [PermissionStatus.denied].
            await Permission.location.request();
          } else if (status.isPermanentlyDenied) {
            // For the next time if user already denied permission, they
            // must go to app settings to allow permission manually again.
            await openAppSettings();
          }

          return GeolocationPermissionsResponse(
            allow: status.isGranted,
            retain: true,
          );
        },
      );
    }
  }

  void _addFileSelectionListener() async {
    if (isAndroid) {
      final androidController =
          _controller.platform as AndroidWebViewController;
      await androidController.setOnShowFileSelector(_androidFilePicker);
    }
  }

  // Return a list of Uris
  Future<List<String>> _androidFilePicker(
      final FileSelectorParams params) async {
    final files = await showModalBottomSheet(
      context: context,
      builder: (BuildContext _) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                  leading: const Icon(Icons.photo_library),
                  title: const Text('Gallery'),
                  onTap: () {
                    final image = imagePicker(ImageSource.gallery);
                    Navigator.of(context).pop(image);
                  }),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Camera'),
                onTap: () {
                  final image = imagePicker(ImageSource.camera);
                  Navigator.of(context).pop(image);
                },
              ),
              ListTile(
                leading: const Icon(Icons.folder),
                title: const Text('File'),
                onTap: () {
                  final image = filePicker(params);
                  Navigator.of(context).pop(image);
                },
              ),
            ],
          ),
        );
      },
    );

    return files ?? [];
  }

  Future<List<String>> filePicker(final FileSelectorParams params) async {
    try {
      if (params.mode == FileSelectorMode.openMultiple) {
        final attachments =
            await FilePicker.platform.pickFiles(allowMultiple: true);
        if (attachments == null) return [];

        return attachments.files
            .where((element) => element.path != null)
            .map((e) => File(e.path!).uri.toString())
            .toList();
      } else {
        final attachment = await FilePicker.platform.pickFiles();
        if (attachment == null || attachment.files.single.path == null) {
          return [];
        }
        var file = File(attachment.files.single.path!);
        return [file.uri.toString()];
      }
    } catch (e) {
      return [];
    }
  }

  Future<List<String>> imagePicker(ImageSource source) async {
    final picker = ImagePicker();
    final photo = await picker.pickImage(source: source);
    if (photo == null) {
      return [];
    }

    final imageData = await photo.readAsBytes();
    final decodedImage = image.decodeImage(imageData)!;
    final scaledImage = image.copyResize(decodedImage, width: 500);
    final jpg = image.encodeJpg(scaledImage, quality: 90);

    final filePath = (await getTemporaryDirectory()).uri.resolve(
          './image_${DateTime.now().microsecondsSinceEpoch}.jpg',
        );
    final file = await File.fromUri(filePath).create(recursive: true);
    await file.writeAsBytes(jpg, flush: true);

    return [file.uri.toString()];
  }

  @override
  void initState() {
    if (isMacOS || isWindow) {
      httpGet(url.toString().toUri()!).then((response) {
        setState(() {
          html = response.body;
        });
      });
    }

    if (WebViewPlatform.instance is WebKitWebViewPlatform) {
      params = WebKitWebViewControllerCreationParams(
        allowsInlineMediaPlayback: true,
        mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
      );
    } else {
      params = const PlatformWebViewControllerCreationParams();
    }
    _controller = WebViewController.fromPlatformCreationParams(params)
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            if (progress == 100) {
              onFinishLoading();
            }
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) => widget.onPageFinished?.call(url),
          onWebResourceError: (WebResourceError error) {},
          // onNavigationRequest: (NavigationRequest request) {},
        ),
      )
      ..loadRequest(
        Uri.parse(url.toString()),
        headers: widget.headers ?? {},
      );

    // if (controller.platform is AndroidWebViewController) {
    //   AndroidWebViewController.enableDebugging(true);
    //   (controller.platform as AndroidWebViewController)
    //       .setMediaPlaybackRequiresUserGesture(false);
    // }

    _addFileSelectionListener();

    _handleGeolocationPermissionListener();

    super.initState();
  }

  @override
  void dispose() {
    if (kAdvanceConfig.alwaysClearWebViewCache) {
      _controller.clearCache();
    }
    if (kAdvanceConfig.alwaysClearWebViewCookie) {
      WebViewCookieManager().clearCookies();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isMacOS || isWindow) {
      return renderScaffold(
        routeName: widget.routeName ?? RouteList.webview,
        hideNewAppBar: widget.hideNewAppBar,
        secondAppBar: !widget.showAppBar
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
                  actions: [
                    if (widget.enableClose)
                      IconButton(
                        onPressed: onTapCloseButton,
                        icon: const Icon(Icons.close, size: 20),
                      ),
                    const SizedBox(width: 10),
                  ],
                  leading: Builder(
                    builder: (buildContext) {
                      return Row(
                        children: [
                          if (widget.enableBackward)
                            IconButton(
                              icon: const Icon(Icons.arrow_back_ios, size: 20),
                              onPressed: () {
                                if (Navigator.canPop(context)) {
                                  Navigator.of(context).pop();
                                }
                              },
                            ),
                          if (widget.enableForward)
                            IconButton(
                              onPressed: () {},
                              icon:
                                  const Icon(Icons.arrow_forward_ios, size: 20),
                            ),
                        ],
                      );
                    },
                  ),
                ),
        child: SingleChildScrollView(
          child: HtmlWidget(html),
        ),
      );
    }

    /// is Mobile or Web
    if (!kIsWeb && kAdvanceConfig.inAppWebView) {
      return renderScaffold(
        routeName: widget.routeName ?? RouteList.webview,
        hideNewAppBar: widget.hideNewAppBar,
        child: WebViewInApp(
          url: url,
          overrideNavigation: overrideWebNavigation,
          title: widget.title,
          script: widget.script.isEmptyOrNull
              ? kAdvanceConfig.webViewScript
              : widget.script,
          headers: widget.headers,
          enableForward: widget.enableForward,
          enableBackward: widget.enableBackward,
          enableClose: widget.enableClose,
          onClosed: widget.onClosed,
          onUrlChanged: (String? url, String? html, webViewController) {
            widget.onPageFinished?.call(url ?? '');
          },
          appBar: widget.appBar,
          showLoading: widget.showLoading,
          showAppBar: widget.showAppBar,
        ),
      );
    }

    return renderScaffold(
      routeName: widget.routeName ?? RouteList.webview,
      hideNewAppBar: widget.hideNewAppBar,
      secondAppBar: !widget.showAppBar
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
                leadingWidth: 100,
                actions: [
                  if (widget.enableClose)
                    IconButton(
                      onPressed: onTapCloseButton,
                      icon: const Icon(Icons.close, size: 20),
                    ),
                  const SizedBox(width: 10),
                ],
                leading: Builder(
                  builder: (buildContext) {
                    return Row(
                      children: [
                        if (widget.enableBackward)
                          IconButton(
                            icon: const Icon(Icons.arrow_back_ios, size: 20),
                            onPressed: () => onTapBackButton(buildContext),
                          ),
                        if (widget.enableForward)
                          IconButton(
                            onPressed: () => onTapForwardButton(buildContext),
                            icon: const Icon(Icons.arrow_forward_ios, size: 20),
                          ),
                      ],
                    );
                  },
                ),
              ),
      child: IndexedStack(
        index: selectedIndex,
        children: [
          Builder(builder: (BuildContext context) {
            return WebViewWidget(controller: _controller);
          }),
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
}
