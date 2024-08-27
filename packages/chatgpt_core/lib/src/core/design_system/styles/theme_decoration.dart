// ignore_for_file: unused_field

part of 'theme.dart';

const _kBorderTextInput = 6.0;

class ThemeDecoration {
  final ThemeData _theme;

  const ThemeDecoration(this._theme);

  List<BoxShadow> get xxlarge => [
        BoxShadow(
          color: AppColors.white.withOpacity(0.14),
          spreadRadius: -12,
          blurRadius: 64,
          offset: const Offset(0, 32),
        ),
      ];

  List<BoxShadow> get xlarge => [
        BoxShadow(
          color: AppColors.white.withOpacity(0.18),
          spreadRadius: -12,
          blurRadius: 48,
          offset: const Offset(0, 24),
        ),
      ];

  List<BoxShadow> get large => [
        BoxShadow(
          color: AppColors.white.withOpacity(0.03),
          spreadRadius: -4,
          blurRadius: 8,
          offset: const Offset(0, 8),
        ),
        BoxShadow(
          color: AppColors.white.withOpacity(0.08),
          spreadRadius: -4,
          blurRadius: 24,
          offset: const Offset(0, 20),
        ),
      ];

  List<BoxShadow> get medium => [
        BoxShadow(
          color: AppColors.white.withOpacity(0.03),
          spreadRadius: -2,
          blurRadius: 6,
          offset: const Offset(0, 4),
        ),
        BoxShadow(
          color: AppColors.white.withOpacity(0.08),
          spreadRadius: -4,
          blurRadius: 16,
          offset: const Offset(0, 12),
        ),
      ];

  List<BoxShadow> get small => [
        BoxShadow(
          color: AppColors.white.withOpacity(0.06),
          spreadRadius: -2,
          blurRadius: 4,
          offset: const Offset(0, 2),
        ),
        BoxShadow(
          color: AppColors.white.withOpacity(0.10),
          spreadRadius: -2,
          blurRadius: 8,
          offset: const Offset(0, 4),
        ),
      ];

  List<BoxShadow> get xsmall => [
        BoxShadow(
          color: AppColors.white.withOpacity(0.06),
          blurRadius: 2,
          offset: const Offset(0, 1),
        ),
        BoxShadow(
          color: AppColors.white.withOpacity(0.10),
          blurRadius: 3,
          offset: const Offset(0, 10),
        ),
      ];

  List<BoxShadow> get xxsmall => [
        BoxShadow(
          color: AppColors.white.withOpacity(0.005),
          blurRadius: 2,
          offset: const Offset(0, 1),
        ),
      ];

  ButtonStyle get elevatedButtonIconStyle => ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(50),
        padding: EdgeInsets.zero,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(100)),
        ),
        backgroundColor: AppColors.white,
      );

  BoxDecoration get panelBottomShadow => BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
        color: _theme.scaffoldBackgroundColor,
      );

  InputBorder get textInputBorder => OutlineInputBorder(
        borderRadius:
            const BorderRadius.all(Radius.circular(_kBorderTextInput)),
        borderSide: BorderSide(
          color: _theme.dividerColor,
          width: 1.5,
        ),
      );

  InputBorder get textInputFocusBorder => OutlineInputBorder(
        borderRadius:
            const BorderRadius.all(Radius.circular(_kBorderTextInput)),
        borderSide: BorderSide(
          color: _theme.primaryColor,
          width: 1.5,
        ),
      );

  InputBorder get textInputErrorBorder => OutlineInputBorder(
        borderRadius:
            const BorderRadius.all(Radius.circular(_kBorderTextInput)),
        borderSide: BorderSide(color: _theme.themeColor.error),
      );

  InputBorder get textInputBorderNone => const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(1)),
        borderSide: BorderSide.none,
      );

  InputBorder get textInputSearchBorder => const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(_kBorderTextInput)),
        borderSide: BorderSide.none,
      );
}
