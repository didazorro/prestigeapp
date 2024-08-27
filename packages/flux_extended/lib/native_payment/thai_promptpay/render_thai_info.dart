import 'package:flutter/material.dart';
import 'package:fstore/common/config.dart';
import 'package:fstore/models/index.dart';

import 'services.dart';
import 'thai_promptpay_info.dart';
import 'thai_promptpay_item.dart';

class RenderThaiInfo extends StatelessWidget {
  final Order? order;
  final bool showThankMsg;
  const RenderThaiInfo(
    this.order, {
    this.showThankMsg = true,
  });

  Future<List<ThaiPromptPayItem>> getThaiPromptPayDetail() async {
    if (order?.paymentMethod == kThaiPromptPayConfig['paymentMethodId'] &&
        kThaiPromptPayConfig['enabled'] == true) {
      final id = order?.id;
      if (id != null) {
        return ThaiPromptPayService().getThaiPromptPayDetail(id);
      }
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ThaiPromptPayItem>>(
      future: getThaiPromptPayDetail(),
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
