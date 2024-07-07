import 'dart:convert';
import 'package:collection/collection.dart';

import 'package:crypto/crypto.dart';

class PWGiftCardInfo {
  late String from;
  late String to;
  late String message;
  List<String>? numbers;

  PWGiftCardInfo({
    this.from = '',
    this.to = '',
    this.message = '',
    this.numbers,
  });

  PWGiftCardInfo.fromJson(dynamic json) {
    from = json['pw_gift_card_from'] ?? '';
    to = json['pw_gift_card_to'] ?? '';
    message = json['pw_gift_card_message'] ?? '';
    numbers = json['pw_gift_card_number'];
  }

  static PWGiftCardInfo? fromMetaData(dynamic meta) {
    if (meta is List) {
      var pwFrom = meta
          .firstWhereOrNull((e) => e is Map && e['key'] == 'pw_gift_card_from');
      var pwTo = meta
          .firstWhereOrNull((e) => e is Map && e['key'] == 'pw_gift_card_to');
      var pwMess = meta.firstWhereOrNull(
          (e) => e is Map && e['key'] == 'pw_gift_card_message');
      var pwNum = <String>[];
      for (var item in meta) {
        if (item is Map && item['key'] == 'pw_gift_card_number') {
          pwNum.add(item['value']);
        }
      }
      if (pwFrom is Map && pwTo is Map) {
        return PWGiftCardInfo(
          from: pwFrom['value'] ?? '',
          to: pwTo['value'] ?? '',
          message: pwMess is Map ? (pwMess['value'] ?? '') : '',
          numbers: pwNum.isNotEmpty ? pwNum : null,
        );
      }
    }
    return null;
  }

  Map toJson() {
    var map = {
      'pw_gift_card_from': from,
      'pw_gift_card_to': to,
      'pw_gift_card_message': message,
      'pw_gift_card_number': numbers,
    };
    map.removeWhere((key, value) => value == null);
    return map;
  }

  List<Map<String, dynamic>> toMetaData() {
    return [
      {'key': 'pw_gift_card_from', 'value': from},
      {'key': 'pw_gift_card_to', 'value': to.split(',').join(', ')},
      {'key': 'pw_gift_card_message', 'value': message}
    ];
  }
}

extension PWGiftExt on PWGiftCardInfo {
  bool get isValid => from.isNotEmpty && to.isNotEmpty;
  String get key => sha256.convert(utf8.encode(toJson().toString())).toString();
}
