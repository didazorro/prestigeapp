import 'package:flutter/material.dart';
import 'package:inspireui/utils/logs.dart';
import 'package:provider/provider.dart';

import '../../../common/config.dart';
import '../../../common/tools/flash.dart';
import '../../../common/tools/tools.dart';
import '../../../generated/l10n.dart' show S;
import '../../../models/entities/product_component.dart';
import '../../../models/index.dart'
    show
        AppModel,
        PWGiftCardInfo,
        Product,
        ProductAttribute,
        ProductModel,
        ProductVariation;
import '../../../models/product_variant_model.dart';
import '../../../modules/dynamic_layout/helper/helper.dart';
import '../../../services/index.dart';
import '../../../widgets/common/webview.dart';
import '../../../widgets/product/quantity_selection/quantity_selection.dart';
import 'buy_button_widget.dart';

class ProductVariant extends StatefulWidget {
  final Product? product;
  final Function? onSelectVariantImage;
  final int defaultQuantity;
  final bool isModal;
  final bool showBuyButton;
  final bool isProductInfoLoading;

  const ProductVariant(
    this.product, {
    this.onSelectVariantImage,
    this.defaultQuantity = 1,
    this.isModal = false,
    this.showBuyButton = true,
    required this.isProductInfoLoading,
  });

  @override
  // ignore: no_logic_in_create_state
  State<ProductVariant> createState() => _StateProductVariant(product!);
}

class _StateProductVariant extends State<ProductVariant> {
  Product product;

  ProductVariantModel get model =>
      Provider.of<ProductVariantModel>(context, listen: false);

  ProductVariation? get productVariation => model.productVariation;

  Map<String, SelectedProductComponent>? get selectedComponents =>
      model.selectedComponents;
  Map<String?, String?>? get mapAttribute => model.mapAttribute;
  int get quantity => model.quantity;
  PWGiftCardInfo? get pwGiftCardInfo => model.pwGiftCardInfo;

  _StateProductVariant(this.product);

  final services = Services();

  List<ProductVariation>? get variations =>
      context.select((ProductModel productModel) => productModel.variations);

  /// Get product variants
  Future<void> getProductVariations(Product? p) async {
    await services.widget.getProductVariations(
        context: context,
        product: p,
        onLoad: ({
          Product? productInfo,
          List<ProductVariation>? variations,
          Map<String?, String?>? mapAttribute,
          ProductVariation? variation,
        }) {
          if (productInfo != null) {
            product = productInfo;
            model.initWithProduct(productInfo);
          }
          model.updateValues(mapAttribute: mapAttribute ?? {});
          if (variations != null) {
            context.read<ProductModel>().changeProductVariations(
                  variations,
                  notify: false,
                );
            model.updateValues(productVariation: variation);
            context
                .read<ProductModel>()
                .changeSelectedVariation(productVariation);
          }
          if (!mounted) {
            return;
          }
          setState(() {});
        });
  }

  @override
  void initState() {
    super.initState();
    product = widget.product as Product;
    WidgetsBinding.instance.endOfFrame.then(
      (_) {
        if (mounted) {
          model.updateValues(quantity: widget.defaultQuantity);
          getProductVariations(widget.product);
        }
      },
    );
  }

  @override
  void didUpdateWidget(covariant ProductVariant oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!widget.isProductInfoLoading && oldWidget.isProductInfoLoading) {
      WidgetsBinding.instance.endOfFrame.then(
        (_) {
          if (mounted) {
            getProductVariations(widget.product);
          }
        },
      );
    }
  }

  @override
  void dispose() {
    FlashHelper.dispose();
    Services().iapDispose();
    super.dispose();
  }

  /// Support Affiliate product
  Future<void> openExternal() async {
    final url = Tools.prepareURL(product.affiliateUrl);
    if (url != null) {
      try {
        if (Tools.needToOpenExternalApp(url)) {
          await Tools.launchURL(url);
        } else {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebView(
                url: product.affiliateUrl,
                title: product.name,
              ),
            ),
          );
        }
        return;
      } catch (e) {
        printError(e);
      }
    }
    await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.surface,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios),
          ),
        ),
        body: Center(
          child: Text(S.of(context).notFound),
        ),
      );
    }));
  }

  void onSelectProductVariant({
    ProductAttribute? attr,
    String? val,
    List<ProductVariation>? variations,
    Map<String?, String?>? mapAttribute,
    Function? onFinish,
  }) {
    services.widget.onSelectProductVariant(
      attr: attr!,
      val: val,
      variations: variations!,
      mapAttribute: mapAttribute!,
      onFinish:
          (Map<String?, String?> mapAttribute, ProductVariation? variation) {
        model.updateValues(
            mapAttribute: mapAttribute,
            productVariation: variation,
            quantity: 1);
        context.read<ProductModel>().changeSelectedVariation(variation);

        /// Show selected product variation image in gallery.
        final attrType = kProductVariantLayout[attr.cleanSlug ?? attr.name] ??
            kProductVariantLayout[attr.name!.toLowerCase()] ??
            'box';
        if (widget.onSelectVariantImage != null && attrType == 'image') {
          for (var option in attr.options!) {
            if (option['name'] == val &&
                option['description'].toString().contains('http')) {
              final selectedImageUrl = option['description'];
              widget.onSelectVariantImage!(selectedImageUrl);
            }
          }
        }
      },
    );
  }

  void onSelectProductComponent(
      Map<String, SelectedProductComponent>? selectedComponents) {
    model.updateValues(selectedComponents: selectedComponents);
  }

  List<Widget> getProductAttributeWidget() {
    final lang = Provider.of<AppModel>(context, listen: false).langCode;
    if (mapAttribute == null && ServerConfig().type != ConfigType.opencart) {
      return [];
    }
    return services.widget.getProductAttributeWidget(
        lang, product, mapAttribute, onSelectProductVariant, variations!);
  }

  Widget getProductAddonsWidget() {
    return services.widget.getProductAddonsWidget(
      product: product,
      isProductInfoLoading: widget.isProductInfoLoading,
    );
  }

  List<Widget> getProductComponentsWidget() {
    final lang = Provider.of<AppModel>(context, listen: false).langCode;
    return services.widget.getProductComponentsWidget(
        context: context,
        selectedComponents: selectedComponents,
        lang: lang,
        product: product,
        onChanged: onSelectProductComponent,
        isProductInfoLoading: widget.isProductInfoLoading);
  }

  Widget getProductPWGiftCardInfoWidget() {
    return services.widget.getProductPWGiftCardInfoWidget(
      value: pwGiftCardInfo,
      onChanged: (value) {
        var quantity = value.to.split(',').length;
        model.updateValues(pwGiftCardInfo: value, quantity: quantity);
      },
    );
  }

  List<Widget> getProductTitleWidget() {
    return services.widget
        .getProductTitleWidget(context, productVariation, product);
  }

  @override
  Widget build(BuildContext context) {
    FlashHelper.init(context);
    final isVariationLoading = widget.isProductInfoLoading == true &&
        ServerConfig().type != ConfigType.opencart &&
        ServerConfig().type != ConfigType.notion &&
        (product.isVariableProduct &&
            (product.variationProducts?.isEmpty ?? true));
    var layoutType = Provider.of<AppModel>(context).productDetailLayout;
    final showBuyButton = widget.showBuyButton &&
        (!kProductDetail.fixedBuyButtonToBottom ||
            ['halfSizeImageType', 'fullSizeImageType'].contains(layoutType) ||
            widget.isModal);

    final isDesktop = Layout.isDisplayDesktop(context);

    return Column(
      children: <Widget>[
        ...getProductTitleWidget(),
        // In some case, this product is simple type, but it has attributes 🥴
        if (!isVariationLoading)
          ...getProductAttributeWidget()
        else if (product.isVariableProduct)
          kLoadingWidget(context),
        getProductAddonsWidget(),
        ...getProductComponentsWidget(),
        if (product.isPWGiftCardProduct) getProductPWGiftCardInfoWidget(),
        if (showBuyButton)
          BuyButtonWidget(
            product: product,
            showQuantity: !product.isPWGiftCardProduct,
            builderQuantitySelection: isDesktop
                ? (onChanged, int maxQuantity) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          S.of(context).quantity,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Container(
                            height: 40,
                            width: 150,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: QuantitySelection(
                              height: 40,
                              expanded: true,
                              value: quantity,
                              color: Theme.of(context).colorScheme.secondary,
                              limitSelectQuantity: maxQuantity,
                              style: QuantitySelectionStyle.style03,
                              onChanged: (p0) {
                                final result = onChanged(p0);
                                return result;
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    );
                  }
                : null,
          )
      ],
    );
  }
}
