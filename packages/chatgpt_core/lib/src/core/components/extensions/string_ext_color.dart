import 'package:flutter/material.dart';

import '../../services/logger_service.dart';

extension StringExtColor on String {
  Color toColor() {
    var hexColor = this;
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }

    try {
      if (hexColor.isNotEmpty) {
        return Color(int.parse(hexColor, radix: 16));
      }
    } catch (e) {
      LoggerService.print('Error parse color: $e');
    }

    return Color(int.parse('FFFFFFFF', radix: 16));
  }
}
