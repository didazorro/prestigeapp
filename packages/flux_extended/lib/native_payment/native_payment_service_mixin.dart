import 'package:flutter/material.dart';
import 'package:fstore/common/config.dart';
import 'package:fstore/models/order/order.dart';

import 'thai_promptpay/services.dart';
import 'thai_promptpay/thai_promptpay_info.dart';
import 'thai_promptpay/thai_promptpay_item.dart';

mixin NativePaymentServiceMixin {
  Future<List<ThaiPromptPayItem>> _getThaiPromptPayDetail(
      {String? paymentMethodId, String? orderId}) async {
    if (paymentMethodId == kThaiPromptPayConfig['paymentMethodId'] &&
        kThaiPromptPayConfig['enabled'] == true) {
      final id = orderId;
      if (id != null) {
        return ThaiPromptPayService().getThaiPromptPayDetail(id);
      }
    }
    return [];
  }

  Widget thaiPromptPayBuilder({
    required bool showThankMsg,
    Order? order,
  }) {
    return FutureBuilder<List<ThaiPromptPayItem>>(
      future: _getThaiPromptPayDetail(
          paymentMethodId: order?.paymentMethod, orderId: order?.id),
      builder: (context, snapshot) {
        final data = snapshot.data ?? [];
        return Column(
          children: List.generate(
            data.length,
            (index) => ThaiPromptPayInfo(
              promptPayInfo: data[index],
              showThankMsg: showThankMsg,
            ),
          ),
        );
      },
    );
  }
}
