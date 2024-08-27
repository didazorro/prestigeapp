import 'package:flutter/material.dart';
import 'package:inspireui/inspireui.dart' show Skeleton;
import 'package:provider/provider.dart';

import '../../../common/constants.dart';
import '../../../generated/l10n.dart';
import '../../../modules/dynamic_layout/helper/helper.dart';
import '../../../widgets/blog/blog_action_button_mixin.dart';
import '../../../widgets/common/paging_list.dart';
import '../../base_screen.dart';
import '../../common/app_bar_mixin.dart';
import '../models/list_blog_model.dart';
import 'list_blog_screen_web.dart';
import 'widgets/blog_list_item.dart';

class ListBlogScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ListBlogScreenState();
}

class _ListBlogScreenState extends BaseScreen<ListBlogScreen>
    with AppBarMixin, BlogActionButtonMixin {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    screenScrollController = _scrollController;
  }

  @override
  Widget build(BuildContext context) {
    if (Layout.isDisplayDesktop(context)) {
      return ListBlogScreenWeb();
    }
    return renderScaffold(
      routeName: RouteList.listBlog,
      secondAppBar: AppBar(
          elevation: 0.1,
          backgroundColor: Theme.of(context).colorScheme.surface,
          title: Text(
            S.of(context).blog,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.w700),
          ),
          leading: !(ModalRoute.of(context)?.canPop ?? false)
              ? null
              : Center(
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back_ios,
                    ),
                  ),
                )),
      child: PagingList<ListBlogModel, Blog>(
        scrollController: _scrollController,
        itemBuilder: (context, blog, _) => BlogListItem(
          blog: blog,
          onTap: () => onTapBlog(
            blog: blog,
            blogs: context.read<ListBlogModel>().data,
            forceRootNavigator: true,
            context: context,
          ),
        ),
        loadingWidget: _buildSkeleton(),
        lengthLoadingWidget: 3,
        autoInitData: false,
      ),
    );
  }

  Widget _buildSkeleton() {
    return const Padding(
      padding: EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        bottom: 24.0,
        top: 12.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Skeleton(height: 200),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Skeleton(width: 120),
              Skeleton(width: 80),
            ],
          ),
          SizedBox(height: 16),
          Skeleton(),
        ],
      ),
    );
  }
}
