import 'package:flutter/material.dart';

import '../../../../common/config.dart';
import '../v2/order_list_item_v2.dart';
import 'order_list_item.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return switch (kOrderConfig.version) {
      2 => const OrderListItemNew(),
      _ => const OrderListItem(),
    };
  }
}
