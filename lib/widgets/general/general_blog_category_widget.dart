import 'package:flutter/material.dart';

import 'general_widget.dart';

class GeneralBlogCategoryWidget extends GeneralWidget {
  const GeneralBlogCategoryWidget({
    super.useTile,
    super.iconColor,
    super.textStyle,
    super.cardStyle,
    super.item,
    Function()? super.onNavigator,
  });

  @override
  void onTap(BuildContext context) {
    if (item?.blogCategory != null) {
      onTapNavigateOptions(context: context, config: {
        'blog_category': item?.blogCategory,
      });
    }
  }
}
