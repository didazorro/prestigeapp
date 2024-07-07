import 'package:flutter/material.dart';

import '../../common/config.dart';
import '../../generated/l10n.dart';
import '../../modules/dynamic_layout/helper/helper.dart';
import '../entities/product.dart';
import '../entities/product_variation.dart';
import 'cart_base.dart';
import 'cart_item_meta_data.dart';
import 'mixin/index.dart';

class CartModelPresta
    with
        ChangeNotifier,
        CartMixin,
        MagentoMixin,
        AddressMixin,
        LocalMixin,
        CurrencyMixin,
        CouponMixin,
        ShopifyMixin,
        VendorMixin,
        OrderDeliveryMixin
    implements CartModel {
  static final CartModelPresta _instance = CartModelPresta._internal();

  factory CartModelPresta() => _instance;

  CartModelPresta._internal();
  @override
  Future<void> initData() async {
    resetValues();
    getCartInLocal();
    await getAddress();
    getCurrency();
  }

  @override
  double? getTotal() {
    var subtotal = getSubTotal() ?? 1;
    var amount = couponObj?.amount;
    if (amount != null) {
      if (couponObj?.discountType == 'percent') {
        subtotal -= subtotal * amount / 100;
      } else {
        subtotal -= amount;
      }
    }

    if (subtotal < 0.0) {
      subtotal = 0.0;
    }

    if (kPaymentConfig.enableShipping) {
      subtotal += getShippingCost()!;
    }
    return subtotal;
  }

  @override
  double getItemTotal(
      {ProductVariation? productVariation,
      Product? product,
      int quantity = 1}) {
    var subtotal = 0.0;
    if (productVariation != null) {
      subtotal = double.parse(productVariation.price!) * quantity;
    } else {
      subtotal = double.parse(product!.price!) * quantity;
    }
    return subtotal;
  }

  @override
  String updateQuantity(Product product, String key, int quantity, {context}) {
    var total = quantity;
    ProductVariation? variation;

    if (key.contains('-')) {
      variation = getProductVariationById(key);
    }
    var message =
        validateQuantity(product: product, total: total, variation: variation);
    if (message.isNotEmpty) {
      return message;
    }
    productsInCart[key] = total;
    updateQuantityCartLocal(key: key, quantity: quantity);
    notifyListeners();
    return message;
  }

  @override
  // Removes an item from the cart.
  void removeItemFromCart(String key) {
    if (productsInCart.containsKey(key)) {
      productsInCart.remove(key);
      cartItemMetaDataInCart.remove(key);
      removeProductLocal(key);
    }
    notifyListeners();
  }

  @override
  // Removes everything from the cart.
  void clearCart() {
    clearCartLocal();
    productsInCart.clear();
    item.clear();
    cartItemMetaDataInCart.clear();
    shippingMethod = null;
    paymentMethod = null;
    resetCoupon();
    notes = null;
    notifyListeners();
  }

  @override
  void setOrderNotes(String note) {
    notes = note;
    notifyListeners();
  }

  String validateQuantity({
    ProductVariation? variation,
    required Product product,
    required int total,
  }) {
    var stockQuantity = product.stockQuantity ?? 0;
    if (variation != null) {
      stockQuantity = variation.stockQuantity ?? 0;
    }
    var maxAllowQuantity = Helper.formatInt(kCartDetail['maxAllowQuantity']);
    var maxQuantity = product.maxQuantity;
    final useMaxAllowQuantity = maxAllowQuantity != null &&
        maxQuantity != null &&
        maxQuantity > maxAllowQuantity;

    if (maxQuantity == null || useMaxAllowQuantity) {
      maxQuantity = maxAllowQuantity;
    }

    if (total <= stockQuantity) {
      final minQuantity = product.minQuantity;
      if (minQuantity != null || maxQuantity != null) {
        if (minQuantity != null && minQuantity > total) {
          return '${S.current.minimumQuantityIs} ${product.minQuantity}';
        }
        if (maxQuantity != null && maxQuantity < total) {
          return '${S.current.youCanOnlyPurchase} $maxQuantity ${S.current.forThisProduct}';
        }
      }
    } else {
      return '${S.current.currentlyWeOnlyHave} $stockQuantity ${S.current.ofThisProduct}';
    }
    return '';
  }

  @override
  String addProductToCart({
    context,
    Product? product,
    int quantity = 1,
    Function? notify,
    isSaveLocal = true,
    CartItemMetaData? cartItemMetaData,
  }) {
    if (product == null) {
      return S.of(context).loading;
    }

    if (product.isVariableProduct) {
      /// Loading attributes & variants.
      if (cartItemMetaData?.variation == null &&
          (cartItemMetaData?.options?.isEmpty ?? true)) {
        return S.of(context).loading;
      }

      /// Not selected all attributes.
      if (cartItemMetaData?.options!.values.contains(null) ?? true) {
        return S.of(context).pleaseSelectAllAttributes;
      }
    }

    var key = product.id.toString();
    if (cartItemMetaData?.variation != null) {
      if (cartItemMetaData?.variation?.id != null) {
        key += '-${cartItemMetaData?.variation?.id}';
      }
      for (var attribute in cartItemMetaData!.variation!.attributes) {
        if (attribute.id == null) {
          key += '-${attribute.name!}${attribute.option!}';
        }
      }
    }

    var total = quantity;
    if (productsInCart.containsKey(key)) {
      total += productsInCart[key] ?? 0;
    }
    var message = validateQuantity(
        product: product, total: total, variation: cartItemMetaData?.variation);
    if (message.isNotEmpty) {
      return message;
    }
    productsInCart[key] = total;
    item[product.id] = product;
    cartItemMetaDataInCart[key] = cartItemMetaData;
    if (isSaveLocal) {
      saveCartToLocal(key,
          product: product,
          quantity: quantity,
          cartItemMetaData: cartItemMetaData);
    }
    notifyListeners();
    return message;
  }

  @override
  void setRewardTotal(double total) {
    rewardTotal = total;
    notifyListeners();
  }

  @override
  void updateProduct(String productId, Product? product) {
    super.updateProduct(productId, product);
    notifyListeners();
  }

  @override
  void updateProductVariant(
      String productId, ProductVariation? productVariant) {
    super.updateProductVariant(productId, productVariant);
    notifyListeners();
  }

  @override
  void updateStateCheckoutButton() {
    super.updateStateCheckoutButton();
    notifyListeners();
  }

  @override
  double getCouponCost() {
    if (discountAmount > 0) {
      return discountAmount;
    } else {
      var subtotal = getSubTotal() ?? 0.0;
      var amount = couponObj?.amount;
      if (amount != null) {
        if (couponObj?.discountType == 'percent') {
          return subtotal * amount / 100;
        } else {
          return amount;
        }
      } else {
        return 0.0;
      }
    }
  }
}
