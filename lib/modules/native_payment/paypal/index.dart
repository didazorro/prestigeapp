import 'dart:core';

import 'package:flutter/material.dart';
import 'package:inspireui/inspireui.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:quiver/strings.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../common/config.dart';
import '../../../common/constants.dart';
import '../../../common/tools/price_tools.dart';
import '../../../common/tools/tools.dart';
import '../../../generated/l10n.dart';
import '../../../models/index.dart' show AppModel, CartModel;
import 'services.dart';

const kReturnUrl = 'http://return.example.com';
const kCancelUrl = 'http://cancel.example.com';

class PaypalPayment extends StatefulWidget {
  final Function(String?, String?, String?)? onFinish;
  final bool isExpressCheckout;
  const PaypalPayment({this.onFinish, required this.isExpressCheckout});

  @override
  State<StatefulWidget> createState() {
    return PaypalPaymentState();
  }
}

class PaypalPaymentState extends State<PaypalPayment> {
  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();
  String? checkoutUrl;
  PaypalServices services = PaypalServices();
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () async {
      try {
        if (widget.isExpressCheckout) {
          checkoutUrl = await services.expressCheckout(getExpressOrderParams());
          _initWebViewController();
          setState(() {});
        } else {
          var accessToken = await services.getAccessToken();

          final transactions = getOrderParams();
          final res =
              await services.createPaypalPayment(transactions, accessToken);
          if (res != null) {
            setState(() {
              checkoutUrl = res['approvalUrl'];
              _initWebViewController(
                executeUrl: res['executeUrl'],
                accessToken: accessToken,
              );
            });
          }
        }
      } catch (e) {
        final snackBar = SnackBar(
          content: Text(e.toString().clearExceptionKey()),
          duration: const Duration(seconds: 10),
          action: SnackBarAction(
            label: S.of(context).close,
            onPressed: () {
              // Some code to undo the change.
            },
          ),
        );

        _scaffoldMessengerKey.currentState?.showSnackBar(snackBar);
      }
    });
  }

  void _initWebViewController({String? executeUrl, String? accessToken}) {
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
            if (request.url.startsWith(kReturnUrl)) {
              final uri = Uri.parse(request.url);
              final payerID = uri.queryParameters['PayerID'];
              final token = uri.queryParameters['token'];
              final paymentId = uri.queryParameters['paymentId'];
              if (payerID != null && executeUrl != null) {
                services
                    .executePayment(executeUrl, payerID, accessToken)
                    .then((id) {
                  widget.onFinish?.call(payerID, token, paymentId);
                });
              } else {
                widget.onFinish?.call(payerID, token, paymentId);
              }
              Navigator.of(context).pop();
            }
            if (request.url.startsWith(kCancelUrl)) {
              Navigator.of(context).pop();
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(checkoutUrl.toString()));
  }

  String formatPrice(String? price) {
    if (isNotBlank(price)) {
      final currencyRate =
          Provider.of<AppModel>(context, listen: false).currencyRate;
      final cartModel = Provider.of<CartModel>(context, listen: false);
      var p = PriceTools.getPriceValueByCurrency(
          price, cartModel.currencyCode!, currencyRate);
      final formatCurrency = NumberFormat('#,##0.00', 'en_US');
      return formatCurrency.format(p);
    } else {
      return '0';
    }
  }

  Map<String, dynamic> getOrderParams() {
    var cartModel = Provider.of<CartModel>(context, listen: false);
    final currency = Provider.of<AppModel>(context, listen: false).currency;
    final currencyUpperCase =
        (Tools.getCurrencyCode(currency) ?? '').toUpperCase();

    // this should add Shipping Cost + Coupon...
    final discountAmount = (cartModel.getCouponCost() +
        cartModel.walletAmount +
        cartModel.rewardTotal);
    final tax = cartModel.getTotal()! -
        cartModel.getSubTotal()! -
        cartModel.getShippingCost()! +
        discountAmount;

    var temp = <String, dynamic>{
      'intent': 'sale',
      'payer': {'payment_method': 'paypal'},
      'transactions': [
        {
          'amount': {
            'total': formatPrice(cartModel.getTotal().toString()),
            'currency': currencyUpperCase,
            'details': {
              'subtotal': formatPrice(cartModel.getSubTotal().toString()),
              'shipping': formatPrice(cartModel.getShippingCost().toString()),
              'shipping_discount':
                  formatPrice(((-1.0) * discountAmount).toString()),
              'tax': formatPrice(tax.toString())
            }
          },
          'description': 'The payment transaction description.',
          'payment_options': {
            'allowed_payment_method': 'INSTANT_FUNDING_SOURCE'
          },
          'item_list': {
            if (kPaymentConfig.enableShipping && kPaymentConfig.enableAddress)
              'shipping_address': {
                'recipient_name':
                    '${cartModel.address?.firstName ?? ''} ${cartModel.address?.lastName ?? ''}'
                        .trim(),
                'line1': cartModel.address?.street,
                'line2': '',
                'city': cartModel.address?.city,
                'country_code': cartModel.address?.country,
                'postal_code': cartModel.address?.zipCode,
                'phone': cartModel.address?.phoneNumber,
                'state': cartModel.address?.state
              },
          }
        }
      ],
      'note_to_payer': 'Contact us for any questions on your order.',
      'redirect_urls': {'return_url': kReturnUrl, 'cancel_url': kCancelUrl}
    };

    return temp;
  }

  Map<String, dynamic> getExpressOrderParams() {
    var cartModel = Provider.of<CartModel>(context, listen: false);
    final currency = Provider.of<AppModel>(context, listen: false).currency;
    final currencyUpperCase =
        (Tools.getCurrencyCode(currency) ?? '').toUpperCase();

    return {
      'USER': kPaypalExpressConfig['username'],
      'PWD': kPaypalExpressConfig['password'],
      'SIGNATURE': kPaypalExpressConfig['signature'],
      'METHOD': 'SetExpressCheckout',
      'VERSION': '95',
      'PAYMENTREQUEST_0_PAYMENTACTION': kPaypalExpressConfig['paymentAction'],
      'PAYMENTREQUEST_0_AMT': formatPrice(cartModel.getTotal().toString()),
      'PAYMENTREQUEST_0_CURRENCYCODE': currencyUpperCase,
      'cancelUrl': kCancelUrl,
      'returnUrl': kReturnUrl
    };
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
                widget.onFinish!(null, null, null);
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios),
            ),
          ),
          body: WebViewWidget(controller: controller),
        ),
      );
    }
    return WillPopScopeWidget(
      onWillPop: _handleAndroidBack,
      child: ScaffoldMessenger(
        key: _scaffoldMessengerKey,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  widget.onFinish!(null, null, null);
                  Navigator.of(context).pop();
                }),
            backgroundColor: kGrey200,
            elevation: 0.0,
          ),
          body: Container(child: kLoadingWidget(context)),
        ),
      ),
    );
  }

  Future<bool> _handleAndroidBack() async {
    widget.onFinish!(null, null, null);
    return true;
  }
}
