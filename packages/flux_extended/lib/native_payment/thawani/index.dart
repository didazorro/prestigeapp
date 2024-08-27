import 'dart:async';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:fstore/common/config.dart';
import 'package:inspireui/inspireui.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'constants.dart';
import 'services.dart';

class ThawaniPayment extends StatefulWidget {
  final String orderId;
  final String email;
  final double amount;
  final Function? onComplete;
  final Function? onFailed;

  const ThawaniPayment(
      {required this.orderId,
      required this.email,
      required this.amount,
      this.onComplete,
      this.onFailed});

  @override
  State<StatefulWidget> createState() {
    return ThawaniPaymentState();
  }
}

class ThawaniPaymentState extends State<ThawaniPayment> {
  String? checkoutUrl;
  bool isLoading = true;
  ThawaniServices services = ThawaniServices();
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () async {
      try {
        final url = await services.getCheckoutUrl(
            orderId: widget.orderId,
            email: widget.email,
            amount: widget.amount);
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
                onPageFinished: (String url) {
                  if (url == checkoutUrl) {
                    setState(() {
                      isLoading = false;
                    });
                  }
                },
                onWebResourceError: (WebResourceError error) {},
                onNavigationRequest: (NavigationRequest request) {
                  if (request.url.startsWith(kSuccessRedirectUrl)) {
                    unawaited(services.updateOrderSuccess(widget.orderId));
                    widget.onComplete?.call();
                    Navigator.of(context).pop();
                  }
                  if (request.url.startsWith(kCancelRedirectUrl)) {
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
    return WillPopScopeWidget(
      onWillPop: _handleAndroidBack,
      child: Scaffold(
        appBar: isLoading
            ? AppBar(
                backgroundColor: Theme.of(context).colorScheme.surface,
                leading: GestureDetector(
                  onTap: () {
                    widget.onFailed?.call();
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back_ios),
                ),
              )
            : null,
        body: SafeArea(
            child: Stack(
          children: [
            if (checkoutUrl != null) WebViewWidget(controller: controller),
            if (isLoading)
              Positioned(
                top: 0,
                left: 0,
                bottom: 0,
                right: 0,
                child: Container(child: kLoadingWidget(context)),
              )
          ],
        )),
      ),
    );
  }

  Future<bool> _handleAndroidBack() async {
    widget.onFailed?.call();
    return true;
  }
}
