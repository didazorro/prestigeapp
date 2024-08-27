import 'package:flutter/material.dart';

import '../../../common/constants.dart';
import '../../../generated/l10n.dart';
import '../../../models/entities/product.dart';
import '../../../modules/dynamic_layout/helper/countdown_timer.dart';
import '../../../widgets/asymmetric/asymmetric_view.dart';
import '../../../widgets/product/product_list.dart';
import '../filter_mixin/products_filter_mixin.dart';
import '../products_flatview.dart';
import '../widgets/category_menu.dart';
import 'products_layout.dart';

class ProductsFlatviewLayout extends ProductsLayout {
  const ProductsFlatviewLayout({
    super.key,
    super.products,
    super.config,
    super.countdownDuration,
    super.autoFocusSearch,
  });

  @override
  StateProductsFlatviewLayout createState() => StateProductsFlatviewLayout();
}

class StateProductsFlatviewLayout<T extends ProductsFlatviewLayout>
    extends StateProductLayout<T> {
  final searchFieldController = TextEditingController();

  String _countItemText(int length) {
    if (length == 1) {
      return S.of(context).countItem(length);
    }
    return S.of(context).countItems(length);
  }

  @override
  void dispose() {
    searchFieldController.dispose();
    super.dispose();
  }

  @override
  void onClearTextSearch() {
    searchFieldController.clear();
  }

  void onSearch(String searchText) {
    onFilter(
      minPrice: minPrice,
      maxPrice: maxPrice,
      categoryId: categoryIds,
      tagId: tagIds,
      brandIds: brandIds,
      listingLocationId: listingLocationId,
      search: searchText,
      isSearch: true,
    );
  }

  Widget renderHeaderCategoryMenu() {
    return ProductCategoryMenu(
      imageLayout: true,
      selectedCategories: categoryIds,
      onTap: onTapProductCategoryMenu,
    );
  }

  Widget renderProductsList({
    List<Product>? products,
    required bool isFetching,
    String? errMsg,
    bool? isEnd,
    double? width,
    required String layout,
  }) {
    final productLength = products?.length ?? 0;

    return layout.isListView
        ? ProductList(
            products: products,
            onRefresh: onRefresh,
            onLoadMore: onLoadMore,
            isFetching: isFetching,
            errMsg: errMsg,
            isEnd: isEnd,
            layout: layout,
            ratioProductImage: ratioProductImage,
            productListItemHeight: productListItemHeight,
            width: width,
            appbar: renderFilters(context),
            header: [
              renderHeaderCategoryMenu(),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, bottom: 10, top: 25),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Text(
                            currentTitle,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                        ),
                        const Spacer(),
                        if (productLength > 0) ...[
                          Text(
                            _countItemText(productLength),
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: Theme.of(context).hintColor,
                                    ),
                          ),
                          const SizedBox(width: 5),
                        ]
                      ],
                    ),
                    if (productConfig.showCountDown) ...[
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            S.of(context).endsIn('').toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondary
                                      .withOpacity(0.8),
                                )
                                .apply(fontSizeFactor: 0.6),
                          ),
                          CountDownTimer(widget.countdownDuration),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
            ],
          )
        : AsymmetricView(
            products: products,
            isFetching: isFetching,
            isEnd: isEnd,
            onLoadMore: onLoadMore,
            width: width,
          );
  }

  Widget? renderTitleFilter(String layout) {
    return layout.isListView ? null : renderFilters(context);
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
    return renderScaffold(
      routeName: RouteList.backdrop,
      resizeToAvoidBottomInset: false,
      disableSafeArea: true,
      child: ProductFlatView(
        searchFieldController: searchFieldController,
        hasAppBar: hasAppBar,
        autoFocusSearch: widget.autoFocusSearch,
        builder: renderProductsList(
          products: products,
          isFetching: isFetching,
          errMsg: errMsg,
          isEnd: isEnd,
          width: width,
          layout: layout,
        ),
        titleFilter: renderTitleFilter(layout),
        onFilter: onFilter,
        onSearch: onSearch,
        bottomSheet: renderBottomSheet(),
      ),
    );
  }
}
