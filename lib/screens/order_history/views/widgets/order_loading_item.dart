import 'package:flutter/material.dart';

import '../../../../common/config.dart';
import '../v2/order_list_loading_item_v2.dart';
import 'order_list_loading_item.dart';

class OrderLoadingItem extends StatelessWidget {
  const OrderLoadingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return switch (kOrderConfig.version) {
      2 => const OrderListLoadingItemNew(),
      _ => const OrderListLoadingItem(),
    };
  }
}
