import 'dart:async';

import 'package:flutter/material.dart';

import '../../screens/base_screen.dart';

/// Time to show each item in milliseconds
const _kNumberDelay = 5000;

class HandleAutoSlide extends StatelessWidget {
  const HandleAutoSlide.page({
    super.key,
    required this.numberOfItems,
    required PageController controller,
    required this.child,
    required this.enable,
    required this.durationAutoSliding,
  })  : _pageController = controller,
        _scrollController = null;

  const HandleAutoSlide.list({
    super.key,
    required this.numberOfItems,
    required this.child,
    required this.enable,
    required this.durationAutoSliding,
    required ScrollController controller,
  })  : _pageController = null,
        _scrollController = controller;

  final ScrollController? _scrollController;
  final PageController? _pageController;
  final bool enable;
  final int numberOfItems;

  /// Time to show all items in seconds
  final int? durationAutoSliding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (enable) {
      return _scrollController != null
          ? HandleAutoSlideForList(
              numberOfItems: numberOfItems,
              controller: _scrollController!,
              durationAutoSliding: durationAutoSliding,
              child: child,
            )
          : HandleAutoSlideForPage(
              numberOfItems: numberOfItems,
              controller: _pageController!,
              durationAutoSliding: durationAutoSliding,
              child: child,
            );
    }

    return child;
  }
}

class HandleAutoSlideForPage extends StatefulWidget {
  const HandleAutoSlideForPage({
    super.key,
    required this.numberOfItems,
    required this.controller,
    required this.child,
    required this.durationAutoSliding,
  });

  final PageController controller;
  final int numberOfItems;
  final int? durationAutoSliding;
  final Widget child;

  @override
  State<HandleAutoSlideForPage> createState() => _HandleAutoSlideForPageState();
}

class _HandleAutoSlideForPageState extends BaseScreen<HandleAutoSlideForPage> {
  Timer? _timer;

  PageController get _controller => widget.controller;
  int get _numberOfItems => widget.numberOfItems;
  int get _timeOfEachItem =>
      widget.durationAutoSliding != null && widget.durationAutoSliding! > 0
          ? (widget.durationAutoSliding! * 1000 / _numberOfItems).round()
          : _kNumberDelay;

  void _resetTimer() {
    if (_timer?.isActive ?? false) {
      _timer?.cancel();
    }
    _autoSlidingPage();
  }

  Future<void> _autoSlidingPage() async {
    // Time to display the current item after initialization or reset
    await Future.delayed(Duration(milliseconds: _timeOfEachItem));

    _timer = Timer.periodic(
      // Time to show the each item
      Duration(milliseconds: _timeOfEachItem),
      (callback) async {
        // Use _controller.page because in some cases, if the user updates the
        // page view by dragging over any page, the position will not be updated
        if ((_controller.page?.round() ?? 0) < _numberOfItems - 1) {
          await _controller.nextPage(
            // Time to transition to the next item
            duration: const Duration(milliseconds: 300),
            curve: Curves.linear,
          );
        } else {
          _controller.jumpTo(0);
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _resetTimer();
  }

  @override
  void dispose() {
    if (_timer?.isActive ?? false) {
      _timer?.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragCancel: () {
        _resetTimer();
      },
      behavior: HitTestBehavior.translucent,
      child: widget.child,
    );
  }
}

class HandleAutoSlideForList extends StatefulWidget {
  const HandleAutoSlideForList({
    super.key,
    required this.numberOfItems,
    required this.controller,
    required this.child,
    required this.durationAutoSliding,
  });

  final ScrollController controller;
  final int numberOfItems;
  final int? durationAutoSliding;
  final Widget child;

  @override
  State<HandleAutoSlideForList> createState() => _HandleAutoSlideForListState();
}

class _HandleAutoSlideForListState extends BaseScreen<HandleAutoSlideForList> {
  bool _enableAuto = true;

  ScrollController get _controller => widget.controller;
  int get _numberOfItems => widget.numberOfItems;
  int get _timeDurationDefault => _numberOfItems * _kNumberDelay;
  double? get _maxPosition => _controller.position.maxScrollExtent;
  int get _duration =>
      widget.durationAutoSliding != null && widget.durationAutoSliding! > 0
          ? widget.durationAutoSliding! * 1000
          : _timeDurationDefault;

  void _cancelGesture() {
    _enableAuto = false;

    Future.delayed(const Duration(seconds: 3)).then((value) {
      var time;

      // Multiply each pixel's running time by the number of remaining pixels
      final remainingScrollAmount = _maxPosition! - _controller.position.pixels;
      time = ((_duration / _maxPosition!) * remainingScrollAmount).round();
      _autoSlidingScroll(time);
    });
  }

  void _onListenerController() {
    if (_enableAuto &&
        _maxPosition != null &&
        _controller.position.pixels == _maxPosition!) {
      _autoSlidingScroll(_duration);
    }
  }

  Future<void> _autoSlidingScroll(int time) async {
    // Time delay to show the current item, first or last item
    await Future.delayed(const Duration(seconds: 3));

    if (_maxPosition != null && _maxPosition! != _controller.position.pixels) {
      _enableAuto = true;
      await _controller.animateTo(
        _maxPosition!,
        duration: Duration(milliseconds: time),
        curve: Curves.linear,
      );
    } else {
      await _controller.animateTo(
        0,
        duration: Duration(milliseconds: time),
        curve: Curves.linear,
      );
      unawaited(_autoSlidingScroll(_duration));
    }
  }

  @override
  void afterFirstLayout(BuildContext context) {
    _controller.addListener(_onListenerController);
    _autoSlidingScroll(_duration);
  }

  @override
  void dispose() {
    _controller.removeListener(_onListenerController);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragCancel: () {
        _cancelGesture();
      },
      behavior: HitTestBehavior.translucent,
      child: widget.child,
    );
  }
}
