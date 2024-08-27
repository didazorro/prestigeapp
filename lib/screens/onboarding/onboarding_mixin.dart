import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/config.dart';
import '../../common/constants.dart';
import '../../common/tools/navigate_tools.dart';
import '../../data/boxes.dart';
import '../../models/notification_model.dart';

mixin OnBoardingMixin<T extends StatefulWidget> on State<T> {
  final isRequiredLogin = kLoginSetting.isRequiredLogin;
  final isEnableRegister = kLoginSetting.enableRegister;

  final isEnable = kLoginSetting.enable;

  int page = 0;

  NotificationModel get _notificationModel =>
      Provider.of<NotificationModel>(context, listen: false);

  bool get enableAuth =>
      Configurations.multiSiteConfigs?.isEmpty ?? true && isEnable;

  void setHasSeen() {
    SettingsBox().hasFinishedOnboarding = true;
  }

  void onTapSignIn() {
    setHasSeen();
    NavigateTools.navigateToLogin(context, replacement: true);
  }

  void onTapDone() async {
    final isLoggedIn = UserBox().isLoggedIn;

    if (kAdvanceConfig.showRequestNotification) {
      await Navigator.of(context)
          .pushReplacementNamed(RouteList.notificationRequest);
      return;
    }

    if (isRequiredLogin && !isLoggedIn && isEnable) {
      await NavigateTools.navigateToLogin(
        context,
        replacement: true,
      );
      return;
    }
    if ((Configurations.multiSiteConfigs?.isNotEmpty ?? false) &&
        kAdvanceConfig.isRequiredSiteSelection) {
      await Navigator.of(context).pushNamed(RouteList.multiSiteSelection);
      SettingsBox().hasSelectedSite = true;
    }
    if (SettingsBox().hasFinishedOnboarding) {
      await Navigator.pushReplacementNamed(context, RouteList.dashboard);
      return;
    }
    setHasSeen();

    await _notificationModel.enableNotification();
    if (kAdvanceConfig.gdprConfig.showPrivacyPolicyFirstTime) {
      await Navigator.of(context).pushReplacementNamed(
        RouteList.privacyTerms,
      );
    } else {
      await Navigator.of(context).pushReplacementNamed(RouteList.dashboard);
    }
  }
}
