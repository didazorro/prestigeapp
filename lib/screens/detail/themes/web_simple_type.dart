import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/config.dart';
import '../../../common/constants.dart';
import '../../../generated/l10n.dart';
import '../../../models/index.dart' show Product, ProductModel, UserModel;
import '../../../models/product_variant_model.dart';
import '../../../modules/dynamic_layout/helper/helper.dart';
import '../../../routes/flux_navigate.dart';
import '../../../services/index.dart';
import '../../../widgets/product/widgets/heart_button.dart';
import '../../../widgets/web_layout/web_layout.dart';
import '../../../widgets/web_layout/widgets/path_header_widget.dart';
import '../../chat/vendor_chat.dart';
import '../widgets/index.dart';
import '../widgets/product_image_web.dart';

class WebSimpleLayout extends StatefulWidget {
  final Product product;
  final bool isLoading;
  final ScrollController? scrollController;

  const WebSimpleLayout({
    required this.product,
    this.isLoading = false,
    this.scrollController,
  });

  @override
  State<WebSimpleLayout> createState() => _WebSimpleLayoutState();
}

class _WebSimpleLayoutState extends State<WebSimpleLayout>
    with SingleTickerProviderStateMixin {
  late final _scrollController = widget.scrollController ?? ScrollController();
  late Product product = widget.product;
  final ValueNotifier<int> _selectIndexNotifier = ValueNotifier(0);

  Map<String, String> mapAttribute = HashMap();
  late AnimationController _hideController;
  var top = 0.0;

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
  void didUpdateWidget(WebSimpleLayout oldWidget) {
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
              return Scaffold(
                resizeToAvoidBottomInset: false,
                floatingActionButton: (!ServerConfig().isVendorType() ||
                        !kConfigChat.enableVendorChat)
                    ? null
                    : VendorChat(
                        user: userModel.user,
                        store: product.store,
                        product: product,
                      ),
                backgroundColor: Theme.of(context).colorScheme.surface,
                body: SliverWebLayout(
                  scrollController: _scrollController,
                  pathHeaders: [
                    PathHeaderItem(
                      title: S.of(context).allProducts,
                      onTap: () => FluxNavigate.pushNamedAndRemoveUntil(
                        RouteList.products,
                        (route) => false,
                        context: context,
                      ),
                    ),
                    PathHeaderItem(title: widget.product.name ?? ''),
                  ],
                  slivers: <Widget>[
                    SliverToBoxAdapter(
                      child: LayoutLimitWidthScreen(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: ProductInfoWidget(
                            product: product,
                            selectIndexNotifier: _selectIndexNotifier,
                            height: height,
                            isLoading: widget.isLoading,
                          ),
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: LayoutLimitWidthScreen(
                          padding: const EdgeInsets.only(top: 20),
                          child: ProductDescription(product)),
                    ),
                    SliverToBoxAdapter(
                      child: LayoutLimitWidthScreen(
                        child: Column(
                          children: [
                            const SizedBox(height: 80),
                            const Divider(),
                            if (!Services().widget.enableShoppingCart(
                                    product.copyWith(isRestricted: false)) &&
                                product.shortDescription != null &&
                                product.shortDescription!.isNotEmpty)
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: ProductShortDescription(product),
                              ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                // horizontal: 15.0,
                                vertical: 8.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Services()
                                            .widget
                                            .renderVendorInfo(product),
                                        Align(
                                          alignment:
                                              AlignmentDirectional.centerStart,
                                          child: Text(
                                            S.of(context).reviews,
                                            style: const TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        Services().widget.productReviewWidget(
                                              product,
                                              isStyleExpansion: false,
                                              isShowEmpty: true,
                                            ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Divider(),
                            if (kProductDetail
                                    .showRelatedProductFromSameStore &&
                                product.store?.id != null)
                              RelatedProductFromSameStore(product),
                            if (kProductDetail.showRelatedProduct)
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
              );
            },
          ),
        ),
      ),
    );
  }
}

class ProductInfoWidget extends StatelessWidget {
  const ProductInfoWidget({
    super.key,
    required this.product,
    required ValueNotifier<int> selectIndexNotifier,
    required this.height,
    required this.isLoading,
  }) : _selectIndexNotifier = selectIndexNotifier;

  final Product product;
  final ValueNotifier<int> _selectIndexNotifier;
  final double height;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final screenSize = MediaQuery.of(context).size;

        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 7,
              child: Container(
                height: screenSize.height * 0.7,
                constraints: const BoxConstraints(
                  minHeight: 400,
                  maxHeight: 800,
                ),
                child: Stack(
                  children: [
                    ProductImageWeb(
                      isFlexibleSpaceBar: false,
                      product: product,
                      onChange: (index) {
                        _selectIndexNotifier.value = index;
                      },
                    ),
                    if (isLoading != true)
                      Positioned.directional(
                        end: 0,
                        textDirection: Directionality.of(context),
                        child: HeartButton(
                          product: product,
                          size: 20.0,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              flex: 5,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                      bottom: 4.0,
                      left: 15,
                      right: 15,
                    ),
                    child: product.isGroupedProduct
                        ? const SizedBox()
                        : ProductTitle(
                            product,
                            builderBuyButton: (Services()
                                    .widget
                                    .enableShoppingCart(
                                        product.copyWith(isRestricted: false)))
                                ? () => ProductCommonInfo(
                                      product: product,
                                      isProductInfoLoading: isLoading,
                                      wrapSliver: false,
                                    )
                                : null,
                          ),
                  ),
                  if (product.isGroupedProduct &&
                      Services().widget.enableShoppingCart(
                          product.copyWith(isRestricted: false)))
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: ProductCommonInfo(
                        product: product,
                        isProductInfoLoading: isLoading,
                        wrapSliver: false,
                      ),
                    )
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
