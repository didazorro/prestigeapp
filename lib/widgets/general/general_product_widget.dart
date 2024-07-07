import 'package:flutter/material.dart';

import 'general_widget.dart';

class GeneralProductWidget extends GeneralWidget {
  const GeneralProductWidget({
    required super.item,
    super.iconColor,
    super.textStyle,
    super.useTile,
    super.cardStyle,
    Function()? super.onNavigator,
  });

  @override
  void onTap(BuildContext context) {
    if (item?.product != null) {
      onTapNavigateOptions(context: context, config: {
        'product': item?.product,
      });
    }
  }
}
