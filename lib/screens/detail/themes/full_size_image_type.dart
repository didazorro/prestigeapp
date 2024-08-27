import 'dart:collection';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../common/config.dart';
import '../../../models/index.dart' show Product, ProductModel, UserModel;
import '../../../models/product_variant_model.dart';
import '../../../services/service_config.dart';
import '../../../services/services.dart';
import '../../chat/vendor_chat.dart';
import '../product_detail_screen.dart';
import '../widgets/index.dart';
import '../widgets/product_image_slider.dart';
import '../widgets/product_size_guide.dart';

class FullSizeLayout extends StatefulWidget {
  final Product? product;
  final bool isProductInfoLoading;

  const FullSizeLayout({this.product, required this.isProductInfoLoading});

  @override
  State<FullSizeLayout> createState() => _FullSizeLayoutState();
}

class _FullSizeLayoutState extends State<FullSizeLayout>
    with SingleTickerProviderStateMixin {
  Map<String, String> mapAttribute = HashMap();

  Widget _getLowerLayer({width, height}) {
    final heightVal = height ?? MediaQuery.of(context).size.height;
    final widthVal = width ?? MediaQuery.of(context).size.width;
    var hasProductInfo = widget.product != null;

    return ProductImageSlider(
      product: widget.product!,
      customBuilder: (BuildContext context, Widget pageView,
          PageController pageController, List<String> items, bool hasVideo) {
        return Material(
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                child: SizedBox(
                  width: widthVal,
                  height: heightVal,
                  child: pageView,
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black45,
                        Colors.transparent,
                      ],
                    ),
                  ),
                  child: SafeArea(
                    child: SmoothPageIndicator(
                      controller: pageController,
                      count: items.length,
                      effect: const ScrollingDotsEffect(
                        dotWidth: 5.0,
                        dotHeight: 5.0,
                        spacing: 15.0,
                        fixedCenter: true,
                        dotColor: Colors.black45,
                        activeDotColor: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 40,
                left: 20,
                child: CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.2),
                  child: IconButton(
                    icon: const Icon(
                      Icons.close,
                      size: 18,
                    ),
                    onPressed: () {
                      context.read<ProductModel>().clearProductVariations();
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Positioned(
                top: 30,
                right: 10,
                child: IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () => ProductDetailScreen.showMenu(
                      context, widget.product,
                      isLoading: !hasProductInfo),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _getUpperLayer({width, height}) {
    final sizeVal = MediaQuery.sizeOf(context);
    final heightVal = height ?? sizeVal.height;
    final widthVal = width ?? sizeVal.width;
    const maxHeightTitleWidget = 200.0;
    return Material(
      color: Colors.transparent,
      child: LimitedBox(
        maxWidth: widthVal * 0.85,
        maxHeight: heightVal * 0.55,
        child: Padding(
          padding: EdgeInsets.only(left: widthVal * 0.2),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(24)),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                decoration: BoxDecoration(
                    color:
                        Theme.of(context).colorScheme.surface.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(10.0)),
                child: ChangeNotifierProvider(
                  create: (_) => ProductModel(),
                  child: LayoutBuilder(builder: (context, constraints) {
                    double? heightTitle;
                    if (constraints.maxHeight < maxHeightTitleWidget) {
                      heightTitle = constraints.maxHeight;
                    }

                    return Consumer<ProductVariantModel>(
                        builder: (context, model, child) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          if (!(widget.product?.isGroupedProduct ?? false))
                            Container(
                              height: heightTitle,
                              padding: const EdgeInsets.only(bottom: 5),
                              child: SingleChildScrollView(
                                physics: const NeverScrollableScrollPhysics(),
                                child: ProductTitle(widget.product),
                              ),
                            ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (Services().widget.enableShoppingCart(
                                      widget.product
                                          ?.copyWith(isRestricted: false)))
                                    ProductCommonInfo(
                                      product: widget.product,
                                      isProductInfoLoading:
                                          widget.isProductInfoLoading,
                                      wrapSliver: false,
                                    ),
                                  Services()
                                      .widget
                                      .renderVendorInfo(widget.product),
                                  Services().renderTiredPriceTable(
                                      widget.product ?? Product()),
                                  Services().renderCustomInformationTable(
                                      widget.product ?? Product()),
                                  ProductBrand(product: widget.product),
                                  ProductDescription(widget.product),
                                  if (widget.isProductInfoLoading == false)
                                    ProductSizeGuide(widget.product),
                                  if (kProductDetail.showProductCategories)
                                    ProductDetailCategories(widget.product),
                                  if (kProductDetail.showProductTags)
                                    ProductTag(widget.product),
                                  if (widget.isProductInfoLoading == false)
                                    Services()
                                        .widget
                                        .productReviewWidget(widget.product!),
                                  if (kProductDetail
                                          .showRelatedProductFromSameStore &&
                                      widget.product?.store?.id != null)
                                    RelatedProductFromSameStore(
                                      widget.product,
                                      padding: EdgeInsets.zero,
                                    ),
                                  if (kProductDetail.showRelatedProduct)
                                    RelatedProduct(
                                      widget.product,
                                      padding: EdgeInsets.zero,
                                    ),
                                  if (kProductDetail.showRecentProduct)
                                    RecentProducts(
                                      excludeProduct: widget.product,
                                      background: Colors.transparent,
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    });
                  }),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final userModel = Provider.of<UserModel>(context, listen: false);

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          floatingActionButton:
              (!ServerConfig().isVendorType() || !kConfigChat.enableVendorChat)
                  ? null
                  : VendorChat(
                      user: userModel.user,
                      store: widget.product?.store,
                      product: widget.product,
                    ),
          body: Stack(
            children: [
              _getLowerLayer(
                width: constraints.maxWidth,
                height: constraints.maxHeight,
              ),
              SizedBox.expand(
                child: DraggableScrollableSheet(
                  initialChildSize: 0.3,
                  minChildSize: 0.2,
                  maxChildSize: 0.9,
                  builder: (BuildContext context,
                          ScrollController scrollController) =>
                      SingleChildScrollView(
                    controller: scrollController,
                    child: _getUpperLayer(
                      width: constraints.maxWidth,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
