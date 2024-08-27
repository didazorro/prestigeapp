import 'package:flutter/material.dart';

import 'colors.dart';
import 'theme_helper.dart';

TextTheme buildTextTheme(
  TextTheme base,
  String? language, [
  String fontFamily = 'Roboto',
  String fontHeader = 'Raleway',
]) {
  return base
      .copyWith(
        displayLarge: ThemeHelper.getFont(
          fontHeader,
          textStyle: base.displayLarge!.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        displayMedium: ThemeHelper.getFont(
          fontHeader,
          textStyle: base.displayMedium!.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        displaySmall: ThemeHelper.getFont(
          fontHeader,
          textStyle: base.displaySmall!.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        headlineLarge: ThemeHelper.getFont(
          fontHeader,
          textStyle: base.headlineLarge!.copyWith(fontWeight: FontWeight.w700),
        ),
        headlineMedium: ThemeHelper.getFont(
          fontHeader,
          textStyle: base.headlineMedium!.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        headlineSmall: ThemeHelper.getFont(
          fontHeader,
          textStyle: base.headlineSmall!.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        titleLarge: ThemeHelper.getFont(
          fontHeader,
          textStyle: base.titleLarge!.copyWith(
            fontWeight: FontWeight.normal,
          ),
        ),
        bodySmall: ThemeHelper.getFont(
          fontFamily,
          textStyle: base.bodySmall!.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 14.0,
          ),
        ),
        titleMedium: ThemeHelper.getFont(
          fontFamily,
          textStyle: base.titleMedium!.copyWith(),
        ),
        titleSmall: ThemeHelper.getFont(
          fontFamily,
          textStyle: base.titleSmall!.copyWith(),
        ),
        bodyLarge: ThemeHelper.getFont(
          fontFamily,
          textStyle: base.bodyLarge!.copyWith(),
        ),
        bodyMedium: ThemeHelper.getFont(
          fontFamily,
          textStyle: base.bodyMedium!.copyWith(),
        ),
        labelLarge: ThemeHelper.getFont(
          fontFamily,
          textStyle: base.labelLarge!.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 14.0,
          ),
        ),
        labelMedium: ThemeHelper.getFont(
          fontFamily,
          textStyle: base.labelMedium!
              .copyWith(fontWeight: FontWeight.w400, fontSize: 12.0),
        ),
        labelSmall: ThemeHelper.getFont(
          fontFamily,
          textStyle: base.labelSmall!
              .copyWith(fontWeight: FontWeight.w400, fontSize: 11.0),
        ),
      )
      .apply(
        displayColor: kGrey900,
        bodyColor: kGrey900,
      );
}
