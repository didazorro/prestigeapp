import 'dart:async';
import 'dart:convert' as convert;

import 'package:expresspay_sdk/expresspay_sdk.dart';
import 'package:flutter/material.dart';
import 'package:fstore/common/config.dart';
import 'package:fstore/common/constants.dart';
import 'package:fstore/common/tools/price_tools.dart';
import 'package:fstore/generated/l10n.dart';
import 'package:fstore/models/cart/cart_model.dart';
import 'package:fstore/models/entities/credit_card_new.dart';
import 'package:fstore/modules/native_payment/credit_card/credit_card_payment.dart';
import 'package:fstore/services/services.dart';
import 'package:provider/provider.dart';

import 'index.dart';
import 'template.dart';

class ExpressPayHelper {
  static String? validateCheckout(BuildContext context, CartModel cartModel) {
    if (cartModel.currencyCode?.toUpperCase() != 'SAR') {
      return S
          .of(context)
          .currencyIsNotSupported(cartModel.currencyCode?.toUpperCase() ?? '');
    }
    // if (cartModel.address?.country?.toUpperCase() != 'SA') {
    //   return S
    //       .of(context)
    //       .countryIsNotSupported(cartModel.address?.country ?? '');
    // }
    return null;
  }
}

class CardInputResult {
  const CardInputResult({this.success, this.message, this.body});
  final bool? success;
  final String? message;
  final Map? body;
}

class ExpressPayServices {
  ExpressPayServices(
      {required this.amount,
      required this.orderId,
      required this.currency,
      required this.onSuccess,
      required this.onFail,
      required this.onCancel});

  final domain = Services().api.domain;
  final double amount;
  final String orderId;
  final String currency;
  final VoidCallback onSuccess;
  final Function(String) onFail;
  final Function() onCancel;

  void initSDK(BuildContext context) async {
    await ExpresspaySdk.instance.config(
        key: kExpressPayConfig['merchantKey'],
        password: kExpressPayConfig['merchantPassword'],
        enableDebug: kExpressPayConfig['production'] != true);
  }

  void openPayment(BuildContext context, {bool isApplePay = false}) {
    if (isApplePay) {
      final cartModel = Provider.of<CartModel>(context, listen: false);
      final order = ExpresspaySaleOrder(
          id: ExpresspaySdk.instance.HELPER.generateUUID(),
          amount: amount,
          currency: cartModel.currencyCode?.toUpperCase() ?? '',
          description: 'Payment for Order #$orderId');
      final payer = ExpresspayPayer(
        firstName: cartModel.address?.firstName ?? '',
        lastName: cartModel.address?.lastName ?? '',
        address: cartModel.address?.fullAddress ?? '',
        country: cartModel.address?.country ?? '',
        city: cartModel.address?.city ?? '',
        zip: cartModel.address?.zipCode ?? '',
        email: cartModel.address?.email ?? '',
        phone: cartModel.address?.phoneNumber ?? '',
        ip: '188.54.52.147',
      );
      final expressApplePay = ExpressApplePay();
      expressApplePay
          .setOrder(order)
          .setPayer(payer)
          .setApplePayMerchantID(kExpressPayConfig['merchantId']);
      expressApplePay.onAuthentication((Map response) {
        printLog('onAuthentication.response ===> ${response.toString()}');
      });
      expressApplePay.onTransactionFailure((Map response) {
        printLog('onTransactionFailure.response ===> ${response.toString()}');
        if (response['error'] != null) {
          onFail(response['error'].toString());
        } else {
          onFail(response.toString());
        }
      });
      expressApplePay.onTransactionSuccess((Map response) {
        printLog('onTransactionSuccess.response ===> ${response.toString()}');
        _showError(context, response.toString());
        //onFail(response.toString());
      });
      expressApplePay.onError((Map error) {
        printLog('onError.response ===> ${error.toString()}');
        onFail(error.toString());
      });
      expressApplePay.initialize(context);
    } else {
      _showCardPaymentSheet(context: context);
    }
  }

  Future<void> _verifyPayment(transactionId) async {
    try {
      final response = await httpPost(
        '$domain/wp-json/api/flutter_expresspay/verify_payment'.toUri()!,
        body: convert
            .jsonEncode({'order_id': orderId, 'transaction_id': transactionId}),
        headers: {'content-type': 'application/json'},
      );
      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 200 && body['success'] == true) {
        onSuccess();
      } else if (body['message'] != null) {
        throw body['message'];
      }
    } catch (e) {
      onFail(e.toString());
    }
  }

  void _showCardPaymentSheet({
    required BuildContext context,
  }) async {
    final result = await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      builder: (innerCtx) {
        return SafeArea(
          child: ExpressPayCreditCardPayment(
            orderId: orderId,
            amount: amount,
            currency: currency,
            onError: (String message) {
              Navigator.pop(
                  innerCtx, CardInputResult(message: message, success: false));
            },
            onComplete: (Map body) {
              Navigator.pop(
                  innerCtx, CardInputResult(success: true, body: body));
            },
          ),
        );
      },
    ) as CardInputResult?;

    if (result == null) {
      onCancel();
    } else if (result.message?.isNotEmpty ?? false) {
      onFail(result.message ?? '');
    } else if (result.body != null) {
      _onComplete(context, result.body!);
    }
  }

  void _onComplete(BuildContext context, Map body) {
    if (body['success'] == true) {
      onSuccess();
    } else if (body['url'] != null) {
      final transactionId = body['trans_id'];
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ExpressPayPayment(
            html:
                buildPaymentTemplate(body['url'], body['body'], body['method']),
            returnUrl: domain,
            onCancel: onCancel,
            onSuccess: () {
              _verifyPayment(transactionId);
            },
          ),
        ),
      );
    }
  }

  Future<void> _showError(BuildContext context, String message) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(S.of(context).errorTitle),
          content: Text(
            message,
          ),
        );
      },
    );
  }
}

class ExpressPayCreditCardPayment extends StatefulWidget {
  const ExpressPayCreditCardPayment({
    super.key,
    required this.onComplete,
    required this.onError,
    required this.orderId,
    required this.amount,
    required this.currency,
  });
  final Function(Map) onComplete;
  final Function(String) onError;
  final String orderId;
  final double amount;
  final String currency;

  @override
  State<ExpressPayCreditCardPayment> createState() =>
      _ExpressPayCreditCardPaymentState();
}

class _ExpressPayCreditCardPaymentState
    extends State<ExpressPayCreditCardPayment> {
  bool _isLoading = false;
  final domain = Services().api.domain;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: CreditCardPayment(
        payButton: _isLoading
            ? const SizedBox(
                height: 20, width: 20, child: CircularProgressIndicator())
            : Text(
                S.of(context).payWithAmount(PriceTools.getCurrencyFormatted(
                        widget.amount, {},
                        currency: widget.currency) ??
                    ''),
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
        onFinish: (card) {
          _submitCardCheckout(context, card);
        },
      ),
    );
  }

  Future _submitCardCheckout(BuildContext context, CreditCardNew card) async {
    try {
      setState(() {
        _isLoading = true;
      });
      final response = await httpPost(
        '$domain/wp-json/api/flutter_expresspay/card_checkout'.toUri()!,
        body: convert.jsonEncode({
          'order_id': widget.orderId,
          'card_number': card.number,
          'card_exp': card.expiryDate,
          'card_cvc': card.cvc,
          'return_url': domain
        }),
        headers: {'content-type': 'application/json'},
      );
      setState(() {
        _isLoading = false;
      });
      final body = convert.jsonDecode(response.body);
      if (body['message'] != null) {
        throw body['message'];
      } else {
        widget.onComplete(body);
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      widget.onError(e.toString());
    }
  }
}
