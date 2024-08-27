import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeHelper {
  static TextStyle getFont(String fontFamily, {TextStyle? textStyle}) {
    final fonts = GoogleFonts.asMap();

    if (fonts.containsKey(fontFamily)) {
      return GoogleFonts.getFont(fontFamily, textStyle: textStyle);
    } else {
      final style = textStyle ?? const TextStyle();
      return style.copyWith(fontFamily: fontFamily);
    }
  }
}
