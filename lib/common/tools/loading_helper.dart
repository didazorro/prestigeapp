import 'package:bot_toast/bot_toast.dart';

import '../config.dart';

class LoadingHelper {
  static void show() {
    BotToast.showCustomLoading(toastBuilder: (cancelFunc) {
      return kLoadingWidget();
    });
  }

  static void hide() {
    BotToast.closeAllLoading();
  }
}
