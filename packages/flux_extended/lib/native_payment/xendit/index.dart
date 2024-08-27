import 'dart:core';

import 'package:flutter/material.dart';
import 'package:fstore/common/config.dart';
import 'package:inspireui/inspireui.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'constants.dart';
import 'services.dart';

class XenditPayment extends StatefulWidget {
  final String orderId;
  final String email;
  final double amount;
  final String currency;
  final Function? onComplete;
  final Function? onFailed;

  const XenditPayment(
      {required this.orderId,
      required this.email,
      required this.amount,
      required this.currency,
      this.onComplete,
      this.onFailed});

  @override
  State<StatefulWidget> createState() {
    return XenditPaymentState();
  }
}

class XenditPaymentState extends State<XenditPayment> {
  String? checkoutUrl;
  XenditServices services = XenditServices();
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () async {
      try {
        final url = await services.getCheckoutUrl(
            orderId: widget.orderId,
            email: widget.email,
            amount: widget.amount,
            currency: widget.currency);
        setState(() {
          checkoutUrl = url;

          controller = WebViewController()
            ..setJavaScriptMode(JavaScriptMode.unrestricted)
            ..setBackgroundColor(const Color(0x00000000))
            ..setNavigationDelegate(
              NavigationDelegate(
                onProgress: (int progress) {
                  // Update loading bar.
                },
                onPageStarted: (String url) {},
                onPageFinished: (String url) {},
                onWebResourceError: (WebResourceError error) {},
                onNavigationRequest: (NavigationRequest request) {
                  if (request.url.startsWith(kSuccessRedirectUrl)) {
                    widget.onComplete?.call();
                    Navigator.of(context).pop();
                  }
                  if (request.url.startsWith(kFailedRedirectUrl)) {
                    widget.onFailed?.call();
                    Navigator.of(context).pop();
                  }
                  return NavigationDecision.navigate;
                },
              ),
            )
            ..loadRequest(Uri.parse(checkoutUrl.toString()));
        });
      } catch (e) {
        ScaffoldMessenger.of(context)
          ..removeCurrentSnackBar()
          ..showSnackBar(SnackBar(
            content: Text(e.toString()),
          ));
        widget.onFailed?.call();
        Navigator.of(context).pop();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (checkoutUrl != null) {
      return WillPopScopeWidget(
        onWillPop: _handleAndroidBack,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.surface,
            leading: GestureDetector(
              onTap: () {
                widget.onFailed?.call();
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios),
            ),
          ),
          body: WebViewWidget(controller: controller),
        ),
      );
    } else {
      return WillPopScopeWidget(
        onWillPop: _handleAndroidBack,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
            backgroundColor: Theme.of(context).colorScheme.surface,
            elevation: 0.0,
          ),
          body: Container(child: kLoadingWidget(context)),
        ),
      );
    }
  }

  Future<bool> _handleAndroidBack() async {
    widget.onFailed?.call();
    return true;
  }
}
