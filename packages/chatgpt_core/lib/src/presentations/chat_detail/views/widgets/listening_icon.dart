import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListeningIcon extends StatefulWidget {
  const ListeningIcon({
    super.key,
  });

  @override
  State<ListeningIcon> createState() => _ListeningIconState();
}

class _ListeningIconState extends State<ListeningIcon>
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
    return AnimatedBuilder(
      animation: _controller,
      child: Icon(
        CupertinoIcons.mic_fill,
        color: Theme.of(context).colorScheme.primary,
      ),
      builder: (BuildContext context, Widget? child) {
        return Transform.scale(
          scale: _controller.value,
          child: child,
        );
      },
    );
  }
}
