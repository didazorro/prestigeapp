import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';
import 'fade_through_transition.dart';
import 'fonts.dart';

IconThemeData customIconTheme(IconThemeData original) {
  return original.copyWith(color: kGrey900);
}

ThemeData buildLightTheme(String? language,
    [String fontFamily = 'Roboto',
    String fontHeader = 'Raleway',
    bool? useMaterial3]) {
  final base = ThemeData.light(useMaterial3: useMaterial3).copyWith(
    snackBarTheme: SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        minimumSize: const Size(120, 36),
        padding: EdgeInsets.zero,
        elevation: 1,
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(64, 36),
        padding: EdgeInsets.zero,
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: FadeThroughPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
  );

  return base.copyWith(
    brightness: Brightness.light,
    cardColor: Colors.white,
    buttonTheme: const ButtonThemeData(
      colorScheme: kColorScheme,
      textTheme: ButtonTextTheme.normal,
      buttonColor: kDarkBG,
    ),
    primaryColorLight: kLightBG,
    primaryIconTheme: customIconTheme(base.iconTheme),
    textTheme: buildTextTheme(base.textTheme, language, fontFamily, fontHeader),
    primaryTextTheme:
        buildTextTheme(base.primaryTextTheme, language, fontFamily, fontHeader),
    iconTheme: customIconTheme(base.iconTheme),
    hintColor: Colors.black26,
    primaryColor: kLightPrimary,
    scaffoldBackgroundColor: kLightBG,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      titleTextStyle: TextStyle(
        color: kDarkBG,
        fontSize: 18.0,
        fontWeight: FontWeight.w800,
      ),
      iconTheme: IconThemeData(
        color: kLightAccent,
      ),
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
    }),
    tabBarTheme: const TabBarTheme(
      labelColor: Colors.black,
      unselectedLabelColor: Colors.black,
      labelPadding: EdgeInsets.zero,
      labelStyle: TextStyle(fontSize: 13),
      unselectedLabelStyle: TextStyle(fontSize: 13),
    ),
    dialogBackgroundColor: kLightBG,
    colorScheme: kColorScheme
        .copyWith(
          secondary: kLightAccent,
        )
        .copyWith(surface: Colors.white)
        .copyWith(error: kErrorRed),
  );
}
