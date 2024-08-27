import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/constants.dart';
import '../../generated/l10n.dart';
import '../../models/entities/filter_sorty_by.dart';
import '../../models/index.dart' show AppModel, Blog, BlogModel;
import '../../modules/dynamic_layout/config/blog_config.dart';
import '../../services/index.dart';
import '../../widgets/backdrop/backdrop.dart';
import '../../widgets/backdrop/filter.dart';
import '../../widgets/blog/blog_list_backdrop.dart';
import '../common/app_bar_mixin.dart';

class BlogsPage extends StatefulWidget {
  final List<Blog>? blogs;
  final BlogConfig config;

  const BlogsPage({this.blogs, required this.config});

  @override
  State<BlogsPage> createState() => _BlogsPageState();
}

class _BlogsPageState extends State<BlogsPage>
    with SingleTickerProviderStateMixin, AppBarMixin {
  List<String>? newCategoryId = [];
  List<String>? _currentTagId;
  FilterSortBy _currentFilterSortBy = const FilterSortBy();

  late AnimationController _controller;

  BlogModel get blogModel => context.read<BlogModel>();
  AppModel get appModel => context.read<AppModel>();
  BlogConfig get config => widget.config;

  // If this blog layout have some special params, such as author, search,
  // include,... then we should disable filter
  bool get isEnableFilter =>
      config.author.isEmptyOrNull &&
      config.search.isEmptyOrNull &&
      (config.include?.isEmpty ?? true);

  bool get allowMultipleCategory => ServerConfig().allowMultipleCategory;

  bool get allowMultipleTag => ServerConfig().allowMultipleTag;

  @override
  void initState() {
    super.initState();
    setState(() {
      newCategoryId = config.category;
      _currentTagId = config.tag;
      _currentFilterSortBy = _currentFilterSortBy.copyWithString(
        orderBy: config.orderby,
        order: config.order,
      );
    });
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 450),
      value: 1.0,
    );

    WidgetsBinding.instance.endOfFrame.then((_) {
      blogModel.init(
        name: config.name,
        category: config.category,
        blogs: widget.blogs,
      );
      if (widget.blogs?.isEmpty ?? true) {
        blogModel.getBlogsList(
          categoryIds: config.category,
          categoryName: config.name,
          tagIds: config.tag,
          lang: appModel.langCode,
          orderBy: _currentFilterSortBy.orderByType?.name,
          order: _currentFilterSortBy.orderType?.name,
          boostEngine: config.boostEngine,
          search: config.search,
          author: config.author,
          include: config.include,
        );
      }
    });
  }

  // No need call filter function if this blog layout have some special params
  void onFilter({
    dynamic minPrice,
    dynamic maxPrice,
    List<String>? categoryId,
    String? categoryName,
    List<String>? tagId,
    attribute,
    currentSelectedTerms,
    String? listingLocationId,
    bool? isSearch,
    FilterSortBy? sortBy,
    List<String>? brandIds,
    dynamic attributes,
  }) {
    _currentFilterSortBy = sortBy ?? _currentFilterSortBy;
    newCategoryId = categoryId ?? newCategoryId;
    _currentTagId = tagId ?? _currentTagId;
    blogModel.onFilter(
      categoryIds: newCategoryId,
      categoryName: categoryName,
      tagIds: _currentTagId,
      lang: appModel.langCode,
      orderBy: _currentFilterSortBy.orderByType?.name,
      order: _currentFilterSortBy.orderType?.name,
      boostEngine: config.boostEngine,
    );
  }

  Future<void> onRefresh() async {
    await blogModel.getBlogsList(
      categoryIds: newCategoryId,
      tagIds: _currentTagId,
      lang: appModel.langCode,
      orderBy: _currentFilterSortBy.orderByType?.name,
      order: _currentFilterSortBy.orderType?.name,
      boostEngine: config.boostEngine ?? false,
      search: config.search,
      author: config.author,
      include: config.include,
    );
  }

  void onLoadMore(int page) {
    blogModel.getBlogsList(
      categoryIds: newCategoryId,
      tagIds: _currentTagId,
      lang: appModel.langCode,
      page: page,
      orderBy: _currentFilterSortBy.orderByType?.name,
      order: _currentFilterSortBy.orderType?.name,
      boostEngine: config.boostEngine ?? false,
      search: config.search,
      author: config.author,
      include: config.include,
    );
  }

  @override
  Widget build(BuildContext context) {
    final blog = Provider.of<BlogModel>(context);
    final title = (blog.categoryName?.isNotEmpty ?? false)
        ? '${blog.categoryName}'
        : S.of(context).blog;
    var textColor = Colors.white;

    _PostBackdrop backdrop({blogs, isFetching, errMsg, isEnd}) => _PostBackdrop(
          backdrop: Backdrop(
            hasAppBar: showAppBar(RouteList.backdrop),
            frontLayer: Selector<AppModel, String>(
                selector: (context, provider) => provider.productListLayout,
                builder: (context, productListLayout, child) {
                  return BlogListBackdrop(
                    blogs: blogs,
                    onRefresh: onRefresh,
                    onLoadMore: onLoadMore,
                    isFetching: isFetching,
                    errMsg: errMsg,
                    isEnd: isEnd,
                    layout: productListLayout,
                  );
                }),
            backLayer: FilterWidget(
              onFilter: onFilter,
              sortBy: _currentFilterSortBy,
              showCategory: true,
              showPriceSlider: false,
              showAttribute: false,
              showBrand: false,
              isUseBlog: !ServerConfig().isWordPress,
              isBlog: true,
              categoryId: newCategoryId,
              tagId: _currentTagId,
              allowMultipleCategory: allowMultipleCategory,
              allowMultipleTag: allowMultipleTag,
              onApply: () {
                _controller.forward();
              },
            ),
            frontTitle: Text(title, style: TextStyle(color: textColor)),
            backTitle: Center(
              child: Text(
                S.of(context).filter,
                style: TextStyle(color: textColor),
              ),
            ),
            controller: _controller,
            isBlog: true,
            showFilter: isEnableFilter,
          ),
        );

    return ListenableProvider.value(
      value: blog,
      child: Consumer<BlogModel>(builder: (context, value, child) {
        return renderScaffold(
          routeName: RouteList.backdrop,
          child: backdrop(
            blogs: value.blogList,
            isFetching: value.isFetching,
            errMsg: value.errMsg,
            isEnd: value.isEnd,
          ),
        );
      }),
    );
  }
}

class _PostBackdrop extends StatelessWidget {
//  final ExpandingBottomSheet expandingBottomSheet;
  final Backdrop backdrop;

  const _PostBackdrop({required this.backdrop});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        backdrop,
      ],
    );
  }
}
