import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../app.dart';
import '../../common/config.dart';
import '../../common/constants.dart';
import '../../generated/l10n.dart';
import '../../models/entities/filter_attribute.dart';
import '../../models/entities/filter_sorty_by.dart';
import '../../models/index.dart'
    show
        AppModel,
        BrandLayoutModel,
        CategoryModel,
        FilterAttributeModel,
        Product,
        ProductModel,
        ProductPriceModel,
        TagModel,
        UserModel;
import '../../models/search_web_model.dart';
import '../../modules/dynamic_layout/index.dart';
import '../../services/index.dart';
import '../../widgets/backdrop/web_filter.dart';
import '../../widgets/product/product_list_web.dart';
import '../../widgets/web_layout/mixins/overlay_mixin.dart';
import '../common/app_bar_mixin.dart';
import 'filter_mixin/products_filter_mixin.dart';
import 'products_mixin.dart';
import 'widgets/category_menu.dart';

class ProductsScreenWeb extends StatefulWidget {
  final List<Product>? products;
  final ProductConfig? config;
  final Duration countdownDuration;
  final bool enableSearchHistory;
  final String? routeName;
  final bool autoFocusSearch;

  const ProductsScreenWeb({
    this.products,
    this.countdownDuration = Duration.zero,
    this.config,
    this.enableSearchHistory = false,
    this.routeName,
    this.autoFocusSearch = false,
  });

  @override
  State<StatefulWidget> createState() {
    return ProductsScreenWebState();
  }
}

class ProductsScreenWebState extends State<ProductsScreenWeb>
    with
        SingleTickerProviderStateMixin,
        AppBarMixin,
        ProductsMixin,
        ProductsFilterMixin {
  late AnimationController _controller;

  bool get hasAppBar => showAppBar(widget.routeName ?? RouteList.backdrop);

  ProductConfig get productConfig => widget.config ?? ProductConfig.empty();

  @override
  BrandLayoutModel get brandModel => context.read<BrandLayoutModel>();

  @override
  bool get enableSearchHistory => widget.enableSearchHistory;

  @override
  CategoryModel get categoryModel =>
      Provider.of<CategoryModel>(context, listen: false);

  @override
  TagModel get tagModel => context.read<TagModel>();

  ProductModel get productModel =>
      Provider.of<ProductModel>(context, listen: false);

  @override
  FilterAttributeModel get filterAttrModel =>
      Provider.of<FilterAttributeModel>(context, listen: false);

  @override
  ProductPriceModel get productPriceModel => context.read<ProductPriceModel>();

  UserModel get userModel => Provider.of<UserModel>(context, listen: false);

  AppModel get appModel => Provider.of<AppModel>(context, listen: false);

  SearchWebModel get searchModel => context.read<SearchWebModel>();

  /// Image ratio from Product Cart
  double get ratioProductImage => appModel.ratioProductImage;

  double get productListItemHeight => kProductDetail.productListItemHeight;

  bool get enableProductBackdrop => kAdvanceConfig.enableProductBackdrop;

  bool get showBottomCornerCart => kAdvanceConfig.showBottomCornerCart;

  List<Product>? products = [];
  String? errMsg;

  String _currentTitle = '';

  String get currentTitle => search != null
      ? ((searchModel.searchText?.isNotEmpty ?? false)
          ? S.of(context).search
          : '')
      : _currentTitle;

  bool get enableCounting =>
      (categoryIds?.isNotEmpty ?? false) &&
      (listingLocationId?.isEmpty ?? true) &&
      (tagIds?.isEmpty ?? true) &&
      (maxPrice == null || maxPrice == 0.0) &&
      (search?.isEmpty ?? true) &&
      !(filterSortBy.featured ?? false) &&
      !(filterSortBy.onSale ?? false);

  StreamSubscription? _streamSubscription;

  void onTapProductCategoryMenu(String? categoryId) {
    // Reset included products
    include = null;

    var selectedCategoryIds = categoryIds;
    if (selectedCategoryIds?.contains(categoryId) ?? false) {
      selectedCategoryIds?.remove(categoryId);
    } else if (categoryId != null) {
      // `ProductCategoryMenu` will be hidden if the selected category number is
      // not equal to 1. Some users do not want this behavior when they select
      // another category item in the list. Therefore, here only a single
      // category filter will be applied. If they want to filter multiple
      // categories on supported platforms, the only way is to open the filter
      // screen.

      // if (allowMultipleCategory) {
      //   selectedCategoryIds?.add(categoryId);
      // } else {
      selectedCategoryIds = [categoryId];
      // }
    }

    _onFilter(categoryId: selectedCategoryIds);
  }

  void _onFilter({
    dynamic minPrice,
    dynamic maxPrice,
    List<String>? categoryId,
    String? categoryName,
    List<String>? tagId,
    dynamic listingLocationId,
    FilterSortBy? sortBy,
    String? search,
    bool? isSearch,
    List<String>? brandIds,
    dynamic attributes,
  }) =>
      onFilter(
        minPrice: minPrice,
        maxPrice: maxPrice,
        categoryId:
            (categoryId?.isNotEmpty ?? false) ? categoryId : categoryIds,
        categoryName: categoryName,
        tagId: tagId,
        listingLocationId: listingLocationId,
        sortBy: sortBy,
        search: search,
        isSearch: isSearch,
        brandIds: brandIds,
        attributes: attributes,
      );

  void _listenserSearch() {
    _onFilter(search: searchModel.searchText);
  }

  @override
  void initState() {
    super.initState();
    _initFilter();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 450),
      value: 1.0,
    );

    context.read<SearchWebModel>().addListener(_listenserSearch);

    Services().firebase.firebaseAnalytics?.logViewItemList(
          itemListId:
              (productModel.categoryIds ?? productModel.tagIds ?? []).join(','),
          itemListName: productModel.categoryName,
          data: widget.products,
        );

    /// only request to server if there is empty config params
    // / If there is config, load the products one
  }

  void _initFilter() {
    WidgetsBinding.instance.endOfFrame.then((_) async {
      await initFilter(config: productConfig);

      if (mounted) {
        _streamSubscription =
            eventBus.on<EventRefreshProductsList>().listen((event) {
          onRefresh();
        });
        await onRefresh();

        if (searchModel.searchText?.isNotEmpty ?? false) {
          _onFilter(search: searchModel.searchText);
        }
      }

      if (brandModel.brands.isEmpty) {
        unawaited(brandModel.getBrands(categoryIds: categoryIds));
      }
    });
  }

  @override
  void clearProductList() {
    productModel.setProductsList([]);
  }

  @override
  void dispose() {
    _streamSubscription?.cancel();
    super.dispose();
  }

  @override
  Future<void> getProductList({bool forceLoad = false}) async {
    await productModel.getProductsList(
      boostEngine: widget.config?.boostEngine,
      categoryId: categoryIds,
      minPrice: minPrice,
      maxPrice: maxPrice,
      page: page,
      lang: appModel.langCode,
      orderBy: filterSortBy.orderByType?.name,
      order: filterSortBy.orderType?.name,
      featured: filterSortBy.featured,
      onSale: filterSortBy.onSale,
      tagId: tagIds,
      attributes: getAttributes(),
      userId: userModel.user?.id,
      listingLocation: listingLocationId,
      include: include,
      search: search,
    );
  }

  @override
  Widget build(BuildContext context) {
    _currentTitle = productConfig.name ?? productModel.categoryName ?? '';

    Widget buildMain = LayoutBuilder(
      builder: (context, constraint) {
        return ListenableProvider.value(
          value: productModel,
          child: Consumer<ProductModel>(
            builder: (context, model, child) {
              return ChangeNotifierProvider.value(
                value: searchModel,
                builder: (_, __) {
                  return ProductListWeb(
                    products: model.productsList,
                    onRefresh: onRefresh,
                    onLoadMore: onLoadMore,
                    routeName: widget.routeName,
                    isFetching: model.isFetching,
                    errMsg: model.errMsg,
                    isEnd: model.isEnd,
                    ratioProductImage: ratioProductImage,
                    productListItemHeight: productListItemHeight,
                    width: constraint.maxWidth,
                    appbar: renderFilters(context),
                    title: currentTitle,
                    header: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  if (searchModel.searchText?.isNotEmpty ??
                                      false) ...[
                                    Text(
                                      S.of(context).searchForItems,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      model.isFetching || model.isLoading
                                          ? searchModel.searchText!
                                          : _textSearch(
                                              searchModel.searchText!,
                                              productModel
                                                  .productsList?.length),
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    const SizedBox(height: 10),
                                  ],
                                  SizedBox(
                                    child: ProductCategoryMenu(
                                      selectedCategories: categoryIds,
                                      padding: EdgeInsets.zero,
                                      imageLayout: true,
                                      onTap: onTapProductCategoryMenu,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  renderFilterTitle(context),
                                ],
                              ),
                            ),
                            FilterButtonWidget(
                              onFilter: _onFilter,
                              minPrice: minPrice,
                              brandIds: brandIds,
                              maxPrice: maxPrice,
                              sortBy: filterSortBy,
                              categoryIds: categoryIds,
                              tagIds: tagIds,
                              minFilterPrice: productPriceModel.minFilterPrice,
                              maxFilterPrice: productPriceModel.maxFilterPrice,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        );
      },
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(child: buildMain),
    );
  }

  @override
  String get lang => appModel.langCode;

  @override
  void onCategorySelected(String? name) {
    productModel.categoryName = name;
    _currentTitle = (name?.isNotEmpty ?? false) ? name! : S.of(context).results;
  }

  @override
  void onCloseFilter() {
    _controller.forward();
  }

  @override
  void rebuild() {
    setState(() {});
  }

  @override
  void onClearTextSearch() {}

  String _textSearch(String s, int? length) {
    if (length != null && length > 0) {
      if (length == 1) {
        return S.of(context).searchResultItem(s, length);
      }
      return S.of(context).searchResultItems(s, length);
    }

    return s;
  }
}

class FilterButtonWidget extends StatefulWidget {
  const FilterButtonWidget({
    super.key,
    this.onFilter,
    this.onApply,
    this.minPrice,
    this.maxPrice,
    this.sortBy,
    this.categoryIds,
    this.minFilterPrice,
    this.maxFilterPrice,
    this.brandIds,
    this.tagIds,
    this.attributes,
  });

  final Function({
    dynamic minPrice,
    dynamic maxPrice,
    List<String>? categoryId,
    String? categoryName,
    List<String>? tagId,
    dynamic listingLocationId,
    FilterSortBy? sortBy,
    bool? isSearch,
    List<String>? brandIds,
    dynamic attributes,
  })? onFilter;

  final VoidCallback? onApply;
  final double? minPrice;
  final double? maxPrice;
  final FilterSortBy? sortBy;
  final List<String>? categoryIds;
  final List<String>? brandIds;
  final List<String>? tagIds;
  final double? minFilterPrice;
  final double? maxFilterPrice;
  final Map<FilterAttribute, List<SubAttribute>>? attributes;

  @override
  State<FilterButtonWidget> createState() => _FilterButtonWidgetState();
}

class _FilterButtonWidgetState extends State<FilterButtonWidget>
    with OverlayMixin {
  final _globalKey = GlobalKey<_FilterButtonWidgetState>();

  @override
  GlobalKey<State<StatefulWidget>>? get globalKeyOverlay => _globalKey;

  @override
  double get offsetTop => -20;

  @override
  Widget get bodyOverlay {
    return Material(
      color: Colors.transparent,
      child: SizedBox(
        width: 400,
        height: 500,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.surface,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: const Offset(1, 4), // changes position of shadow
                ),
              ]),
          child: WebFilterWidget(
            onFilter: widget.onFilter,
            brandIds: widget.brandIds,
            onApply: widget.onApply,
            maxFilterPrice: widget.maxFilterPrice,
            minFilterPrice: widget.minFilterPrice,
            maxPrice: widget.maxPrice,
            minPrice: widget.minPrice,
            sortBy: widget.sortBy,
            categoryIds: widget.categoryIds,
            tagIds: widget.tagIds,
            selectedAttributes: widget.attributes,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: _globalKey,
      onTap: () {
        showOverlay(App.fluxStoreNavigatorKey.currentContext);
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.secondary,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Row(
          children: [
            Icon(
              Icons.filter_alt_sharp,
              size: 18,
              color: Theme.of(context).colorScheme.secondary,
            ),
            const SizedBox(width: 4),
            Text(
              S.of(context).filter,
              style: TextStyle(color: Theme.of(context).colorScheme.secondary),
            ),
          ],
        ),
      ),
    );
  }
}
