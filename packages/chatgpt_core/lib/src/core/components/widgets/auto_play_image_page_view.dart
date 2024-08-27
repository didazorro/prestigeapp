import 'dart:async';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

typedef AutoPlayImageBuilder = Widget Function(
  BuildContext context,
  int index,
  ImageProvider image,
);

class AutoPlayImagePageView extends StatefulWidget {
  final List<String> imageUrls;

  /// If null, will not auto play
  final Duration? duration;
  final PageController? controller;
  final AutoPlayImageBuilder builder;

  const AutoPlayImagePageView({
    super.key,
    required this.builder,
    required this.imageUrls,
    this.duration,
    this.controller,
  });

  @override
  State<AutoPlayImagePageView> createState() => _AutoPlayImagePageViewState();
}

class _AutoPlayImagePageViewState extends State<AutoPlayImagePageView> {
  late final PageController _pageController;
  Timer? _timer;
  late final Map<int, ImageProvider> _imageProviders;

  PageController get _effectiveController =>
      widget.controller ?? _pageController;

  @override
  void initState() {
    super.initState();
    _imageProviders = {};
    _pageController = PageController();
    _initAutoPlay();

    // Preload images
    _preloadImages(0);
  }

  void _initAutoPlay() {
    if (widget.duration == null) return;
    _timer = Timer.periodic(widget.duration!, (_) {
      if (_effectiveController.hasClients) {
        final nextPage = _effectiveController.page!.toInt() + 1;
        if (nextPage >= widget.imageUrls.length) {
          _effectiveController.jumpToPage(0);
        } else {
          _effectiveController.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        }
      }
    });
  }

  void _preloadImages(int index) {
    for (var i = index; i < widget.imageUrls.length && i < index + 3; i++) {
      if (i == widget.imageUrls.length) break;
      final provider = ExtendedNetworkImageProvider(widget.imageUrls[i]);
      _imageProviders[i] = provider;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        // Preload images
        precacheImage(provider, context);
      });
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    if (widget.controller == null) _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _effectiveController,
      itemCount: widget.imageUrls.length,
      onPageChanged: _preloadImages,
      itemBuilder: (context, index) {
        return widget.builder(
          context,
          index,
          _imageProviders[index]!,
        );
      },
    );
  }
}
