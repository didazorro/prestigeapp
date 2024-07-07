import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../common/constants.dart';

const kExtentInfinite = 2000;
const kExtentDefault = 500;

mixin PagingMixin<T extends StatefulWidget> on State<T> {
  ScrollController get scrollController;

  final ValueNotifier<bool> _showButtonNotifier = ValueNotifier(false);
  final ValueNotifier<bool> _loadingNotifier = ValueNotifier(false);

  bool get infiniteMode => false;

  bool get hasNext => true;

  bool get isLoadingData => _loadingNotifier.value;

  ValueNotifier<bool> get loadingNotifier => _loadingNotifier;

  Future<void> getData();

  Future<void> _getData() async {
    _loadingNotifier.value = true;

    try {
      await getData();
    } catch (e) {
      printLog('[ErrorPagingMixin] $e');
    }

    _loadingNotifier.value = false;
  }

  void hideButton() => _showButtonNotifier.value = false;

  void showButton() => _showButtonNotifier.value = true;

  void _handleShowButton() {
    if (!scrollController.hasClients) return;
    if (scrollController.position.extentBefore > 500) {
      scrollController.position.userScrollDirection == ScrollDirection.forward
          ? showButton()
          : hideButton();
    } else {
      hideButton();
    }
  }

  void _handleLoadMoreData() {
    if (hasNext == false || isLoadingData) {
      return;
    }

    if (scrollController.position.extentBefore < 300) {
      return;
    }
    if (scrollController.position.userScrollDirection ==
        ScrollDirection.forward) {
      return;
    }
    if (infiniteMode) {
      if (scrollController.position.extentAfter < kExtentInfinite) {
        _getData();
        return;
      }
    }
    if (scrollController.position.extentAfter < kExtentDefault) {
      _getData();
      return;
    }
  }

  void _scrollToTop() {
    scrollController.animateTo(
      -50,
      duration: const Duration(milliseconds: 250),
      curve: Curves.ease,
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        scrollController
          ..addListener(_handleShowButton)
          ..addListener(_handleLoadMoreData);
      }
    });
  }

  @override
  void dispose() {
    _showButtonNotifier.dispose();
    _loadingNotifier.dispose();
    scrollController
      ..removeListener(_handleShowButton)
      ..removeListener(_handleLoadMoreData);
    super.dispose();
  }

  Widget get scrollToTopButton => ValueListenableBuilder<bool>(
        valueListenable: _showButtonNotifier,
        builder: (context, enable, child) {
          return Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: AnimatedSlide(
                duration: const Duration(milliseconds: 250),
                offset: enable ? Offset.zero : const Offset(0, 2),
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 150),
                  opacity: enable ? 1 : 0,
                  child: SizedBox(
                    width: 50,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(8.0),
                        backgroundColor: Theme.of(context).colorScheme.primary,
                      ),
                      onPressed: _scrollToTop,
                      child: const Icon(
                        CupertinoIcons.arrow_up,
                        size: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      );
}
