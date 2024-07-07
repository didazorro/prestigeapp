import 'package:flutter/material.dart';

import 'general_widget.dart';

class GeneralCategoryWidget extends GeneralWidget {
  const GeneralCategoryWidget(
      {required super.item,
      super.iconColor,
      super.textStyle,
      super.useTile,
      super.cardStyle,
      Function()? super.onNavigator});

  @override
  void onTap(BuildContext context) {
    var config = Map<String, dynamic>.from({
      'category': item?.category,
      'tag': item?.tag,
    });
    config.removeWhere((key, value) => value == null);
    if (config.isNotEmpty) {
      onTapNavigateOptions(context: context, config: config);
    }
  }
}
