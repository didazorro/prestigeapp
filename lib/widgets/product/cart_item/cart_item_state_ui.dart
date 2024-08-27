import 'package:flutter/material.dart';

import '../../../models/cart/cart_item_meta_data.dart';
import '../../../models/index.dart';
import '../../../services/services.dart';

enum CartStyle {
  normal,
  style01,
  web,
  short;

  bool get isNormal => this == CartStyle.normal;
  bool get isStyle01 => this == CartStyle.style01;
  bool get isWeb => this == CartStyle.web;
  bool get isShort => this == CartStyle.short;
}

class CartItemStateUI {
  final bool? enableTopDivider;
  final bool enableBottomDivider;
  final Product product;
  final CartItemMetaData? cartItemMetaData;
  final int? quantity;

  final bool Function(int value)? onChangeQuantity;
  final VoidCallback? onRemove;
  final bool showStoreName;
  final bool enabledTextBoxQuantity;

  final String? imageFeature;
  final String? price;
  final String? priceWithQuantity;

  final bool isOnBackorder;
  final bool inStock;
  final dynamic limitQuantity;
  final void Function(BuildContext context, {required Product product})
      onTapProduct;

  CartItemStateUI({
    this.enableTopDivider,
    required this.enableBottomDivider,
    required this.product,
    this.cartItemMetaData,
    this.quantity,
    this.enabledTextBoxQuantity = true,
    this.onChangeQuantity,
    this.onRemove,
    required this.showStoreName,
    this.imageFeature,
    this.price,
    this.priceWithQuantity,
    required this.isOnBackorder,
    required this.inStock,
    this.limitQuantity,
    required this.onTapProduct,
  });
}

extension CartStyleFromStringExt on String? {
  CartStyle toCartStyle() {
    if (this?.isEmpty ?? true) {
      return CartStyle.normal;
    }

    switch (this) {
      case 'style01':
        return CartStyle.style01;
      case 'normal':
      default:
        return CartStyle.normal;
    }
  }
}

extension CartItemStateExt on CartItemStateUI {
  bool get isPWGiftCardProduct =>
      cartItemMetaData?.pwGiftCardInfo != null && product.isPWGiftCardProduct;
  bool get showQuantity => !isPWGiftCardProduct && !product.isAppointment;
  bool showPrice(BuildContext context) {
    return !Services().widget.hideProductPrice(context, product) &&
        !isPWGiftCardProduct;
  }
}
