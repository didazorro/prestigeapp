import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part 'colors/dark.dart';
part 'colors/light.dart';
part 'theme_color.dart';
part 'theme_decoration.dart';
part 'theme_display_metric.dart';
part 'theme_text.dart';

extension BrightnessExt on Brightness {
  ThemeColor getThemeColor() {
    return this == Brightness.light ? ThemeColorLight() : ThemeColorDark();
  }
}

extension ThemeDataExt on ThemeData {
  ThemeColor get themeColor => brightness.getThemeColor();

  ThemeDecoration get themeDecoration => ThemeDecoration(this);

  ThemeDisplayMetric get themeDisplayMetric => const ThemeDisplayMetric();

  ThemeText get themeText => ThemeText(fontFamily, themeColor: themeColor);

  String get fontFamily => FontConstants.roboto;

  ThemeData getTheme(Brightness theme) {
    final dataThemeColor = theme.getThemeColor();
    final themeText = ThemeText(
      fontFamily,
      themeColor: dataThemeColor,
    );
    final newTextTheme = themeText.getTextTheme;

    return ThemeData(
      brightness: theme,
      fontFamily: fontFamily,
      textTheme: newTextTheme,
      primaryTextTheme: newTextTheme,
      colorScheme: colorScheme.copyWith(
        primary: dataThemeColor.primary,
        brightness: theme,
        onSurface: dataThemeColor.textColor,
        surface: dataThemeColor.background,
        secondary: dataThemeColor.secondary,
      ),
      tabBarTheme: TabBarTheme(
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(
            color: dataThemeColor.primary,
            width: 2,
          ),
        ),
        labelColor: Colors.black,
        unselectedLabelColor: dataThemeColor.textColor,
        labelStyle: themeText.tabBarThemeLabelStyle,
        unselectedLabelStyle: themeText.tabBarThemeUnselectedLabelStyle,
      ),
      dividerColor: AppColors.grey25,
      primaryColor: dataThemeColor.primary,
      scaffoldBackgroundColor: dataThemeColor.scaffoldBackground,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: themeColor.scaffoldBackground,
        unselectedItemColor: themeColor.bottomBarUnselectedItemColor,
        selectedItemColor: themeColor.bottomBarselectedItemColor,
        selectedLabelStyle: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w500,
          color: themeColor.primary,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w500,
          color: Color(0xFF95989D),
        ),
        selectedIconTheme: const IconThemeData(color: Color(0xffFFFFFF)),
        unselectedIconTheme: const IconThemeData(color: Color(0xffDADDE0)),
        type: BottomNavigationBarType.fixed,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(44),
          padding: EdgeInsets.zero,
          elevation: 1,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor:
              WidgetStateProperty.all<Color>(dataThemeColor.textColor),
          textStyle: WidgetStateProperty.all<TextStyle>(
            themeText.textButtonThemeStyle,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(2)),
          ),
          padding: EdgeInsets.zero,
          minimumSize: const Size.fromHeight(50),
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: dataThemeColor.backgroundAppBar,
        titleTextStyle: themeText.textTitleAppbarThemeStyle,
        toolbarHeight: 48,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        shape: const Border(
          bottom: BorderSide(color: Color(0xFFF0F2F4)),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        // isDense: true,
        contentPadding: const EdgeInsets.only(
          top: 12,
          bottom: 12,
          left: 15,
          right: 15,
        ),
        filled: true,
        fillColor: AppColors.white,
        // hintStyle: themeText.getTextTheme.labelMedium?.copyWith(
        //   color: themeColor.textColor,
        // ),
        focusColor: dataThemeColor.scaffoldBackground,
        hoverColor: Colors.transparent,
        focusedBorder: themeDecoration.textInputFocusBorder,
        border: themeDecoration.textInputBorderNone,
        enabledBorder: themeDecoration.textInputBorder,
        focusedErrorBorder: themeDecoration.textInputErrorBorder,
        errorBorder: themeDecoration.textInputErrorBorder,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: dataThemeColor.background,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
          ),
        ),
      ),
    );
  }
}
