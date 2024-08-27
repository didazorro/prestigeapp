import 'dart:async';
import 'dart:convert' as convert;

import 'package:fstore/common/config.dart';
import 'package:fstore/common/constants.dart';
import 'package:fstore/generated/l10n.dart';
import 'package:fstore/services/services.dart';

import 'constants.dart';

class XenditServices {
  final domain = Services().api.domain;

  String? checkMinMaxAmount(double amount, String currency) {
    switch (currency) {
      case 'IDR':
        {
          if (amount < 5000) {
            return S.current.minAmountForPayment('IDR', '5.000');
          }
          if (amount > 200000000) {
            return S.current.maxAmountForPayment('IDR', '200.000.000');
          }
        }
        break;
      case 'PHP':
        {
          if (amount < 20) {
            return S.current.minAmountForPayment('PHP', '20');
          }
          if (amount > 700000) {
            return S.current.maxAmountForPayment('PHP', '700.000');
          }
        }
        break;
      case 'USD':
        {
          if (amount < 1) {
            return S.current.minAmountForPayment('USD', '1');
          }
          if (amount > 200000000) {
            return S.current.maxAmountForPayment('USD', '200.000.000');
          }
        }
        break;
    }
    return null;
  }

  Future getCheckoutUrl(
      {required String orderId,
      required String email,
      required double amount,
      required String currency}) async {
    try {
      var token = EncodeUtils.encodeCookie(kXenditConfig['secretApiKey'] + ':');
      var response = await httpPost(
        'https://api.xendit.co/v2/invoices'.toUri()!,
        body: convert.jsonEncode({
          'external_id': 'mobile-$orderId',
          'amount': amount,
          'currency': currency,
          'payer_email': email,
          'description': 'Invoice for order $orderId',
          'success_redirect_url': kSuccessRedirectUrl,
          'failure_redirect_url': kFailedRedirectUrl
        }),
        headers: {
          'content-type': 'application/json',
          'Authorization': 'Basic $token'
        },
      );
      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 200 &&
          body['invoice_url'] != null &&
          body['invoice_url'].toString().isNotEmpty) {
        return body['invoice_url'];
      } else if (body['message'] != null) {
        throw body['message'];
      }
      return null;
    } catch (e) {
      rethrow;
    }
  }
}
