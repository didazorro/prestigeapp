import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../../common/config.dart';
import '../../../common/constants.dart';
import '../../../common/tools/tools.dart';
import '../../../generated/l10n.dart';
import '../../../models/category/category_model.dart';
import '../../../models/entities/category.dart';
import '../../../models/index.dart' show Product, ProductModel;
import '../../../screens/common/app_bar_mixin.dart';
import '../../../screens/products/filter_mixin/products_filter_mixin.dart';
import '../../../screens/search/widgets/search_empty_result.dart';
import '../../../services/index.dart';
import '../../../widgets/common/background_color_widget.dart';
import '../../../widgets/common/index.dart';
import '../config/product_config.dart';
import '../helper/header_view.dart';
import '../helper/helper.dart';

class VerticalViewLayoutWithFilter extends StatefulWidget {
  final ProductConfig config;

  const VerticalViewLayoutWithFilter({required this.config, super.key});

  @override
  State<VerticalViewLayoutWithFilter> createState() =>
      _VerticalViewLayoutWithFilterState();
}

class _VerticalViewLayoutWithFilterState
    extends State<VerticalViewLayoutWithFilter>
    with AppBarMixin, ProductsFilterMixin {
  final Services _service = Services();
  ValueNotifier<List<Product>> products = ValueNotifier<List<Product>>([]);
  ValueNotifier<bool> canLoad = ValueNotifier(true);
  bool loading = false;
  bool forceLoadingData = false;
  var position = -1;
  List<Category>? categories;
  bool isFirstLoading = true;
  String? location;

  ProductConfig get productConfig => widget.config;

  ProductModel get productModel => context.read<ProductModel>();

  @override
  void onTapOpenFilter() {
    productModel.listingLocationId = location;
    super.onTapOpenFilter();
  }

  void _getAllCategory() async {
    var categorieList =
        Provider.of<CategoryModel>(context, listen: false).categories;
    categories = <Category>[];

    if (categorieList == null) {
      await Provider.of<CategoryModel>(context, listen: false).getCategories();
      categorieList =
          Provider.of<CategoryModel>(context, listen: false).categories;
      if (categorieList == null) {
        return;
      }
    }

    var listCategories = categorieList.where((item) => item.isRoot).toList();

    for (var cate in listCategories) {
      var children = categorieList.where((o) => o.parent == cate.id).toList();
      if (children.isNotEmpty) {
        categories = [...categories!, ...children];
      } else {
        categories = [...categories!, cate];
      }
    }
    if (categories!.isNotEmpty && position == -1) {
      page = 1;
      canLoad.value = true;
      categoryIds = [categories![0].id!];
      position = 0;
      onFilter(
        categoryId: categoryIds,
        categoryName: categories![0].name,
        isSearch: false,
      );
    }
  }

  Future<void> _loadProduct({bool forceLoad = false}) async {
    if (forceLoad == false) {
      if (loading) return;
      if (!canLoad.value) return;
    }
    var configPro = ProductConfig.fromJson(productConfig.toJson());

    configPro.tag = tagIds ?? configPro.tag;
    configPro.category = categoryIds ?? configPro.category;
    configPro.order = order;
    configPro.orderby = orderBy;
    configPro.featured = featured;

    if (onSale != null) {
      configPro.onSale = onSale!;
    }

    configPro.include = include;
    final config = configPro.toJson();
    config['attributes'] = getAttributes();
    config['minPrice'] = minPrice;
    config['maxPrice'] = maxPrice;
    config['page'] = page;
    config['location'] = listingLocationId;
    location = listingLocationId;
    loading = true;
    rebuild();
    List<Product>? newProducts;
    if (isFirstLoading) {
      isFirstLoading = false;
      var jsonData = widget.config.jsonData;
      if (jsonData is Map && jsonData['data'] != null) {
        newProducts = _service.api.productsFromJsonData(jsonData['data']);
      }
    }
    newProducts ??= await _service.api.fetchProductsLayout(
      config: config,
    );

    final isOldCategory = categoryIds != null &&
        configPro.category?.join(',') != categoryIds?.join(',');

    if (forceLoadingData && forceLoad == false || isOldCategory) {
      return;
    }

    if (config['shuffle'] == true && filterSortBy.displayOrderBy == null) {
      newProducts?.shuffle();
    }

    if (newProducts == null || newProducts.isEmpty) {
      canLoad.value = false;
    }

    if (newProducts != null && newProducts.isNotEmpty) {
      products.value = [
        if (forceLoad == false) ...products.value,
        ...newProducts
      ];
    }
    if (forceLoadingData) {
      forceLoadingData = false;
    }
    page = page + 1;
    loading = false;
    rebuild();
  }

  @override
  void initState() {
    super.initState();
    initFilter(config: productConfig);

    WidgetsBinding.instance.endOfFrame.then((_) {
      if (mounted) {
        if (productConfig.showCategory) {
          _getAllCategory();
        } else {
          onRefresh();
        }
      }
    });
  }

  bool get hasAppbar => showAppBar(RouteList.home) && (appBar?.pinned ?? false);

  bool get useSort => productConfig.useSort;

  @override
  Widget build(BuildContext context) {
    final query = MediaQuery.of(context);
    final isTablet = Helper.isTablet(query);
    var column = isTablet ? 3 : 2;

    if (categories == null && productConfig.showCategory) {
      return BackgroundColorWidget(
        enable: widget.config.enableBackground,
        height: MediaQuery.of(context).size.height * 0.7,
        child: Center(
          child: kLoadingWidget(context),
        ),
      );
    }

    final colorText =
        Theme.of(context).textTheme.bodySmall?.color?.withOpacity(0.7);

    return BackgroundColorWidget(
      enable: widget.config.enableBackground,
      child: StickyHeaderBuilder(
          builder: (BuildContext context, double stuckAmount) {
            return SafeArea(
              top: stuckAmount <= 0.0 ? true : false,
              bottom: false,
              //BUG: https://tppr.me/e7ugh, file https://www.dropbox.com/s/nsnp1piztle5ybp/18916%20Archivo%20comprimido.zip?dl=0
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (productConfig.name != null && useSort == false)
                    HeaderView(
                      headerText: productConfig.name ?? '',
                      showSeeAll: false,
                      callback: () => ProductModel.showList(
                        config: productConfig.jsonData,
                        context: context,
                      ),
                    ),
                  AnimatedSize(
                    duration: const Duration(milliseconds: 200),
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        boxShadow: [
                          if (stuckAmount <= 0.0 && useSort == false)
                            BoxShadow(
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondary
                                  .withOpacity(0.1),
                              blurRadius: 1,
                              spreadRadius: 1,
                              offset: const Offset(0, 3),
                            ),
                        ],
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: SizedBox(
                        height: kToolbarHeight,
                        child: renderFilters(
                          context,
                          trailingWidget: Row(
                            children: [
                              Text(
                                useSort
                                    ? S.of(context).sortBy
                                    : S.of(context).filter,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(fontSize: 12, color: colorText),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsetsDirectional.only(start: 5),
                                child: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  size: 17.0,
                                  color: colorText,
                                ),
                              ),
                            ],
                          ),
                          title: useSort
                              ? Text(
                                  productConfig.name ?? '',
                                  style: isDesktop
                                      ? Theme.of(context)
                                          .textTheme
                                          .headlineSmall!
                                          .copyWith(fontWeight: FontWeight.w800)
                                      : Theme.of(context)
                                          .textTheme
                                          .titleLarge
                                          ?.copyWith(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 25,
                                          ),
                                )
                              : null,
                        ),
                      ),
                    ),
                  ),
                  if (productConfig.showCategory)
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 15),
                        child: Row(
                          children: List.generate(
                            categories?.length ?? 0,
                            (index) {
                              final category = categories![index];
                              final isSelected = index == position;

                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: GestureDetector(
                                  onTap: () =>
                                      _onSelectCategory(index, category),
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).cardColor,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary
                                              .withOpacity(
                                                  isSelected ? 0.25 : 0.1),
                                          blurRadius: 10,
                                          spreadRadius: isSelected ? 2 : 1,
                                          offset: const Offset(0, 0),
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        (category.image?.isNotEmpty ?? false)
                                            ? FluxImage(
                                                imageUrl: category.image!,
                                                height: 20,
                                                width: 20,
                                              )
                                            : const Icon(Icons.image, size: 20),
                                        const SizedBox(width: 8),
                                        Text(
                                          category.name!.toUpperCase(),
                                          style: TextStyle(
                                              color: isSelected
                                                  ? Theme.of(context)
                                                      .primaryColor
                                                  : Theme.of(context)
                                                      .colorScheme
                                                      .secondary,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            );
          },
          content: LimitedBox(
            maxHeight: query.size.height - query.padding.vertical,
            child: CustomScrollView(
              slivers: <Widget>[
                SliverPadding(
                  padding: const EdgeInsets.only(top: 16.0),
                  sliver: SliverPadding(
                    padding: EdgeInsets.symmetric(
                      vertical: productConfig.vPadding,
                      horizontal: productConfig.hPadding,
                    ),
                    sliver: ValueListenableBuilder<List<Product>>(
                      valueListenable: products,
                      builder: (context, value, child) {
                        if (loading && value.isEmpty) {
                          return const SliverToBoxAdapter();
                        }

                        var rows = value.length ~/ column;
                        if (rows * column < value.length) rows++;
                        if (rows == 0) {
                          return SliverToBoxAdapter(
                            child: SizedBox(
                              height: MediaQuery.sizeOf(context).height * 0.6,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 100),
                                  child: EmptySearch(
                                    title: S.of(context).notFound,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }
                        return SliverList(
                          delegate: SliverChildBuilderDelegate(
                            addAutomaticKeepAlives: false,
                            childCount: rows,
                            (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: SizedBox(
                                  height: productConfig.height ??
                                      (productConfig.productListItemHeight +
                                          (Tools.isTablet(
                                                  MediaQuery.of(context))
                                              ? 230
                                              : 180)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: List.generate(
                                      column,
                                      (indexColumn) {
                                        return Expanded(
                                          child: index * column + indexColumn <
                                                  value.length
                                              ? LayoutBuilder(
                                                  builder:
                                                      (context, constraints) {
                                                    return Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              bottom: 5),
                                                      child: Services()
                                                          .widget
                                                          .renderProductCardView(
                                                            item: value[index *
                                                                    column +
                                                                indexColumn],
                                                            width: constraints
                                                                .maxWidth,
                                                            config:
                                                                productConfig,
                                                            ratioProductImage:
                                                                widget.config
                                                                    .imageRatio,
                                                          ),
                                                    );
                                                  },
                                                )
                                              : const SizedBox(),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(
                    bottom: kToolbarHeight * 3,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: VisibilityDetector(
                      key: const Key('loading_vertical'),
                      onVisibilityChanged: (VisibilityInfo info) =>
                          _loadProduct(),
                      child: ValueListenableBuilder<bool>(
                          valueListenable: canLoad,
                          builder: (context, value, child) {
                            if (!value) return const SizedBox();
                            return child ?? const SizedBox();
                          },
                          child: SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.6,
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 100),
                                child: LoadingWidget(),
                              ),
                            ),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  @override
  void clearProductList() {
    products.value.clear();
    rebuild();
  }

  @override
  Future<void> getProductList({bool forceLoad = false}) async {
    canLoad.value = true;
    forceLoadingData = forceLoad;
    await _loadProduct(forceLoad: forceLoad);
  }

  @override
  void onCategorySelected(String? name) {}

  @override
  void onCloseFilter() {}

  @override
  void rebuild() {
    setState(() {});
  }

  @override
  bool get showLayout => false;

  // Only allow filter by single category from category list, and hide filter by
  // category in the filter bottom sheet because of conflicting with selected category
  @override
  bool get showCategory => !useSort && !productConfig.showCategory;

  @override
  bool get showPriceSlider => !useSort;

  @override
  bool get showTag => !useSort;

  @override
  bool get showAttribute => !useSort;

  @override
  bool get showBrand => !useSort;

  @override
  bool get allowMultipleCategory => false;

  void _onSelectCategory(int index, Category category) {
    setState(() {
      products.value = [];
      page = 1;
      canLoad.value = true;
      categoryIds = [category.id!];
      position = index;
    });

    onFilter(
      categoryId: categoryIds,
      categoryName: category.name,
      isSearch: false,
    );
  }
}
