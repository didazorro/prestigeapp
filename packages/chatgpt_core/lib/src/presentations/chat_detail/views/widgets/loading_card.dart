import 'package:flutter/material.dart';
import 'package:jumping_dot/jumping_dot.dart';

import '../../../../core/components/extensions/build_context_ext.dart';
import '../../../../domain/entities/message/message.dart';

class LoadingCard extends StatelessWidget {
  const LoadingCard({
    super.key,
    required this.message,
  });

  final Message message;

  @override
  Widget build(BuildContext context) {
    final isRTL = context.isRTL();

    return Container(
      padding: const EdgeInsets.only(top: 12),
      width: 70,
      height: 45,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(15),
          topRight: const Radius.circular(15),
          bottomLeft: Radius.circular((message.type.isUser ^ isRTL) ? 15 : 0),
          bottomRight: Radius.circular((message.type.isUser ^ isRTL) ? 0 : 15),
        ),
      ),
      child: JumpingDots(
        radius: 6,
        animationDuration: const Duration(milliseconds: 300),
        innerPadding: 2,
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
