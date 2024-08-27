import 'dart:async';
import 'dart:convert' as convert;

import 'package:fstore/common/config.dart';
import 'package:fstore/common/constants.dart';
import 'package:fstore/services/index.dart';
import 'package:fstore/services/services.dart';
import 'package:http/http.dart' as http;

import 'constants.dart';

class ThawaniServices {
  final domain = Services().api.domain;
  String? sessionId;
  String baseUrl = kThawaniConfig['production'] == true
      ? 'https://checkout.thawani.om'
      : 'https://uatcheckout.thawani.om';

  Future getCheckoutUrl(
      {required String orderId,
      required String email,
      required double amount}) async {
    try {
      var response = await http.post(
        '$baseUrl/api/v1/checkout/session'.toUri()!,
        body: convert.jsonEncode({
          'client_reference_id': orderId,
          'mode': 'payment',
          'products': [
            {
              'name': 'Invoice for order $orderId',
              'quantity': 1,
              'unit_amount': amount.toInt() * 1000
            }
          ],
          'success_url': kSuccessRedirectUrl,
          'cancel_url': kCancelRedirectUrl,
          'metadata': {'customer_email': email, 'order_id': orderId}
        }),
        headers: {
          'content-type': 'application/json',
          'thawani-api-key': kThawaniConfig['secretKey']
        },
      );
      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 200 &&
          body['data'] != null &&
          body['data']['session_id'] != null &&
          body['data']['session_id'].toString().isNotEmpty) {
        sessionId = body['data']['session_id'];
        return '$baseUrl/pay/$sessionId?key=${kThawaniConfig['publishableKey']}';
      } else if (body['success'] == false && body['description'] != null) {
        throw body['description'];
      } else if (body['data']['error'] != null &&
          List.from(body['data']['error']).isNotEmpty) {
        throw body['data']['error'][0]['message'];
      }
      return null;
    } catch (e, trace) {
      printLog(trace);
      rethrow;
    }
  }

  Future<bool?> updateOrderSuccess(String orderId) async {
    try {
      var response = await httpPost(
        '$domain/wp-json/api/flutter_thawani/order_success'.toUri()!,
        body: convert
            .jsonEncode({'order_id': orderId, 'session_token': sessionId}),
        headers: {'content-type': 'application/json'},
      );

      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 200 && body['success'] != null) {
        return body['success'];
      } else if (body['message'] != null) {
        throw body['message'];
      }
      return null;
    } catch (e) {
      rethrow;
    }
  }
}
