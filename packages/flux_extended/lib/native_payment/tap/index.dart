import 'dart:core';

import 'package:flutter/material.dart';
import 'package:fstore/common/config.dart';
import 'package:fstore/models/entities/address.dart';
import 'package:inspireui/inspireui.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'services.dart';

const kSuccessUrl = 'https://your_website.com/success_url';
const kErrorUrl = 'https://your_website.com/error_url';

class TapPayment extends StatefulWidget {
  final Function(String)? onSuccess;
  final Function(String?)? onError;
  final double amount;
  final String? currency;
  final Address? address;

  const TapPayment(
      {this.onSuccess,
      this.onError,
      required this.amount,
      this.currency,
      this.address});

  @override
  State<StatefulWidget> createState() {
    return TapPaymentState();
  }
}

class TapPaymentState extends State<TapPayment> {
  String? checkoutUrl;
  bool _isLoading = true;
  TapServices services = TapServices();
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () async {
      try {
        final params = getOrderParams();
        final url = await services.getCheckoutUrl(params);
        setState(() {
          _isLoading = false;
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
                  if (request.url.startsWith(kSuccessUrl)) {
                    final uri = Uri.parse(request.url);
                    final tapId = uri.queryParameters['tap_id'];
                    if (tapId?.isNotEmpty ?? false) {
                      setState(() {
                        _isLoading = true;
                      });
                      services.confirmPayment(tapId).then((value) {
                        widget.onSuccess?.call(tapId!);
                        Navigator.of(context).pop();
                      }).catchError((e) {
                        widget.onError?.call(e.toString());
                        Navigator.of(context).pop();
                      });
                    }
                  }

                  if (request.url.startsWith(kErrorUrl)) {
                    widget.onError?.call('Error');
                    Navigator.of(context).pop();
                  }
                  return NavigationDecision.navigate;
                },
              ),
            )
            ..loadRequest(Uri.parse(checkoutUrl.toString()));
        });
      } catch (e) {
        widget.onError?.call(e.toString());
        Navigator.of(context).pop();
      }
    });
  }

  Map<String, dynamic> getOrderParams() {
    return {
      'amount': widget.amount,
      'currency': widget.currency,
      'threeDSecure': true,
      'save_card': false,
      'receipt': {'email': true, 'sms': true},
      'customer': {
        'first_name': widget.address?.firstName ?? '',
        'last_name': widget.address?.lastName ?? '',
        'email': widget.address?.email ?? '',
      },
      'source': {'id': 'src_all'},
      'post': {'url': kErrorUrl},
      'redirect': {'url': kSuccessUrl}
    };
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScopeWidget(
      onWillPop: _handleAndroidBack,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                widget.onError?.call(null);
                Navigator.of(context).pop();
              }),
          backgroundColor: Theme.of(context).colorScheme.surface,
          elevation: 0.0,
        ),
        body: !_isLoading && checkoutUrl != null
            ? WebViewWidget(controller: controller)
            : Container(child: kLoadingWidget(context)),
      ),
    );
  }

  Future<bool> _handleAndroidBack() async {
    widget.onError?.call(null);
    return true;
  }
}
