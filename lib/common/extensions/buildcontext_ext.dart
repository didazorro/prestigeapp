import 'dart:math';

import 'package:flutter/material.dart';
import 'package:inspireui/icons/constants.dart';
import 'package:provider/provider.dart';

import '../../models/app_model.dart';
import '../../modules/dynamic_layout/helper/helper.dart';
import '../theme/colors.dart';
import '../tools.dart';

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
        ...(Provider.of<AppModel>(this, listen: false)
                .appConfig
                ?.settings
                .productColors ??
            {})
      };
}
