import 'package:flutter/material.dart';

class WrapStatusBar extends StatelessWidget {
  final Color? color;

  const WrapStatusBar({
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        color: color ?? Theme.of(context).colorScheme.surface,
        child: const SafeArea(
          bottom: false,
          child: SizedBox(),
        ),
      ),
    );
  }
}
