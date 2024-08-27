part of 'theme.dart';

abstract class ThemeColor {
  Color get primary;

  Color get secondary;

  Color get scaffoldBackground;

  Color get background;

  Color get textColor;

  Color get backgroundAppBar;

  Color get error;
  Color get textInputBorderColor;

  Color get colorSelectDropdown;

  /// BottomBar
  Color get bottomBarUnselectedItemColor;
  Color get bottomBarselectedItemColor;

  Color get backgroundChat;
}

class AppColors {
  /// Black
  static const Color black = Color(0xff000000);

  /// Grey
  static const Color grey50 = Color(0xff262B37);
  static const Color grey20 = Color(0xff95989D);
  static const Color grey10 = Color(0xffDBE4F1);
  static const Color grey15 = Color(0xffE3EAEC);
  static const Color grey25 = Color(0xffEAEDF1);
  static const Color gray05 = Color(0xff358CFF);

  /// Pink
  static const Color pink5 = Color(0xffFAFAFA);
  static const Color pink15 = Color(0xffFFBDBD);

  /// White
  static const Color white = Color(0xffFFFFFF);
  static const Color white10 = Color(0xffF6F6F6);
  static const Color white15 = Color(0xffEFEFEF);

  /// Blue
  static const Color blue20 = Color(0xff0064ff);
  static const Color blue30 = Color(0xff3943C4);

  /// Grey
  static const Color grey = Color(0xFF1F2937);

  /// Define by Designer
  static const Color pink = Color(0xffFF9F9F);
  static const Color lightPink = Color(0xffFFE3E1);
  static const Color lightGrey = Color(0xffF4F4F4);
  static const Color cosmosThird = Color(0xffFFD1D1); // Cosmos Third
  static const Color softWhite = Color(0xffEFF4F9); // background color

  /// background
  static const Color lightBackground = Color(0xffFFEBEB); // light Background
  static const Color darkBackground = Color(0xff111111); // light Background
  static const Color secondaryLight = Color(0xffE08020); // light Background
  static const Color secondaryDark = Color(0xffE08020); // light Background
}
