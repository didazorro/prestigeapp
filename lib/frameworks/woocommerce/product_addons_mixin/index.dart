import 'package:flutter/material.dart';

import '../../../models/entities/index.dart';
import 'product_addons_widget.dart';

mixin ProductAddonsMixin {
  Widget getProductAddonsWidget({
    required Product product,
    required bool isProductInfoLoading,
    Widget? appointmentWidget,
  }) {
    return ProductAddonsWidget(
      product: product,
      isProductInfoLoading: isProductInfoLoading,
      appointmentWidget: appointmentWidget,
    );
  }
}
