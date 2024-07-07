import 'package:flutter/material.dart';

import '../entities/product.dart';
import '../entities/product_variation.dart';
import '../entities/tax.dart';
import 'cart_item_meta_data.dart';
import 'mixin/index.dart';

abstract class CartModel
    with
        CartMixin,
        AddressMixin,
        LocalMixin,
        CouponMixin,
        CurrencyMixin,
        MagentoMixin,
        ShopifyMixin,
        VendorMixin,
        OrderDeliveryMixin,
        ChangeNotifier {
  @override
  double? getSubTotal();

  double getItemTotal(
      {ProductVariation? productVariation, Product? product, int quantity = 1});

  double? getTotal();

  String updateQuantity(Product product, String key, int quantity);

  void removeItemFromCart(String key);

  @override
  Product? getProductById(String id);

  @override
  ProductVariation? getProductVariationById(String key);

  void clearCart();

  void setOrderNotes(String note);

  void initData();

  @override
  String addProductToCart({
    context,
    Product? product,
    int quantity = 1,
    Function? notify,
    isSaveLocal = true,
    CartItemMetaData? cartItemMetaData,
  });

  void setRewardTotal(double total);

  @override
  void loadSavedCoupon();

  @override
  void setWalletAmount(double total);

  @override
  bool isWalletCart();

  @override
  bool isB2BKingCart();

  @override
  void setTaxInfo(List<Tax> taxes, double taxesTotal, bool isIncludingTax);
}
