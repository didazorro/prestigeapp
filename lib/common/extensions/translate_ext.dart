import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

extension TranslateExt on BuildContext {
  String transCountProduct(int length) {
    if (length == 1) {
      return S.of(this).countProduct(length);
    }
    return S.of(this).countProducts(length);
  }
}
