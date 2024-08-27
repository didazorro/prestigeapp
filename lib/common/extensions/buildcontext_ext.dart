import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:inspireui/icons/constants.dart';
import 'package:provider/provider.dart';
import 'package:share/share.dart';

import '../../generated/l10n.dart';
import '../../models/app_model.dart';
import '../../modules/dynamic_layout/helper/helper.dart';
import '../../services/services.dart';
import '../theme/colors.dart';
import '../tools.dart';
import '../tools/flash.dart';

extension MainBuildContextExt on BuildContext {
  (int, double) mathSizeLayoutProductList({double? width, String? layout}) {
    final screenSize = MediaQuery.sizeOf(this);
    final isTablet = Tools.isTablet(MediaQuery.of(this));

    var sizeWidth = min(screenSize.width, kLimitWidthScreen);
    var widthScreen = min(width ?? sizeWidth, kLimitWidthScreen);
    var widthContent = sizeWidth;
    var crossAxisCount = 1;

    final isDesktop = Layout.isDisplayDesktop(this);

    if (layout == 'card') {
      crossAxisCount = isTablet ? 2 : 1;
      widthContent = isTablet ? widthScreen / 2 : widthScreen; //one column
    } else if (layout == 'columns') {
      crossAxisCount = isTablet ? 4 : 3;
      widthContent =
          isTablet ? widthScreen / 4 : (widthScreen / 3); //three columns
    } else if (layout == 'listTile') {
      crossAxisCount = isTablet ? 2 : 1;
      widthContent = widthScreen; // one column
    } else {
      /// 2 columns on mobile, 3 columns on ipad
      crossAxisCount = isDesktop ? 3 : (isTablet ? 3 : 2);
      //layout is list
      widthContent = isDesktop
          ? (widthScreen / 3.2)
          : (isTablet ? widthScreen / 3 : (widthScreen / 2)); //two columns
    }

    return (crossAxisCount, widthContent);
  }

  Map get colorAppMap => {
        ...kNameToHex,
        ...(read<AppModel>().appConfig?.settings.productColors ?? {})
      };
}

extension ShareLinkBuildContextExt on BuildContext {
  Future<void> shareLink(String? url) async {
    if (url != null && url.isNotEmpty) {
      unawaited(
        FlashHelper.message(
          this,
          message: S.of(this).generatingLink,
          duration: const Duration(seconds: 1),
        ),
      );
      final dynamicLink = await Services()
          .dynamicLinkService
          .createDynamicLink(productUrl: url);
      if (dynamicLink != null) {
        return Share.share(dynamicLink);
      }
    }

    return FlashHelper.errorMessage(
      this,
      message: S.of(this).failedToGenerateLink,
      duration: const Duration(seconds: 1),
    );
  }
}
