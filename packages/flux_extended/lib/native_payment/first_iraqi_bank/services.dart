import 'dart:async';
import 'dart:convert' as convert;

import 'package:fstore/common/config.dart';
import 'package:fstore/common/constants.dart';
import 'package:fstore/common/tools/tools.dart';
import 'package:fstore/models/index.dart';
import 'package:fstore/services/index.dart';

class FIBServices {
  String? _paymentId;
  Order? _order;

  Future<String?> _generateToken() async {
    try {
      var response = await httpPost(
        'https://fib.stage.fib.iq/auth/realms/fib-online-shop/protocol/openid-connect/token'
            .toUri()!,
        body: {
          'grant_type': 'client_credentials',
          'client_id': kFIBConfig['clientId'],
          'client_secret': kFIBConfig['clientSecret']
        },
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
      );

      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 200 && body['access_token'] != null) {
        return body['access_token'];
      } else if (body['message'] != null) {
        throw body['message'];
      }
      throw "Can't get access_token";
    } catch (e) {
      rethrow;
    }
  }

  Future createPayment({
    required String amount,
    required String currency,
    required Order order,
    required Function(bool) onLoading,
  }) async {
    try {
      final token = await _generateToken();
      var response = await httpPost(
        'https://fib.stage.fib.iq/protected/v1/payments'.toUri()!,
        body: convert.jsonEncode({
          'monetaryValue': {'amount': amount, 'currency': currency},
          'description': 'Order ID #${order.id}',
          'statusCallbackUrl': 'https://mstore.io'
        }),
        headers: {
          'content-type': 'application/json',
          'Authorization': 'Bearer $token'
        },
      );

      final body = convert.jsonDecode(response.body);
      onLoading(false);
      if (response.statusCode == 201 && body['personalAppLink'] != null) {
        _paymentId = body['paymentId'];
        _order = order;
        await Tools.launchURL(body['personalAppLink']);
      } else if (body['message'] != null) {
        throw body['message'];
      }
    } catch (e) {
      onLoading(false);
      rethrow;
    }
  }

  Future checkPaymentStatus({
    required Function(bool, Order) onComplete,
    required Function(bool) onLoading,
  }) async {
    try {
      if (_paymentId == null) return;
      onLoading(true);
      final token = await _generateToken();
      var response = await httpGet(
        'https://fib.stage.fib.iq/protected/v1/payments/$_paymentId/status'
            .toUri()!,
        headers: {
          'content-type': 'application/json',
          'Authorization': 'Bearer $token'
        },
      );
      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 200 && body['status'] == 'PAID') {
        await _paymentSuccess();
        onComplete(true, _order!);
      } else {
        onComplete(false, _order!);
      }
    } catch (_) {
      onComplete(false, _order!);
    }
  }

  Future<void> _paymentSuccess() {
    return httpPost(
      '${Services().api.domain}/wp-json/api/flutter_fib/payment_success'
          .toUri()!,
      body: convert
          .jsonEncode({'order_id': _order?.id, 'payment_id': _paymentId}),
      headers: {'content-type': 'application/json'},
    );
  }
}
