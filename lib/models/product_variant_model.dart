import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import 'entities/b2bking/tired_price.dart';
import 'entities/product.dart';
import 'entities/product_addons.dart';
import 'entities/product_component.dart';
import 'entities/product_variation.dart';
import 'entities/pw_gift_card_info.dart';

class ProductVariantModel extends ChangeNotifier {
  Product? product;
  ProductVariation? productVariation;
  Map<String, Map<String, AddonsOption>> selectedOptions = {};
  List<AddonsOption> addonsOptions = [];
  int quantity = 1;
  bool isInAppPurchaseChecking = false;
  Map<String?, String?>? mapAttribute;
  Map<String, SelectedProductComponent>? selectedComponents;
  B2BKingTiredPrice? selectedTiredPrice;
  List<B2BKingTiredPrice>? tiredPrices;
  PWGiftCardInfo? pwGiftCardInfo;

  void initWithProduct(Product p) {
    product = p;
    quantity = product?.minQuantity ?? quantity;
  }

  void updateValues({
    ProductVariation? productVariation,
    Map<String, Map<String, AddonsOption>>? selectedOptions,
    List<AddonsOption>? addonsOptions,
    int? quantity,
    bool? isInAppPurchaseChecking,
    Map<String?, String?>? mapAttribute,
    Map<String, SelectedProductComponent>? selectedComponents,
    B2BKingTiredPrice? selectedTiredPrice,
    List<B2BKingTiredPrice>? tiredPrices,
    PWGiftCardInfo? pwGiftCardInfo,
  }) {
    this.tiredPrices = tiredPrices ?? this.tiredPrices;

    this.productVariation = productVariation ?? this.productVariation;

    this.selectedOptions = selectedOptions ?? this.selectedOptions;

    this.quantity = selectedTiredPrice?.quantity ?? this.quantity;
    this.selectedTiredPrice = selectedTiredPrice ?? this.selectedTiredPrice;

    this.selectedComponents = selectedComponents ?? this.selectedComponents;
    if (this.selectedOptions.values.isNotEmpty) {
      final options = <AddonsOption>[];
      for (var addOns in this.selectedOptions.values) {
        options.addAll(addOns.values);
      }
      product?.selectedOptions = options;
    }

    this.addonsOptions = addonsOptions ?? this.addonsOptions;
    this.quantity = quantity ?? this.quantity;
    this.isInAppPurchaseChecking =
        isInAppPurchaseChecking ?? this.isInAppPurchaseChecking;
    this.mapAttribute = mapAttribute ?? this.mapAttribute;

    //update the correct selectedTiredPrice when change quantity
    if (quantity != null && (this.tiredPrices?.isNotEmpty ?? false)) {
      this.selectedTiredPrice = this
          .tiredPrices
          ?.reversed
          .firstWhereOrNull((e) => (e.quantity ?? 0) <= quantity);
    }
    if (pwGiftCardInfo != null) {
      this.pwGiftCardInfo = pwGiftCardInfo;
    }
    notifyListeners();
  }
}
