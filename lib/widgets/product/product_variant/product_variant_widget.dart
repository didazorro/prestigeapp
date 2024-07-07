import 'package:flutter/material.dart';

import '../../../common/config.dart';
import '../../../common/config/models/product_detail_config.dart';
import '../../../modules/dynamic_layout/helper/helper.dart';
import 'layouts/attribute/image_selection_widget.dart';
import 'layouts/attribute/option_selection_widget.dart';
import 'layouts/option_selection/option_selection_inline_layout.dart';
import 'layouts/option_selection/option_selection_normal_layout.dart';
import 'layouts/option_selection/option_selection_web_layout.dart';

class BasicSelection extends StatelessWidget {
  final Map<String?, String?>? imageUrls;
  final List<String?> options;
  final String? value;
  final String? title;
  final String? type;
  final Function? onChanged;
  final Map? optionsName;

  const BasicSelection({
    required this.options,
    required this.title,
    required this.value,
    this.type,
    this.onChanged,
    this.imageUrls,
    this.optionsName,
  });

  @override
  Widget build(BuildContext context) {
    var layout = kProductDetail.attributeLayout;
    if (Layout.isDisplayTablet(context)) {
      layout = ProductDetailAttributeLayout.web;
    }

    if (const ['option', 'dropdown'].contains(type)) {
      return OptionSelection(
        options: options,
        value: value,
        title: title,
        layout: layout,
        onChanged: onChanged,
      );
    }

    if (type == 'image') {
      return ImageSelection(
        imageUrls: imageUrls,
        options: options,
        value: value,
        title: title,
        onChanged: onChanged,
      );
    }

    switch (layout) {
      case ProductDetailAttributeLayout.inline:
        return OptionSelectionInlineLayout(
          options: options,
          onChanged: onChanged,
          title: title,
          type: type,
          value: value,
        );
      case ProductDetailAttributeLayout.web:
        return OptionSelectionWebLayout(
          options: options,
          onChanged: onChanged,
          title: title,
          type: type,
          value: value,
        );
      default:
        return OptionSelectionNormalLayout(
          options: options,
          onChanged: onChanged,
          title: title,
          type: type,
          value: value,
          optionsName: optionsName,
        );
    }
  }
}
