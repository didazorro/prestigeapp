import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../common/constants.dart';
import '../../common/tools.dart';
import '../../generated/l10n.dart';
import '../../models/index.dart' show Blog;
import '../../modules/dynamic_layout/helper/helper.dart';
import '../backdrop/backdrop_constants.dart';
import 'blog_action_button_mixin.dart';
import 'blog_card_view.dart';

class BlogListBackdrop extends StatefulWidget {
  final List<Blog>? blogs;
  final bool? isFetching;
  final bool? isEnd;
  final String? errMsg;
  final width;
  final padding;
  final String? layout;
  final Function? onRefresh;
  final void Function(int page) onLoadMore;

  const BlogListBackdrop({
    this.isFetching = false,
    this.isEnd = true,
    this.errMsg,
    this.blogs,
    this.width,
    this.padding = 8.0,
    this.onRefresh,
    required this.onLoadMore,
    this.layout = 'list',
  });

  @override
  State<BlogListBackdrop> createState() => _BlogListBackdropState();
}

class _BlogListBackdropState extends State<BlogListBackdrop>
    with BlogActionButtonMixin {
  late RefreshController _refreshController;
  int _page = 1;

  List<Blog> emptyList = const [
    Blog.empty(1),
    Blog.empty(2),
    Blog.empty(3),
    Blog.empty(4),
    Blog.empty(5),
    Blog.empty(6)
  ];

  @override
  void initState() {
    super.initState();

    /// if there are existing product from previous navigate we don't need to enable the refresh
    _refreshController = RefreshController(initialRefresh: false);
  }

  void _onRefresh() {
    if (!widget.isFetching!) {
      _page = 1;
      widget.onRefresh!();
    }
    _refreshController.refreshCompleted();
  }

  void _onLoading() {
    if (!widget.isFetching! && !widget.isEnd!) {
      _page = _page + 1;
      widget.onLoadMore(_page);
    }
    _refreshController.loadComplete();
  }

  @override
  void didUpdateWidget(BlogListBackdrop oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.blogs != oldWidget.blogs) {
      setState(() {});
    }
    if (widget.isFetching == false && oldWidget.isFetching == true) {
      _refreshController.refreshCompleted();
      _refreshController.loadComplete();
    }
  }

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  (double, int) getItemSize(double widthScreen) {
    final isTablet = Tools.isTablet(MediaQuery.of(context));
    var widthContent = widthScreen;
    var crossAxisCount = 1;
    switch (widget.layout) {
      case Layout.columns:
        crossAxisCount = isTablet ? 4 : 3;
        widthContent =
            isTablet ? widthScreen / 4 : (widthScreen / 3); //three columns
        break;
      case Layout.listTile:
        crossAxisCount = isTablet ? 2 : 1;
        widthContent = widthScreen - 24; // one column
        break;
      case Layout.list:
      default:

        /// 2 columns on mobile, 3 columns on ipad
        crossAxisCount = isTablet ? 3 : 2;
        //layout is list
        widthContent =
            isTablet ? widthScreen / 3 : (widthScreen / 2); //two columns
    }
    return (widthContent, crossAxisCount);
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    var widthScreen = widget.width ?? screenSize.width;
    var childAspectRatio = 0.8;
    if (Layout.isDisplayDesktop(context)) {
      widthScreen -= BackdropConstants.drawerWidth;
    }
    final itemSize = getItemSize(widthScreen);
    final widthContent = itemSize.$1;
    final crossAxisCount = itemSize.$2;

    final blogsList =
        (widget.blogs == null || widget.blogs!.isEmpty) && widget.isFetching!
            ? emptyList
            : widget.blogs;

    Widget typeList = const SizedBox();

    if (blogsList == null || blogsList.isEmpty) {
      typeList = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            S.of(context).notFindResult,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      );
    } else {
      switch (widget.layout) {
        case Layout.listTile:
          typeList = buildListView(
            blogs: blogsList,
            widthContent: widthContent,
          );
          break;
        case Layout.columns:
        case Layout.list:
        default:
          typeList = buildGridView(
            childAspectRatio: childAspectRatio,
            crossAxisCount: crossAxisCount,
            blogsList: blogsList,
            widthContent: widthContent,
          );
      }
    }

    return SmartRefresher(
      header: const MaterialClassicHeader(),
      enablePullDown: true,
      enablePullUp: !(widget.isEnd ?? false),
      controller: _refreshController,
      onRefresh: _onRefresh,
      onLoading: _onLoading,
      footer: kCustomFooter(context),
      child: typeList,
    );
  }

  Widget buildGridView({
    required int crossAxisCount,
    required double childAspectRatio,
    double? widthContent,
    required List<Blog> blogsList,
  }) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
      ),
      cacheExtent: 500.0,
      itemCount: blogsList.length,
      itemBuilder: (context, i) {
        return BlogCard(
          item: blogsList[i],
          width: widthContent,
          margin: 8.0,
          onTap: () => onTapBlog(
            blog: blogsList[i],
            blogs: blogsList,
            context: context,
          ),
        );
      },
    );
  }

  Widget buildListView({
    required List<Blog> blogs,
    double? widthContent,
  }) {
    return ListView.builder(
      itemCount: blogs.length,
      itemBuilder: (_, index) => BlogCard(
        item: blogs[index],
        width: widthContent,
        onTap: () => onTapBlog(
          blog: blogs[index],
          blogs: blogs,
          context: context,
        ),
      ),
    );
  }

  Widget buildStaggeredGridView({
    required List<Blog> blogs,
    double? widthContent,
  }) {
    return MasonryGridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 4.0,
      shrinkWrap: true,
      primary: false,
      crossAxisSpacing: 8.0,
      padding: const EdgeInsets.only(
        bottom: 32,
        left: 8,
        right: 8,
      ),
      itemCount: blogs.length,
      itemBuilder: (context, index) => BlogCard(
        item: blogs[index],
        width: MediaQuery.of(context).size.width / 2,
        onTap: () => onTapBlog(
          blog: blogs[index],
          blogs: blogs,
          context: context,
        ),
      ),
      // staggeredTileBuilder: (index) => const StaggeredTile.fit(2),
    );
  }
}
