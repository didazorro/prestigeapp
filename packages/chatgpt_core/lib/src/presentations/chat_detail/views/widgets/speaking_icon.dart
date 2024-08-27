import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/extensions/build_context_ext.dart';

class SpeakingIcon extends StatefulWidget {
  const SpeakingIcon({super.key, required this.message, this.onSpeakTap});

  final String message;
  final Function()? onSpeakTap;

  @override
  State<SpeakingIcon> createState() => _SpeakingIconState();
}

class _SpeakingIconState extends State<SpeakingIcon>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    value: 1,
    duration: const Duration(seconds: 1),
    reverseDuration: const Duration(seconds: 1),
    lowerBound: 0.75,
    upperBound: 1.25,
    vsync: this,
  )
    ..forward()
    ..repeat(reverse: true);

  @override
  void dispose() {
    _controller.stop();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isRTL = context.isRTL();

    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: AnimatedBuilder(
        animation: _controller,
        child: IconButton(
          onPressed: () {
            widget.onSpeakTap?.call();
          },
          icon: Icon(
            isRTL
                ? CupertinoIcons.radiowaves_left
                : CupertinoIcons.radiowaves_right,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        builder: (BuildContext context, Widget? child) {
          return Transform.scale(
            scale: _controller.value,
            child: child,
          );
        },
      ),
    );
  }
}
