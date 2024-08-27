import 'dart:async';
import 'package:fstore/common/constants.dart';
import 'package:fstore/services/services.dart';

class MyFatoorahServices {
  MyFatoorahServices({required this.orderId, required this.paymentId});

  final domain = Services().api.domain;
  final String paymentId;
  final String orderId;

  Future<String?> myFatoorahComplete() async {
    try {
      await httpGet(
        '$domain/wp-json/api/flutter_myfatoorah/myfatoorah_complete?orderId=$orderId&paymentId=$paymentId'
            .toUri()!,
        headers: {'content-type': 'application/json'},
      );
      return null;
    } catch (e) {
      rethrow;
    }
  }
}
