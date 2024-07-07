import 'package:flutter/material.dart';

import 'general_widget.dart';

class GeneralBlogWidget extends GeneralWidget {
  const GeneralBlogWidget({
    required super.item,
    super.iconColor,
    super.textStyle,
    super.useTile,
    super.cardStyle,
    Function()? super.onNavigator,
  });

  @override
  void onTap(BuildContext context) {
    if (item?.blog != null) {
      onTapNavigateOptions(context: context, config: {
        'blog': item?.blog,
      });
    }
  }
}
