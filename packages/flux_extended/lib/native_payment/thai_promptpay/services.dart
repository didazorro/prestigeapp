import 'dart:convert';

import 'package:fstore/common/constants.dart';
import 'package:fstore/services/services.dart';

import 'thai_promptpay_item.dart';

class ThaiPromptPayService {
  Future<List<ThaiPromptPayItem>> getThaiPromptPayDetail(String id) async {
    try {
      final domain = Services().api.domain;

      var promptPayInfo = <ThaiPromptPayItem>[];

      final response = await httpGet(
        Uri.parse('$domain/wp-json/promptpay/detail/$id'),
      );

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        promptPayInfo.add(ThaiPromptPayItem.fromJson(jsonData));
      }
      return promptPayInfo;
    } catch (e) {
      return [];
    }
  }
}
