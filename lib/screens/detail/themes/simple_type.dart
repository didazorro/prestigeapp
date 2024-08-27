import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/config.dart';
import '../../../common/constants.dart';
import '../../../common/tools/tools.dart';
import '../../../models/index.dart' show Product, ProductModel, UserModel;
import '../../../models/product_variant_model.dart';
import '../../../services/index.dart';
import '../../../widgets/product/product_bottom_sheet.dart';
import '../../../widgets/product/widgets/heart_button.dart';
import '../../chat/vendor_chat.dart';
import '../product_detail_screen.dart';
import '../widgets/buy_button_widget.dart';
import '../widgets/index.dart';
import '../widgets/product_image_list.dart';
import '../widgets/product_image_slider.dart';
import '../widgets/product_size_guide.dart';

class SimpleLayout extends StatefulWidget {
  final Product product;
  final bool isProductInfoLoading;
  final ScrollController? scrollController;

  const SimpleLayout({
    required this.product,
    required this.isProductInfoLoading,
    this.scrollController,
  });

  @override
  // ignore: no_logic_in_create_state
  State<SimpleLayout> createState() => _SimpleLayoutState(product: product);
}

class _SimpleLayoutState extends State<SimpleLayout>
    with SingleTickerProviderStateMixin {
  late final _scrollController = widget.scrollController ?? ScrollController();
  final ValueNotifier<int> _selectIndexNotifier = ValueNotifier(0);

  late Product product;

  _SimpleLayoutState({required this.product});

  Map<String, String> mapAttribute = HashMap();
  late AnimationController _hideController;
  var top = 0.0;

  bool _isVisibleBuyButton = true;

  @override
  void initState() {
    super.initState();
    _hideController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 450),
      value: 1.0,
    );
  }

  @override
  void didUpdateWidget(SimpleLayout oldWidget) {
    if (oldWidget.product.type != widget.product.type) {
      setState(() {
        product = widget.product;
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _hideController.dispose();
    _selectIndexNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    var hasProductInfo = true;
    final userModel = Provider.of<UserModel>(context, listen: false);
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: SafeArea(
        bottom: false,
        top: kProductDetail.safeArea,
        child: ChangeNotifierProvider(
          create: (_) => ProductModel(),
          child: Consumer<ProductVariantModel>(
            builder: (context, model, child) {
              return Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: <Widget>[
                        Scaffold(
                          resizeToAvoidBottomInset: false,
                          floatingActionButton:
                              (!ServerConfig().isVendorType() ||
                                      !kConfigChat.enableVendorChat)
                                  ? null
                                  : VendorChat(
                                      user: userModel.user,
                                      store: product.store,
                                      product: product,
                                    ),
                          backgroundColor:
                              Theme.of(context).colorScheme.surface,
                          body: CustomScrollView(
                            controller: _scrollController,
                            slivers: <Widget>[
                              SliverAppBar(
                                backgroundColor:
                                    Theme.of(context).colorScheme.surface,
                                elevation: 1.0,
                                expandedHeight:
                                    kIsWeb ? 0 : height * kProductDetail.height,
                                pinned: true,
                                floating: false,
                                leading: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: CircleAvatar(
                                    backgroundColor: Theme.of(context)
                                        .primaryColorLight
                                        .withOpacity(0.7),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.close,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                      onPressed: () {
                                        context
                                            .read<ProductModel>()
                                            .clearProductVariations();
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ),
                                ),
                                actions: <Widget>[
                                  if (hasProductInfo)
                                    HeartButton(
                                      product: product,
                                      size: 20.0,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: CircleAvatar(
                                      backgroundColor: Theme.of(context)
                                          .primaryColorLight
                                          .withOpacity(0.7),
                                      child: IconButton(
                                        icon: const Icon(Icons.more_vert,
                                            size: 19),
                                        color: Theme.of(context).primaryColor,
                                        onPressed: () =>
                                            ProductDetailScreen.showMenu(
                                          context,
                                          widget.product,
                                          isLoading: !hasProductInfo,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                                flexibleSpace: Builder(builder: (context) {
                                  return kIsWeb
                                      ? const SizedBox()
                                      : kProductDetail.productImageLayout.isList
                                          ? ProductImageList(
                                              product: product,
                                              onChange: (index) {
                                                _selectIndexNotifier.value =
                                                    index;
                                              },
                                              height: height *
                                                  kProductDetail.height *
                                                  0.8,
                                            )
                                          : ProductImageSlider(
                                              product: product,
                                              onChange: (index) {
                                                _selectIndexNotifier.value =
                                                    index;
                                              },
                                            );
                                }),
                              ),
                              SliverList(
                                delegate: SliverChildListDelegate(
                                  <Widget>[
                                    const SizedBox(height: 2),
                                    if (kIsWeb)
                                      ValueListenableBuilder<int>(
                                          valueListenable: _selectIndexNotifier,
                                          builder: (context, index, child) {
                                            return ProductGallery(
                                              product: widget.product,
                                              selectIndex: index,
                                            );
                                          }),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 8.0,
                                        bottom: 4.0,
                                        left: 15,
                                        right: 15,
                                      ),
                                      child: widget.product.isGroupedProduct
                                          ? const SizedBox()
                                          : ProductTitle(product),
                                    ),
                                  ],
                                ),
                              ),
                              if (Services().widget.enableShoppingCart(
                                  product.copyWith(isRestricted: false)))
                                SliverToBoxAdapter(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15.0),
                                    child: AnimatedSize(
                                      duration:
                                          const Duration(milliseconds: 300),
                                      child: ProductCommonInfo(
                                        product: widget.product,
                                        wrapSliver: false,
                                        isProductInfoLoading:
                                            widget.isProductInfoLoading,
                                      ),
                                    ),
                                  ),
                                ),
                              if (!Services().widget.enableShoppingCart(
                                      product.copyWith(isRestricted: false)) &&
                                  product.shortDescription != null &&
                                  product.shortDescription!.isNotEmpty)
                                SliverToBoxAdapter(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15.0),
                                    child: ProductShortDescription(product),
                                  ),
                                ),
                              SliverToBoxAdapter(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    // horizontal: 15.0,
                                    vertical: 8.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0,
                                        ),
                                        child: Column(
                                          children: [
                                            Services()
                                                .widget
                                                .renderVendorInfo(product),
                                            Services()
                                                .renderTiredPriceTable(product),
                                            Services()
                                                .renderCustomInformationTable(
                                                    product),
                                            ProductBrand(
                                                product: widget.product),
                                            ProductDescription(product),
                                            if (widget.isProductInfoLoading ==
                                                false)
                                              ProductSizeGuide(widget.product),
                                            if (kProductDetail
                                                .showProductCategories)
                                              ProductDetailCategories(product),
                                            if (kProductDetail.showProductTags)
                                              ProductTag(product),
                                            if (widget.isProductInfoLoading ==
                                                false)
                                              Services()
                                                  .widget
                                                  .productReviewWidget(product),
                                          ],
                                        ),
                                      ),
                                      if (kProductDetail
                                              .showRelatedProductFromSameStore &&
                                          product.store?.id != null)
                                        RelatedProductFromSameStore(product),
                                      if (kProductDetail.showRelatedProduct &&
                                          widget.isProductInfoLoading == false)
                                        RelatedProduct(product),
                                      if (kProductDetail.showRecentProduct)
                                        RecentProducts(excludeProduct: product),
                                      const SizedBox(height: 50),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (Services().widget.enableShoppingCart(
                                product.copyWith(isRestricted: false)) &&
                            kAdvanceConfig.showBottomCornerCart)
                          Align(
                            alignment: Tools.isRTL(context)
                                ? Alignment.bottomLeft
                                : Alignment.bottomRight,
                            child: ExpandingBottomSheet(
                              hideController: _hideController,
                              onInitController: _onInitController,
                            ),
                          ),
                      ],
                    ),
                  ),
                  if (kProductDetail.fixedBuyButtonToBottom &&
                      _isVisibleBuyButton)
                    Container(
                      color: Theme.of(context).colorScheme.surface,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: SafeArea(
                        top: false,
                        child: BuyButtonWidget(product: product),
                      ),
                    )
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  void _onInitController(AnimationController controller) {
    controller.addStatusListener((status) {
      if (status == AnimationStatus.forward) {
        setState(() {
          _isVisibleBuyButton = false;
        });
      } else if (status == AnimationStatus.reverse) {
        setState(() {
          _isVisibleBuyButton = true;
        });
      }
    });
  }
}
