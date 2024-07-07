import '../entities/b2bking/tired_price.dart';
import '../entities/product_addons.dart';
import '../entities/product_component.dart';
import '../entities/product_variation.dart';
import '../entities/pw_gift_card_info.dart';

class CartItemMetaData {
  const CartItemMetaData({
    this.addonsOptions,
    this.variation,
    this.options,
    this.selectedComponents,
    this.selectedTiredPrice,
    this.tiredPrices,
    this.pwGiftCardInfo,
  });

  final List<AddonsOption>? addonsOptions;
  final ProductVariation? variation;
  final Map? options;
  final Map<String, SelectedProductComponent>? selectedComponents;
  final B2BKingTiredPrice? selectedTiredPrice;
  final List<B2BKingTiredPrice>?
      tiredPrices; //save tiredPrices to update selectedTiredPrice when change quantity cart item
  final PWGiftCardInfo? pwGiftCardInfo;

  CartItemMetaData copyWith({
    List<AddonsOption>? addonsOptions,
    ProductVariation? variation,
    Map? options,
    Map<String, SelectedProductComponent>? selectedComponents,
    B2BKingTiredPrice? selectedTiredPrice,
    List<B2BKingTiredPrice>? tiredPrices,
    PWGiftCardInfo? pwGiftCardInfo,
  }) {
    return CartItemMetaData(
      addonsOptions: addonsOptions ?? this.addonsOptions,
      variation: variation ?? this.variation,
      options: options ?? this.options,
      selectedComponents: selectedComponents ?? this.selectedComponents,
      selectedTiredPrice: selectedTiredPrice ?? this.selectedTiredPrice,
      tiredPrices: tiredPrices ?? this.tiredPrices,
      pwGiftCardInfo: pwGiftCardInfo ?? this.pwGiftCardInfo,
    );
  }

  CartItemMetaData removeSelectedTiredPrice() {
    return CartItemMetaData(
      addonsOptions: addonsOptions,
      variation: variation,
      options: options,
      selectedComponents: selectedComponents,
      tiredPrices: tiredPrices,
      pwGiftCardInfo: pwGiftCardInfo,
    );
  }

  factory CartItemMetaData.fromLocalJson(Map json) {
    return CartItemMetaData(
      variation: json['variation'] != 'null' && json['variation'] != null
          ? ProductVariation.fromLocalJson(json['variation'])
          : null,
      options: json['options'] ?? <String, dynamic>{},
      selectedTiredPrice: json['selectedTiredPrice'] != null
          ? B2BKingTiredPrice.fromJson(json['selectedTiredPrice'])
          : null,
      selectedComponents: json['selectedComponents'] != null
          ? Map.from(json['selectedComponents']).map((key, value) =>
              MapEntry(key, SelectedProductComponent.fromLocalJson(value)))
          : null,
      tiredPrices: json['tiredPrices'] != null &&
              List.from(json['tiredPrices']).isNotEmpty
          ? List.from(json['tiredPrices'])
              .map((e) => B2BKingTiredPrice.fromJson(e))
              .toList()
          : null,
      pwGiftCardInfo: json['pwGiftCardInfo'] is Map
          ? PWGiftCardInfo.fromJson(json['pwGiftCardInfo'])
          : null,
    );
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['variation'] = variation?.toJson();
    data['options'] = options;
    data['selectedComponents'] = selectedComponents?.map(
        (String key, SelectedProductComponent value) =>
            MapEntry(key, value.toJson()));
    data['selectedTiredPrice'] = selectedTiredPrice?.toJson();
    data['tiredPrices'] = tiredPrices?.map((e) => e.toJson()).toList();
    data['pwGiftCardInfo'] = pwGiftCardInfo?.toJson();
    return data;
  }
}
