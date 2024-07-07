import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/config.dart';
import '../../../common/constants.dart';
import '../../../frameworks/frameworks.dart';
import '../../../generated/l10n.dart';
import '../../../models/entities/index.dart';
import '../../../models/product_model.dart';
import '../../../models/product_variant_model.dart';
import '../../../services/service_config.dart';
import '../../../services/services.dart';

class BuyButtonWidget extends StatelessWidget {
  const BuyButtonWidget({
    super.key,
    this.showQuantity = true,
    this.product,
    this.builderQuantitySelection,
  });

  final bool showQuantity;
  final Product? product;
  final Widget Function(bool Function(int) onChanged, int maxQuantity)?
      builderQuantitySelection;

  @override
  Widget build(BuildContext context) {
    var model = Provider.of<ProductVariantModel>(context);
    var productVariation = model.productVariation;
    var productCurrent = product ?? model.product ?? Product();
    var mapAttribute = model.mapAttribute;
    var quantity = model.quantity;
    var variations =
        context.select((ProductModel productModel) => productModel.variations);
    var isInAppPurchaseChecking = model.isInAppPurchaseChecking;

    final disabled = Services().hideProductPrice(context, product);
    if (disabled) {
      return Column(
        children: [
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              _addToCart(context, true, true);
            },
            child: Container(
              height: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Theme.of(context).primaryColor,
              ),
              child: Center(
                child: Text(
                  S.of(context).addToQuoteRequest.toUpperCase(),
                  style: TextStyle(
                    color: Theme.of(context)
                        .primaryColor
                        .getColorBasedOnBackground,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    }
    return Column(
      children: Services().widget.getBuyButtonWidget(
            context: context,
            productVariation: productVariation,
            product: productCurrent,
            mapAttribute: mapAttribute,
            maxQuantity: _getMaxQuantity(productCurrent, productVariation),
            quantity: quantity,
            addToCart: ({bool buyNow = false, bool inStock = false}) {
              _addToCart(context, buyNow, inStock);
            },
            onChangeQuantity: (int val) {
              model.updateValues(quantity: val);
            },
            variations: variations,
            isInAppPurchaseChecking: isInAppPurchaseChecking,
            showQuantity: showQuantity,
            builderQuantitySelection: builderQuantitySelection,
          ),
    );
  }

  /// check limit select quality by maximum available stock
  int _getMaxQuantity(Product product, ProductVariation? productVariation) {
    var limitSelectQuantity = kCartDetail['maxAllowQuantity'] ?? 100;

    /// Skip check stock quantity for backorder products.
    if (product.backordersAllowed) {
      return limitSelectQuantity;
    }

    if (productVariation != null) {
      if (productVariation.stockQuantity != null &&
          kCartDetail['maxAllowQuantity'] != null) {
        limitSelectQuantity = math.min<int>(
            productVariation.stockQuantity!, kCartDetail['maxAllowQuantity']);
      }
    } else if (product.stockQuantity != null &&
        kCartDetail['maxAllowQuantity'] != null) {
      limitSelectQuantity = math.min<int>(
          product.stockQuantity!, kCartDetail['maxAllowQuantity']);
    }
    return limitSelectQuantity;
  }

  /// Add to Cart & Buy Now function
  void _addToCart(BuildContext context,
      [bool buyNow = false, bool inStock = false]) {
    var model = Provider.of<ProductVariantModel>(context, listen: false);
    var productVariation = model.productVariation;
    var product = model.product ?? Product();
    var mapAttribute = model.mapAttribute;
    var quantity = model.quantity;
    var selectedComponents = model.selectedComponents;
    var selectedTiredPrice = model.selectedTiredPrice;
    var tiredPrices = model.tiredPrices;
    var pwGiftCardInfo = model.pwGiftCardInfo;

    if (buyNow &&
        Services().widget.enableInAppPurchase &&
        !ServerConfig().isBuilder) {
      Services().doIAPPayment(
          context, product, productVariation, quantity, mapAttribute ?? {},
          (bool isLoading) {
        model.updateValues(isInAppPurchaseChecking: isLoading);
      }, () {
        Services().widget.addToCart(
            context,
            product,
            quantity,
            AddToCartArgs(
              productVariation: productVariation,
              mapAttribute: mapAttribute ?? {},
              selectedComponents: selectedComponents,
              selectedTiredPrice: selectedTiredPrice,
              tiredPrices: tiredPrices,
              pwGiftCardInfo: pwGiftCardInfo,
            ),
            buyNow,
            inStock);
      });
    } else {
      Services().widget.addToCart(
          context,
          product,
          quantity,
          AddToCartArgs(
            productVariation: productVariation,
            mapAttribute: mapAttribute ?? {},
            selectedComponents: selectedComponents,
            selectedTiredPrice: selectedTiredPrice,
            tiredPrices: tiredPrices,
            pwGiftCardInfo: pwGiftCardInfo,
          ),
          buyNow,
          inStock);
    }
  }
}
