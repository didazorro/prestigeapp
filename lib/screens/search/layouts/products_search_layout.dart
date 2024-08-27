import 'package:flutter/material.dart';

import '../../../common/constants.dart';
import '../../../models/entities/product.dart';
import '../../products/filter_mixin/products_filter_mixin.dart';
import '../../products/layouts/products_flatview_layout.dart';
import 'products_searchview.dart';

class ProductsSearchLayout extends ProductsFlatviewLayout {
  final bool? showQRCode;
  const ProductsSearchLayout({
    super.key,
    super.products,
    super.config,
    super.countdownDuration,
    super.autoFocusSearch,
    this.showQRCode,
  });

  @override
  StateProductsSearchLayout createState() => StateProductsSearchLayout();
}

class StateProductsSearchLayout
    extends StateProductsFlatviewLayout<ProductsSearchLayout> {
  @override
  bool get hasAppBar => showAppBar(RouteList.search);

  @override
  bool get showLayout => false;

  @override
  Widget renderHeaderCategoryMenu() {
    return const SizedBox();
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
      routeName: RouteList.search,
      resizeToAvoidBottomInset: false,
      disableSafeArea: true,
      child: ProductSearchView(
        searchFieldController: searchFieldController,
        hasAppBar: hasAppBar,
        autoFocusSearch: widget.autoFocusSearch,
        showQRCode: widget.showQRCode,
        builder: renderProductsList(
          products: products,
          isFetching: isFetching,
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
