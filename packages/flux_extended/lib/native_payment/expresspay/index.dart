import 'dart:core';

import 'package:flutter/material.dart';
import 'package:inspireui/inspireui.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ExpressPayPayment extends StatefulWidget {
  final String html;
  final String returnUrl;
  final VoidCallback onCancel;
  final Function onSuccess;

  const ExpressPayPayment(
      {required this.html,
      required this.returnUrl,
      required this.onCancel,
      required this.onSuccess});

  @override
  State<StatefulWidget> createState() {
    return ExpressPayPaymentState();
  }
}

class ExpressPayPaymentState extends State<ExpressPayPayment> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();

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
            if (request.url.startsWith(widget.returnUrl)) {
              widget.onSuccess();
              Navigator.of(context).pop();
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadHtmlString(widget.html);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScopeWidget(
      onWillPop: _handleAndroidBack,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.surface,
          leading: GestureDetector(
            onTap: () {
              widget.onCancel();
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios),
          ),
        ),
        body: WebViewWidget(controller: controller),
      ),
    );
  }

  Future<bool> _handleAndroidBack() async {
    widget.onCancel();
    return true;
  }
}
