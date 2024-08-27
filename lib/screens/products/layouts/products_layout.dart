import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/config.dart';
import '../../../common/constants.dart';
import '../../../generated/l10n.dart';
import '../../../models/index.dart';
import '../../../modules/analytics/analytics.dart';
import '../../../modules/dynamic_layout/config/product_config.dart';
import '../../../services/service_config.dart';
import '../../../services/services.dart';
import '../../../widgets/product/product_bottom_sheet.dart';
import '../../common/app_bar_mixin.dart';
import '../filter_mixin/products_filter_mixin.dart';
import '../products_mixin.dart';

abstract class ProductsLayout extends StatefulWidget {
  final List<Product>? products;
  final ProductConfig? config;
  final Duration countdownDuration;
  final bool autoFocusSearch;

  const ProductsLayout({
    super.key,
    this.products,
    this.config,
    this.countdownDuration = Duration.zero,
    this.autoFocusSearch = true,
  });
}

abstract class StateProductLayout<T extends ProductsLayout> extends State<T>
    with
        SingleTickerProviderStateMixin,
        AppBarMixin,
        ProductsMixin,
        ProductsFilterMixin {
  late AnimationController filterController;

  bool get hasAppBar => showAppBar(RouteList.backdrop);

  ProductConfig get productConfig => widget.config ?? ProductConfig.empty();

  ProductModel get productModel => context.read<ProductModel>();

  UserModel get userModel => context.read<UserModel>();

  AppModel get appModel => context.read<AppModel>();

  /// Image ratio from Product Cart
  double get ratioProductImage => appModel.ratioProductImage;

  double get productListItemHeight => kProductDetail.productListItemHeight;

  bool get showBottomCornerCart => kAdvanceConfig.showBottomCornerCart;

  String? _currentTitle;

  String get currentTitle {
    if (search != null) {
      return S.of(context).results;
    }
    return _currentTitle ?? productModel.categoryName ?? S.of(context).results;
  }

  StreamSubscription? _streamSubscription;

  @override
  void initState() {
    super.initState();
    _currentTitle = productConfig.name;
    _initFilter();
    filterController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 450),
      value: 1.0,
    );
    Analytics.triggerViewListProduct(widget.products, context);

    /// only request to server if there is empty config params
    // / If there is config, load the products one
  }

  void _initFilter() {
    WidgetsBinding.instance.endOfFrame.then((_) async {
      await initFilter(config: productConfig);

      if (mounted) {
        _streamSubscription = eventBus.on<EventRefreshProductsList>().listen(
          (event) {
            onRefresh();
          },
        );
        unawaited(onRefresh());
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
    filterController.dispose();
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
      brandIds: brandIds,
    );
    Analytics.triggerSearchProduct(
      search,
      productModel.products.isEmpty,
      context,
    );
  }

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

    onFilter(categoryId: selectedCategoryIds);
  }

  Widget renderProductsLayout({
    List<Product>? products,
    required bool isFetching,
    String? errMsg,
    bool? isEnd,
    double? width,
    required String layout,
  });

  ExpandingBottomSheet? renderBottomSheet() {
    final enable = Services().widget.enableShoppingCart(null) &&
        !ServerConfig().isListingType &&
        kAdvanceConfig.showBottomCornerCart;
    return enable
        ? ExpandingBottomSheet(
            hideController: filterController,
          )
        : null;
  }

  @override
  Widget build(BuildContext context) {
    return Selector<AppModel, String>(
      selector: (context, provider) => provider.productListLayout,
      builder: (context, productListLayout, child) {
        return ListenableProvider.value(
          value: productModel,
          child: Consumer<ProductModel>(
            builder: (context, model, child) {
              return renderProductsLayout(
                products: model.productsList,
                isFetching: model.isFetching,
                errMsg: model.errMsg,
                isEnd: model.isEnd,
                width: MediaQuery.sizeOf(context).width,
                layout: productListLayout,
              );
            },
          ),
        );
      },
    );
  }

  @override
  void onCategorySelected(String? name) {
    productModel.categoryName = name;
    _currentTitle =
        (name?.isNotEmpty ?? false) ? '$name' : S.of(context).results;
  }

  @override
  void rebuild() {
    setState(() {});
  }

  @override
  void onCloseFilter() {
    filterController.forward();
  }
}
