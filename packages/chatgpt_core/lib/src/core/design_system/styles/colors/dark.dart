part of '../theme.dart';

class ThemeColorDark extends ThemeColor {
  @override
  Color get primary => AppColors.blue20;

  @override
  Color get background => AppColors.white;

  @override
  Color get scaffoldBackground => AppColors.lightBackground;

  @override
  Color get textColor => AppColors.white;

  @override
  Color get backgroundAppBar => AppColors.pink;

  @override
  Color get error => Colors.red;

  @override
  Color get textInputBorderColor => Colors.grey[400]!;

  @override
  Color get bottomBarUnselectedItemColor => AppColors.white;

  @override
  Color get bottomBarselectedItemColor => AppColors.white15;

  @override
  Color get colorSelectDropdown => AppColors.blue30;

  @override
  Color get secondary => AppColors.secondaryDark;

  @override
  Color get backgroundChat => AppColors.grey;
}
