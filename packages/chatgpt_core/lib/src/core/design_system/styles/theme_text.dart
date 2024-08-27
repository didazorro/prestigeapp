part of 'theme.dart';

class ThemeText {
  final TextTheme _textTheme;
  final ThemeColor themeColor;
  final String fontFamily;

  ThemeText(
    this.fontFamily, {
    required this.themeColor,
    TextTheme? textTheme,
  }) : _textTheme = GoogleFonts.getTextTheme(
          fontFamily,
          TextTheme(
            //<---Tag Design_design Figma
            //heading 1
            displayLarge: TextStyle(
              fontSize: 56,
              fontWeight: FontWeight.normal,
              height: 1.2,
              color: themeColor.textColor,
            ),

            //heading 2
            displayMedium: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.normal,
              height: 1.2,
              color: themeColor.textColor,
            ),

            //heading 3
            displaySmall: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.normal,
              height: 1.3,
              color: themeColor.textColor,
            ),

            //heading 4
            headlineLarge: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.normal,
              height: 1.4,
              color: themeColor.textColor,
            ),

            //heading 5
            headlineMedium: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              height: 1.4,
              color: themeColor.textColor,
            ),

            //heading 6
            headlineSmall: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              height: 1.5,
              color: themeColor.textColor,
            ),

            /// ---------------------------------------------------
            /// --------------- BODY TEXT -------------------------
            /// ---------------------------------------------------
            bodyLarge: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: themeColor.textColor,
            ),

            //Paragraph: Text normal in app
            bodyMedium: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: themeColor.textColor,
            ),

            //Small text: TimeAgo - Share
            bodySmall: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: themeColor.textColor,
            ),

            /// ---------------------------------------------------
            /// --------------- LABEL TEXT ------------------------
            /// ---------------------------------------------------
            /// Text in Button
            labelLarge: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: themeColor.textColor,
            ),
            //Paragraph Extends
            labelMedium: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: themeColor.textColor,
            ),

            labelSmall: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: themeColor.textColor,
            ),

            //Tag Design_design Figma-->

            /// ---------------------------------------------------
            /// --------------- TITLE TEXT -------------------------
            /// ---------------------------------------------------
            /// Text in AppBar
            titleLarge: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: themeColor.textColor,
            ),

            /// Text in TextField, Title of Listile
            titleMedium: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: themeColor.textColor,
            ),

            titleSmall: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: themeColor.textColor,
            ),
          ),
        );

  TextTheme get getTextTheme => _textTheme;

  TextStyle get paragraph => _textTheme.bodyMedium!;

  TextStyle get paragraphExt => _textTheme.labelMedium!;

  TextStyle get smallText => _textTheme.bodySmall!;

  TextStyle get textButtonThemeStyle => _textTheme.labelLarge!.merge(
        GoogleFonts.getFont(
          fontFamily,
          fontWeight: FontWeight.w700,
          fontSize: 20,
          height: 1,
        ),
      );

  TextStyle get textTitleAppbarThemeStyle => _textTheme.labelLarge!.merge(
        GoogleFonts.getFont(
          fontFamily,
          fontWeight: FontWeight.w600,
          color: Colors.black,
          fontSize: 16,
        ),
      );

  TextStyle get tabBarThemeLabelStyle =>
      _textTheme.bodyLarge!.merge(GoogleFonts.getFont(
        fontFamily,
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ));

  TextStyle get tabBarThemeUnselectedLabelStyle =>
      _textTheme.bodyLarge!.merge(GoogleFonts.getFont(
        fontFamily,
        fontSize: 15,
        fontWeight: FontWeight.w400,
      ));

  TextStyle styleByFontFamily({
    String? fontFamily,
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return TextStyle(
      fontFamily: fontFamily ?? this.fontFamily,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color ?? themeColor.textColor,
      package: 'design_system',
    );
  }
}

class FontConstants {
  static String notoSerifJP = 'NotoSerifJP';
  static String roboto = 'Roboto';
}
