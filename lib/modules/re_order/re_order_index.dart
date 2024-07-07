import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../models/entities/index.dart';
import '../../models/order/order.dart';
import 'reoder_mixin.dart';

class ReOrderIndex extends StatelessWidget with ReOderMixin {
  final Order order;

  const ReOrderIndex({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      child: TextButton(
        onPressed: () => reOrder(context, order),
        child: Text(
          S.of(context).reOrder,
        ),
      ),
    );
  }
}
