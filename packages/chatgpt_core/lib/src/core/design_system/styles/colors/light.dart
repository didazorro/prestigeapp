part of '../theme.dart';

class ThemeColorLight extends ThemeColor {
  @override
  Color get primary => AppColors.blue20;

  @override
  Color get background => AppColors.white;

  @override
  Color get scaffoldBackground => AppColors.white10;

  @override
  Color get textColor => AppColors.black;

  @override
  Color get backgroundAppBar => AppColors.white;

  @override
  Color get error => Colors.red;

  @override
  Color get textInputBorderColor => Colors.grey[200]!;

  @override
  Color get bottomBarUnselectedItemColor => AppColors.white;

  @override
  Color get bottomBarselectedItemColor => AppColors.white15;

  @override
  Color get colorSelectDropdown => AppColors.blue30;

  @override
  Color get secondary => AppColors.secondaryLight;

  @override
  Color get backgroundChat => AppColors.lightGrey;
}
