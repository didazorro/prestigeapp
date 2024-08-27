import 'dart:async';
import 'dart:convert' as convert;

import 'package:fstore/common/config.dart';
import 'package:fstore/common/constants.dart';
import 'package:http/http.dart' as http;

class TapServices {
  Future<String?> getCheckoutUrl(params) async {
    try {
      var response = await http.post(
        'https://api.tap.company/v2/charges'.toUri()!,
        body: convert.jsonEncode(params),
        headers: {
          'content-type': 'application/json',
          'Authorization': 'Bearer ${kTapConfig['SecretKey']}'
        },
      );

      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 200) {
        return body['transaction'] != null ? body['transaction']['url'] : null;
      } else if (body['errors'] != null) {
        var errors = List<Map<String, dynamic>>.from(body['errors']);
        if (errors.isNotEmpty) {
          throw errors[0]['description'];
        }
      }
      return null;
    } catch (e) {
      rethrow;
    }
  }

  Future confirmPayment(tapId) async {
    try {
      var response = await http.get(
        'https://api.tap.company/v2/charges/$tapId'.toUri()!,
        headers: {
          'content-type': 'application/json',
          'Authorization': 'Bearer ${kTapConfig['SecretKey']}'
        },
      );

      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 200 &&
          body['status'] != null &&
          body['status'] != 'CAPTURED') {
        throw _getStatusMessage(body);
      } else if (body['errors'] != null) {
        var errors = List<Map<String, dynamic>>.from(body['errors']);
        if (errors.isNotEmpty) {
          throw errors[0]['description'];
        }
      }
      return null;
    } catch (e) {
      rethrow;
    }
  }

  String _getStatusMessage(data) {
    var message = '';
    switch (data['status']) {
      case 'CAPTURED':
        message = 'The transaction completed successfully';
        break;
      case 'ABANDONED':
        message = 'The transaction has been abandoned';
        break;
      case 'CANCELLED':
        message = 'The transaction has been cancelled';
        break;
      case 'FAILED':
        message = 'The transaction has failed';
        break;
      case 'DECLINED':
        message = 'The transaction has been declined';
        break;
      case 'RESTRICTED':
        message = 'The transaction is restricted';
        break;
      case 'VOID':
        message = 'The transaction is voided';
        break;
      case 'TIMEDOUT':
        message = 'The transaction is timedout';
        break;
      case 'UNKNOWN':
        message = 'The transaction is unknown';
        break;
      default:
        message = 'The transaction cannot be completed';
    }
    return message;
  }
}
