import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MouseHoverTransition extends StatefulWidget {
  final Widget child;
  final double scale;
  final Duration duration;

  const MouseHoverTransition({
    required this.child,
    this.scale = 0.05,
    this.duration = const Duration(milliseconds: 120),
  });

  @override
  State<MouseHoverTransition> createState() => _MouseHoverTransitionState();
}

class _MouseHoverTransitionState extends State<MouseHoverTransition>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  bool isHover = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      reverseDuration: widget.duration,
      duration: widget.duration,
      lowerBound: 0.0,
      upperBound: widget.scale,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onHover(PointerHoverEvent details) {
    if (isHover) return;
    isHover = true;
    _controller.forward();
  }

  void _onExit(PointerExitEvent details) {
    isHover = false;
    _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: _onHover,
      onExit: _onExit,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Transform.scale(
            scale: 1 + _controller.value,
            child: child,
          );
        },
        child: widget.child,
      ),
    );
  }
}
