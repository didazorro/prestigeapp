import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

import '../config.dart';

class LoadingHelper {
  static void show() {
    BotToast.showCustomLoading(toastBuilder: (cancelFunc) {
      return Builder(builder: (context) {
        return Center(
          child: Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              color: Theme.of(context).dialogBackgroundColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: kLoadingWidget(),
          ),
        );
      });
    });
  }

  static void hide() {
    BotToast.closeAllLoading();
  }
}
