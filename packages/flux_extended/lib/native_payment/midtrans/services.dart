import 'dart:async';
import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:fstore/common/config.dart';
import 'package:fstore/common/constants.dart';
import 'package:fstore/services/services.dart';
import 'package:midtrans_sdk/midtrans_sdk.dart';

class MidtransServices {
  MidtransServices(
      {required this.amount,
      required this.orderId,
      required this.currency,
      required this.onCallback});

  final domain = Services().api.domain;
  final String amount;
  final String orderId;
  final String currency;
  final Function(bool) onCallback;

  MidtransSDK? _midtrans;

  void initSDK(BuildContext context) async {
    var isSandbox = kMidtransConfig['clientKey'].toString().contains('SB-');
    _midtrans = await MidtransSDK.init(
      config: MidtransConfig(
        clientKey: kMidtransConfig['clientKey'],
        merchantBaseUrl: !isSandbox
            ? 'https://api.midtrans.com/v2/'
            : 'https://api.sandbox.midtrans.com/v2/',
        colorTheme: ColorTheme(
          colorPrimary: Theme.of(context).colorScheme.primary,
          colorPrimaryDark: Theme.of(context).colorScheme.primary,
          colorSecondary: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
    await _midtrans?.setUIKitCustomSetting(
      skipCustomerDetailsPages: true,
    );
    _midtrans!.setTransactionFinishedCallback((TransactionResult result) {
      if (result.transactionId?.isNotEmpty ?? false) {
        _paymentSuccess(result.transactionId);
        onCallback(true);
      } else {
        onCallback(false);
      }
    });
  }

  Future<String?> _generateSnapToken(params) async {
    try {
      var response = await httpPost(
        '$domain/wp-json/api/flutter_midtrans/generate_snap_token'.toUri()!,
        body: convert.jsonEncode(params),
        headers: {'content-type': 'application/json'},
      );

      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 200 &&
          body['token'] != null &&
          body['token'].toString().isNotEmpty) {
        return body['token'];
      } else if (body['message'] != null) {
        throw body['message'];
      }
      return null;
    } catch (e) {
      rethrow;
    }
  }

  Future openPayment(Function(bool) onLoading) async {
    try {
      var params = {
        'order_id': orderId,
        'amount': amount,
        'currency': currency
      };
      final snapToken = await _generateSnapToken(params);
      onLoading(false);
      if (snapToken != null) {
        await _midtrans?.startPaymentUiFlow(
          token: snapToken,
        );
      } else {
        throw "Can't generate snap token";
      }
    } catch (e) {
      onLoading(false);
      rethrow;
    }
  }

  Future<void> _paymentSuccess(transactionId) {
    return httpPost(
      '$domain/wp-json/api/flutter_midtrans/payment_success'.toUri()!,
      body: convert
          .jsonEncode({'order_id': orderId, 'transaction_id': transactionId}),
      headers: {'content-type': 'application/json'},
    );
  }
}
