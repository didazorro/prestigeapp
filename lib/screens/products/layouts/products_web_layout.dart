import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../app.dart';
import '../../../generated/l10n.dart';
import '../../../models/entities/filter_attribute.dart';
import '../../../models/entities/filter_sorty_by.dart';
import '../../../models/entities/product.dart';
import '../../../models/search_web_model.dart';
import '../../../widgets/backdrop/web_filter.dart';
import '../../../widgets/product/product_list_web.dart';
import '../../../widgets/web_layout/mixins/overlay_mixin.dart';
import '../filter_mixin/products_filter_mixin.dart';
import '../widgets/category_menu.dart';
import 'products_layout.dart';

class ProductsWebLayout extends ProductsLayout {
  const ProductsWebLayout({
    super.key,
    super.products,
    super.config,
    super.countdownDuration,
    super.autoFocusSearch,
  });

  @override
  StateProductsWebLayout createState() => StateProductsWebLayout();
}

class StateProductsWebLayout extends StateProductLayout<ProductsWebLayout> {
  SearchWebModel get searchModel => context.read<SearchWebModel>();

  @override
  void initState() {
    super.initState();
    context.read<SearchWebModel>().addListener(_listenserSearch);
    WidgetsBinding.instance.endOfFrame.then((_) {
      if (mounted) {
        if (searchModel.searchText?.isNotEmpty ?? false) {
          onFilter(search: searchModel.searchText);
        }
      }
    });
  }

  void _listenserSearch() {
    onFilter(search: searchModel.searchText);
  }

  String _textSearch(String s, int? length) {
    if (length != null && length > 0) {
      if (length == 1) {
        return S.of(context).searchResultItem(s, length);
      }
      return S.of(context).searchResultItems(s, length);
    }

    return s;
  }

  @override
  Widget renderProductsLayout({
    List<Product>? products,
    required bool isFetching,
    String? errMsg,
    bool? isEnd,
    double? width,
    required String layout,
  }) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: ChangeNotifierProvider.value(
          value: searchModel,
          builder: (_, __) {
            return ProductListWeb(
              products: products,
              onRefresh: onRefresh,
              onLoadMore: onLoadMore,
              isFetching: isFetching,
              errMsg: errMsg,
              isEnd: isEnd,
              ratioProductImage: ratioProductImage,
              productListItemHeight: productListItemHeight,
              width: width,
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
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                isFetching || productModel.isLoading
                                    ? searchModel.searchText!
                                    : _textSearch(searchModel.searchText!,
                                        productModel.productsList?.length),
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
                        onFilter: onFilter,
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
        ),
      ),
    );
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

  final void Function({
    dynamic minPrice,
    dynamic maxPrice,
    List<String>? categoryId,
    String? categoryName,
    List<String>? tagId,
    String? listingLocationId,
    FilterSortBy? sortBy,
    String? search,
    bool? isSearch,
    List<String>? brandIds,
    Map<FilterAttribute, List<SubAttribute>>? attributes,
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
