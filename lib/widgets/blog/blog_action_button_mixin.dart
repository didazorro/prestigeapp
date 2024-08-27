import 'package:flutter/material.dart';

import '../../common/constants.dart';
import '../../models/entities/blog.dart';
import '../../modules/analytics/analytics.dart';
import '../../routes/flux_navigate.dart';
import '../../screens/blog/views/blog_detail_screen.dart';

mixin BlogActionButtonMixin {
  void onTapBlog({
    required BuildContext context,
    String? id,
    Blog? blog,
    List<Blog>? blogs,
    bool forceRootNavigator = false,
  }) {
    Analytics.triggerTapBlog(blog ?? Blog(id: id));
    FluxNavigate.pushNamed(
      RouteList.detailBlog,
      arguments: BlogDetailArguments(
        id: id,
        blog: blog,
        listBlog: blogs,
      ),
      forceRootNavigator: forceRootNavigator,
      context: context,
    );
  }
}
