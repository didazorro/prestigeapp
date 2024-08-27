import 'package:flutter/material.dart';

import '../../../common/constants.dart';
import '../../../generated/l10n.dart';
import '../../../models/entities/product.dart';
import '../../../modules/dynamic_layout/helper/countdown_timer.dart';
import '../../../widgets/asymmetric/asymmetric_view.dart';
import '../../../widgets/backdrop/backdrop.dart';
import '../../../widgets/backdrop/filter.dart';
import '../../../widgets/product/product_list.dart';
import '../filter_mixin/products_filter_mixin.dart';
import '../products_backdrop.dart';
import '../widgets/category_menu.dart';
import 'products_layout.dart';

class ProductsBackdropLayout extends ProductsLayout {
  const ProductsBackdropLayout({
    super.key,
    super.products,
    super.config,
    super.countdownDuration,
    super.autoFocusSearch,
  });

  @override
  StateProductsBackdropLayout createState() => StateProductsBackdropLayout();
}

class StateProductsBackdropLayout
    extends StateProductLayout<ProductsBackdropLayout> {
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
      child: ProductBackdrop(
        backdrop: Backdrop(
          hasAppBar: hasAppBar,
          bgColor: productConfig.backgroundColor,
          frontLayer: layout.isListView
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
                )
              : AsymmetricView(
                  products: products,
                  isFetching: isFetching,
                  isEnd: isEnd,
                  onLoadMore: onLoadMore,
                  width: width),
          backLayer: FilterWidget(
            onFilter: onFilter,
            categoryId: categoryIds,
            tagId: tagIds,
            brandIds: brandIds,
            sortBy: filterSortBy,
            listingLocationId: listingLocationId,
            onApply: onCloseFilter,
            allowMultipleCategory: allowMultipleCategory,
            allowMultipleTag: allowMultipleTag,
            allowMultiAttribute: allowMultiAttribute,
            minFilterPrice: productPriceModel.minFilterPrice,
            maxFilterPrice: productPriceModel.maxFilterPrice,
            selectedAttributes: lstSelectedAttribute,
          ),
          frontTitle: productConfig.showCountDown
              ? Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(currentTitle),
                        CountDownTimer(widget.countdownDuration)
                      ],
                    ),
                  ],
                )
              : Text(currentTitle),
          backTitle: Center(child: Text(S.of(context).filter)),
          controller: filterController,
          appbarCategory: ProductCategoryMenu(
            selectedCategories: categoryIds,
            onTap: onTapProductCategoryMenu,
          ),
          onTapShareButton: () async {
            await shareProductsLink(context);
          },
        ),
        expandingBottomSheet: renderBottomSheet(),
      ),
    );
  }
}
