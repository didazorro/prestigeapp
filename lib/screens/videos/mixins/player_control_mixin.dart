import 'dart:async';

import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

mixin PlayerControlMixin {
  VideoPlayerController? get controller;
  final ValueNotifier<bool> _isShowControl = ValueNotifier(true);

  Timer? timer;

  Future<void> onTapPlayer() async {
    if (controller != null) {
      EasyDebounce.debounce('deboundPlayerAction${controller!.hashCode}',
          const Duration(milliseconds: 200), () async {
        if (controller!.value.isPlaying) {
          await controller!.pause();
          showControl();
        } else {
          await controller!.play();

          setTimer();
        }
      });
    }
  }

  void setTimer() {
    _isShowControl.value = true;
    timer?.cancel();
    timer = null;
    timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (controller?.value.isPlaying ?? false) {
        _isShowControl.value = false;
      }
    });
  }

  void showControl() {
    _isShowControl.value = true;
  }

  Widget builderListenShowController({required Widget Function() builder}) {
    return ValueListenableBuilder<bool>(
      valueListenable: _isShowControl,
      builder: (context, showControl, child) {
        final isInitialized =
            controller != null && controller!.value.isInitialized;

        if (controller == null ||
            isInitialized == false ||
            showControl == false) {
          return const SizedBox.shrink();
        }

        return builder();
      },
    );
  }
}
