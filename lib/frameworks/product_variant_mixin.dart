import 'dart:async';

import 'package:collection/collection.dart' show IterableExtension;
import 'package:flutter/material.dart';
import 'package:inspireui/widgets/disable_widget.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../common/config.dart';
import '../common/constants.dart';
import '../common/tools/flash.dart';
import '../common/tools/tools.dart';
import '../generated/l10n.dart';
import '../models/cart/cart_item_meta_data.dart';
import '../models/index.dart'
    show CartModel, Product, ProductModel, ProductVariation;
import '../modules/analytics/analytics.dart';
import '../modules/dynamic_layout/helper/helper.dart';
import '../routes/flux_navigate.dart';
import '../screens/cart/cart_screen.dart';
import '../screens/detail/widgets/index.dart' show ProductShortDescription;
import '../services/services.dart';
import '../widgets/common/webview.dart';
import '../widgets/product/quantity_selection/quantity_selection.dart';
import 'frameworks.dart';

mixin ProductVariantMixin on BaseFrameworks {
  ProductVariation? updateVariation(
    List<ProductVariation> variations,
    Map<String?, String?> mapAttribute,
  ) {
    final templateVariation = variations.isNotEmpty
        ? variations.firstWhereOrNull(
              (element) {
                if (element.attributes.length == mapAttribute.length) {
                  return true;
                }
                return false;
              },
            )?.attributes ??
            variations.first.attributes
        : null;
    final listAttributes = variations.map((e) => e.attributes).toList();

    ProductVariation productVariation;
    var attributeString = '';

    /// Flat attribute
    /// Example attribute = { "color": "RED", "SIZE" : "S", "Height": "Short" }
    /// => "colorRedsizeSHeightShort"
    templateVariation?.forEach((element) {
      final key = element.keyAtrr;
      final value = mapAttribute[key];
      attributeString += value != null ? '$key$value' : '';
    });

    /// Because there are some cases where the names of the variants
    /// are the same, when selecting these variants, the logic will
    /// incorrectly identify the object to be searched for.
    /// Therefore, it is necessary to handle the case of completely
    /// identical names first. If in this case, a suitable
    /// variant cannot be found, it will search by contains.
    var validAttribute = listAttributes.lastWhereOrNull(
      (attributes) {
        final valueCheck = attributes.map((e) => e.toStringCompare()).join();

        return attributeString == valueCheck;
      },
    );

    /// If the above case does not find a suitable variation,
    /// it will switch to searching by contains.
    /// This logic supports the case of setting any attribute on the server.
    /// Find attributeS contain attribute selected
    validAttribute ??= listAttributes.lastWhereOrNull(
      (attributes) {
        final valueCheck = attributes.map((e) => e.toStringCompare()).join();

        return attributeString.contains(valueCheck);
      },
    );

    if (validAttribute == null) return null;

    /// Find ProductVariation contain attribute selected
    /// Compare address because use reference
    productVariation =
        variations.lastWhere((element) => element.attributes == validAttribute);

    for (var element in productVariation.attributes) {
      if (!mapAttribute.containsKey(element.keyAtrr)) {
        mapAttribute[element.keyAtrr] = element.option!;
      }
    }
    return productVariation;
  }

  bool isPurchased(
    ProductVariation? productVariation,
    Product product,
    Map<String?, String?>? mapAttribute,
    bool isAvailable,
  ) {
    final inStock = product.checkProductVariationInStock(productVariation);
    final allowBackorder = productVariation != null
        ? (productVariation.backordersAllowed ?? false)
        : product.backordersAllowed;

    var isValidAttribute = false;
    if (!product.isVariableProduct) {
      isValidAttribute = true;
    } else if ((mapAttribute?.isEmpty ?? true) ||
        product.attributes?.length == mapAttribute?.length) {
      isValidAttribute = true;
    }

    return (inStock || allowBackorder) && isValidAttribute && isAvailable;
  }

  List<Widget> makeProductTitleWidget(BuildContext context,
      ProductVariation? productVariation, Product product, bool isAvailable) {
    final listWidget = <Widget>[];
    final inStock = product.checkProductVariationInStock(productVariation);

    var stockQuantity = '';
    if (kProductDetail.showStockQuantity) {
      if (product.stockQuantity != null) {
        stockQuantity = '  (${product.stockQuantity}) ';
      }
      final selectedVariation = context.read<ProductModel>().selectedVariation;
      if (selectedVariation != null) {
        stockQuantity = selectedVariation.stockQuantity != null
            ? '  (${selectedVariation.stockQuantity}) '
            : '';
      }
    }

    if (isAvailable) {
      listWidget.add(
        const SizedBox(height: 5.0),
      );

      final sku = productVariation != null ? productVariation.sku : product.sku;

      listWidget.add(
        Row(
          children: <Widget>[
            if ((kProductDetail.showSku) && (sku?.isNotEmpty ?? false)) ...[
              Text(
                '${S.of(context).sku}: ',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                sku ?? '',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: inStock
                          ? Theme.of(context).primaryColor
                          : const Color(0xFFe74c3c),
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ],
        ),
      );

      listWidget.add(
        const SizedBox(height: 5.0),
      );

      listWidget.add(
        Row(
          children: <Widget>[
            if (kProductDetail.showStockStatus) ...[
              Text(
                '${S.of(context).availability}: ',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              (productVariation != null
                      ? (productVariation.backordersAllowed ?? false)
                      : product.backordersAllowed)
                  ? Text(
                      S.of(context).backOrder,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: kStockColor.backorder,
                            fontWeight: FontWeight.w600,
                          ),
                    )
                  : Text(
                      inStock
                          ? '${S.of(context).inStock}$stockQuantity'
                          : S.of(context).outOfStock,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: inStock
                                ? kStockColor.inStock
                                : kStockColor.outOfStock,
                            fontWeight: FontWeight.w600,
                          ),
                    )
            ],
          ],
        ),
      );
      if (productVariation?.description?.isNotEmpty ?? false) {
        listWidget.add(Services()
            .widget
            .renderProductDescription(context, productVariation!.description!));
      }
      if (product.shortDescription != null &&
          product.shortDescription!.isNotEmpty) {
        listWidget.add(
          ProductShortDescription(product),
        );
      }

      listWidget.add(
        const SizedBox(height: 15.0),
      );
    }

    return listWidget;
  }

  List<Widget> makeBuyButtonWidget({
    required BuildContext context,
    ProductVariation? productVariation,
    required Product product,
    Map<String?, String?>? mapAttribute,
    required int maxQuantity,
    required int quantity,
    required Function({bool buyNow, bool inStock}) addToCart,
    required Function(int quantity) onChangeQuantity,
    required bool isAvailable,
    required bool isInAppPurchaseChecking,
    bool showQuantity = true,
    Widget Function(bool Function(int) onChanged, int maxQuantity)?
        builderQuantitySelection,
  }) {
    final theme = Theme.of(context);

    final inStock = product.checkProductVariationInStock(productVariation);

    final allowBackorder = productVariation != null
        ? (productVariation.backordersAllowed ?? false)
        : product.backordersAllowed;

    final allowToBuy = inStock || allowBackorder;

    // External products always only display the buy now button
    final isExternal = product.type == 'external' ? true : false;

    final isVariationLoading = product.isVariableProduct &&
        productVariation == null &&
        mapAttribute == null;

    var backgroundColor = theme.primaryColor;

    // If [alwaysShowBuyButton] is true, the buy now button is always displayed
    // instead of buy or out of stock
    final alwaysShowBuyButton = kProductDetail.alwaysShowBuyButton;

    var text = S.of(context).unavailable;

    if (isVariationLoading) {
      text = S.of(context).loading;
    } else if (isInAppPurchaseChecking) {
      text = S.of(context).checking;
    } else if (isExternal ||
        alwaysShowBuyButton ||
        (allowToBuy && isAvailable)) {
      text = S.of(context).buyNow;
    } else if (!allowToBuy) {
      text = S.of(context).outOfStock;
    }

    final buyOrOutOfStockButton = Container(
      height: 44,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: backgroundColor,
      ),
      child: Center(
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            color: backgroundColor.getColorBasedOnBackground,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
      ),
    );

    final files = product.files ?? [];
    if ((product.isPurchased) &&
        (product.isDownloadable ?? false) &&
        files.isNotEmpty &&
        (files.first?.isNotEmpty ?? false)) {
      return [
        Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () async => await Tools.launchURL(files.first,
                    mode: LaunchMode.externalApplication),
                child: Container(
                  decoration: BoxDecoration(
                    color: theme.primaryColor,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Center(
                      child: Text(
                    S.of(context).download,
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: Colors.white,
                        ),
                  )),
                ),
              ),
            ),
          ],
        ),
      ];
    }

    return [
      if (!isExternal && showQuantity) ...[
        if (builderQuantitySelection != null)
          builderQuantitySelection((p0) => onChangeQuantity(p0), maxQuantity)
        else ...[
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Text(
                  '${S.of(context).selectTheQuantity}:',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              Expanded(
                child: Container(
                  height: 25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: QuantitySelection(
                    height: 25,
                    expanded: true,
                    value: quantity,
                    color: theme.colorScheme.secondary,
                    limitSelectQuantity: maxQuantity,
                    style: QuantitySelectionStyle.style01,
                    onChanged: (p0) {
                      final result = onChangeQuantity(p0);
                      return result ?? true;
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ],
      const SizedBox(height: 10),

      /// Action Buttons: Buy Now and/or Add To Cart
      actionButton(
        isAvailable,
        addToCart,
        allowToBuy,
        buyOrOutOfStockButton,
        isExternal,
        isVariationLoading,
        isInAppPurchaseChecking,
        context,
        alwaysShowBuyButton: alwaysShowBuyButton,
      )
    ];
  }

  /// Add to Cart & Buy Now function
  @override
  void addToCart(
      BuildContext context, Product product, int quantity, AddToCartArgs? args,
      [bool buyNow = false, bool inStock = false, bool inBackground = false]) {
    final cartModel = Provider.of<CartModel>(context, listen: false);
    if (product.type == 'external') {
      openExternal(context, product);
      return;
    }

    // Out of stock
    if (!inStock) {
      FlashHelper.errorMessage(context,
          message: S.of(context).productOutOfStock);
      return;
    }

    // Variable product but not select all variants.
    if (product.isVariableProduct &&
        product.attributes?.length != args?.mapAttribute?.length) {
      FlashHelper.errorMessage(context,
          message: S.of(context).pleaseSelectAllAttributes);
      return;
    }

    final mapAttr = <String, String>{};
    for (var entry in (args?.mapAttribute ?? {}).entries) {
      final key = entry.key;
      final value = entry.value;
      if (key != null && value != null) {
        mapAttr[key] = value;
      }
    }

    var productVariation =
        Provider.of<ProductModel>(context, listen: false).selectedVariation;
    var message = cartModel.addProductToCart(
        context: context,
        product: product,
        quantity: quantity,
        cartItemMetaData: CartItemMetaData(
          variation: productVariation,
          options: mapAttr,
          selectedComponents: args?.selectedComponents,
          selectedTiredPrice: args?.selectedTiredPrice,
          tiredPrices: args?.tiredPrices,
          pwGiftCardInfo: args?.pwGiftCardInfo,
        ));

    if (message.isNotEmpty) {
      FlashHelper.errorMessage(context, message: message);
    } else {
      Analytics.triggerAddToCart(product, quantity, context);
      if (buyNow) {
        FluxNavigate.pushNamed(
          RouteList.cart,
          context: context,
          arguments: CartScreenArgument(isModal: true, isBuyNow: true),
        );
      }
      FlashHelper.message(
        context,
        message: product.name != null
            ? S.of(context).productAddToCart(product.name!)
            : S.of(context).addToCartSuccessfully,
        messageStyle: const TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      );
    }
  }

  /// Support Affiliate product
  @override
  Future<void> openExternal(BuildContext context, Product product) async {
    final url = Tools.prepareURL(product.affiliateUrl);

    if (url != null) {
      try {
        if (kIsWeb ||
            Layout.isDisplayDesktop(context) ||
            Tools.needToOpenExternalApp(url)) {
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
}

Widget actionButton(
  bool isAvailable,
  Function({bool buyNow, bool inStock}) addToCart,
  bool allowToBuy, // inStock || allowBackorder
  Widget buyOrOutOfStockButton,
  bool isExternal,
  bool isVariationLoading,
  bool isInAppPurchaseChecking,
  BuildContext context, {
  required bool alwaysShowBuyButton,
}) {
  // Only show grey color filter when cannot buy or add to cart, dont disable
  // the button because it must to show an error message to user via [addToCart]
  // function
  return DisableWidget(
    showColorFilter: !isAvailable,
    disable: isInAppPurchaseChecking,
    child: Row(
      children: <Widget>[
        Expanded(
          child: GestureDetector(
            // In the old UX ([alwaysShowBuyButton] is false) and the product is
            // not available, the buy now button (Out of Stock or Unavailable
            // buttons) cannot be clicked
            //
            // External product always can be clicked
            onTap: (alwaysShowBuyButton || isExternal || isAvailable)
                ? () => addToCart(buyNow: true, inStock: allowToBuy)
                : null,
            child: buyOrOutOfStockButton,
          ),
        ),

        // Hide add to cart button if it is external or variation is loading
        if (!isExternal && !isVariationLoading)
          // Always show add to cart button if [alwaysShowBuyButton] is true
          if (alwaysShowBuyButton || (isAvailable && allowToBuy)) ...[
            const SizedBox(width: 10),
            Expanded(
              child: GestureDetector(
                onTap: () => addToCart(buyNow: false, inStock: allowToBuy),
                child: Container(
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Theme.of(context).primaryColorLight,
                  ),
                  child: Center(
                    child: Text(
                      S.of(context).addToCart.toUpperCase(),
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]
      ],
    ),
  );
}
