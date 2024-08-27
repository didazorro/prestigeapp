import 'package:flutter/material.dart';

import '../../common/config.dart';
import '../../data/boxes.dart';
import '../../generated/l10n.dart';
import '../../services/index.dart';
import '../entities/index.dart' show Product, ProductVariation;
import '../entities/product_addons.dart';
import 'cart_base.dart';
import 'cart_item_meta_data.dart';
import 'mixin/index.dart';

class CartModelBigCommerce
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
  static final CartModelBigCommerce _instance =
      CartModelBigCommerce._internal();

  factory CartModelBigCommerce() => _instance;

  CartModelBigCommerce._internal();

  @override
  Future<void> initData() async {
    resetValues();
    getCartInLocal();
    await getAddress();
    getCurrency();
  }

  @override
  double getTotal() {
    var subtotal = getSubTotal() ?? 1.0;

    if (couponObj != null) {
      subtotal -= getCouponCost();
    }

    if (subtotal < 0.0) {
      subtotal = 0.0;
    }

    if (kPaymentConfig.enableShipping) {
      subtotal += getShippingCost()!;
    }

    if (taxes.isNotEmpty) {
      subtotal += taxesTotal;
    }

    subtotal -= rewardTotal;

    subtotal -= walletAmount;

    return subtotal;
  }

  @override
  double getProductPrice(id) {
    var productId = Product.cleanProductID(id);
    if (item[productId] != null) {
      if (item[productId]!.type == 'subscription') {
        final signUpFee = item[productId]!.metaData.firstWhere(
            (element) => element['key'] == '_subscription_sign_up_fee',
            orElse: () => {})['value'];
        if ((signUpFee?.isNotEmpty ?? false) && productsInCart[id] != null) {
          return double.parse(signUpFee!) * productsInCart[id]!;
        }
        return 0.0;
      }
    }

    return super.getProductPrice(id);
  }

  @override
  bool isEnabledShipping() {
    List ids = productsInCart.keys.where((id) {
      var productId = Product.cleanProductID(id);
      return item[productId]!.type == 'subscription' ||
          item[productId]!.type == 'variable-subscription';
    }).toList();
    if (ids.length == productsInCart.keys.length || isWalletCart()) {
      return false;
    }
    return super.isEnabledShipping();
  }

  @override
  double getItemTotal(
      {ProductVariation? productVariation,
      Product? product,
      int quantity = 1}) {
    var subtotal = double.parse(product!.price!) * quantity;
    if (productVariation != null) {
      subtotal = double.parse(productVariation.price!) * quantity;
    } else {
      subtotal = double.parse(product.price!) * quantity;
    }
    if (product.selectedOptions?.isNotEmpty ?? false) {
      subtotal += product.getProductOptionsPrice(quantity);
    }
    return subtotal;
  }

  @override
  String updateQuantity(Product product, String key, int quantity, {context}) {
    final isClosed =
        (product.store != null && product.store!.storeHour != null) &&
            (product.store!.storeHour!.isDisablePurchase! &&
                !product.store!.storeHour!.isOpen());
    final isOnVacation =
        (product.store != null && product.store!.vacationSettings != null) &&
            (product.store!.vacationSettings!.vacationMode &&
                !product.store!.vacationSettings!.isOpen() &&
                product.store!.vacationSettings!.disableVacationPurchase);

    if (isClosed) {
      return S.of(context).storeClosed;
    }
    if (isOnVacation) {
      return S.of(context).onVacation;
    }
    var message = '';
    var total = quantity;
    ProductVariation? variation;

    if (key.contains('-')) {
      variation = getProductVariationById(key);
    }

    var stockQuantity =
        variation == null ? product.stockQuantity : variation.stockQuantity;

    final allowBackorder = variation != null
        ? (variation.backordersAllowed ?? false)
        : product.backordersAllowed;

    if (!product.manageStock) {
      productsInCart[key] = total;
    } else if (total <= stockQuantity!) {
      if (product.minQuantity == null && product.maxQuantity == null) {
        productsInCart[key] = total;
      } else if (product.minQuantity != null && product.maxQuantity == null) {
        total < product.minQuantity!
            ? message =
                '${S.of(context).minimumQuantityIs} ${product.minQuantity}'
            : productsInCart[key] = total;
      } else if (product.minQuantity == null && product.maxQuantity != null) {
        (total > product.maxQuantity! && !allowBackorder)
            ? message =
                '${S.of(context).youCanOnlyPurchase} ${product.maxQuantity} ${S.of(context).forThisProduct}'
            : productsInCart[key] = total;
      } else if (product.minQuantity != null && product.maxQuantity != null) {
        if (total >= product.minQuantity! && total <= product.maxQuantity!) {
          productsInCart[key] = total;
        } else {
          if (total < product.minQuantity!) {
            message =
                '${S.of(context).minimumQuantityIs} ${product.minQuantity}';
          }
          if (total > product.maxQuantity! && !allowBackorder) {
            message =
                '${S.of(context).youCanOnlyPurchase} ${product.maxQuantity} ${S.of(context).forThisProduct}';
          }
        }
      }
    } else {
      message =
          '${S.of(context).currentlyWeOnlyHave} $stockQuantity ${S.of(context).ofThisProduct}';
    }
    if (message.isEmpty) {
      updateQuantityCartLocal(key: key, quantity: quantity);
      notifyListeners();
    }

    updateDiscount(onFinish: notifyListeners);

    Services().widget.syncCartToWebsite(this);

    return message;
  }

// Removes an item from the cart.
  @override
  void removeItemFromCart(String key) {
    if (productsInCart.containsKey(key)) {
      productsInCart.remove(key);
      cartItemMetaDataInCart.remove(key);

      /// In case there are multiple item with same product ID.
      /// Example: [1234+Small, 1234+Medium]
      var shouldRemove = true;
      var productId = Product.cleanProductID(key);
      for (var inCartKey in productsInCart.keys) {
        var productIdInCart = Product.cleanProductID(inCartKey);
        if (productIdInCart == productId) {
          shouldRemove = false;
          break;
        }
      }
      if (shouldRemove) {
        item.remove(productId);
      }

      removeProductLocal(key);
    }

    updateDiscount(onFinish: notifyListeners);
    notifyListeners();

    Services().widget.syncCartToWebsite(this);
  }

// Removes everything from the cart.
  @override
  void clearCart() {
    if (isWalletCart()) {
      getCurrency();
    }
    clearCartLocal();
    productsInCart.clear();
    item.clear();
    cartItemMetaDataInCart.clear();
    shippingMethod = null;
    paymentMethod = null;
    resetCoupon();
    notes = null;
    rewardTotal = 0;
    walletAmount = 0;
    taxesTotal = 0;
    isIncludingTax = false;
    taxes = [];
    notifyListeners();

    Services().widget.syncCartToWebsite(this);
  }

  @override
  void setOrderNotes(String note) {
    notes = note;
    notifyListeners();
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
    if (isWalletCart()) {
      clearCart();
    }

    if (product != null && product.store != null) {
      final isClosed = (product.store!.storeHour != null) &&
          (product.store!.storeHour!.isDisablePurchase! &&
              !product.store!.storeHour!.isOpen());
      if (isClosed) {
        return S.of(context).storeClosed;
      }

      if (product.store?.vacationSettings != null) {
        final isOnVacation = (product.store!.vacationSettings!.vacationMode &&
            !product.store!.vacationSettings!.isOpen() &&
            product.store!.vacationSettings!.disableVacationPurchase);
        if (isOnVacation) {
          return S.of(context).onVacation;
        }
      }
    }

    var message = '';

    var key = product!.id.toString();
    if (cartItemMetaData?.variation != null) {
      if (cartItemMetaData?.variation?.id != null) {
        key += '-${cartItemMetaData?.variation?.id}';
      }
      for (var option in (cartItemMetaData?.options?.keys ?? [])) {
        key += '-$option${cartItemMetaData?.options?[option]}';
      }
    } else if (product.bookingInfo != null) {
      key += '-${product.bookingInfo!.timeStart.toString()}';
    }

    final allowBackorder = cartItemMetaData?.variation != null
        ? (cartItemMetaData?.variation?.backordersAllowed ?? false)
        : product.backordersAllowed;

    if (product.stockQuantity != null) {
      if (quantity > product.stockQuantity! && !allowBackorder) {
        return '${S.of(context).youCanOnlyPurchase} ${product.maxQuantity} ${S.of(context).forThisProduct}';
      }
    }

    if (kCartDetail['maxAllowQuantity'] != null) {
      /// First time adding a product, the product will be null so the quantity should be -1 for the condition to be valid.
      if (product.stockQuantity != null) {
        if (quantity > product.stockQuantity! && !allowBackorder) {
          return '${S.of(context).youCanOnlyPurchase} ${product.maxQuantity} ${S.of(context).forThisProduct}';
        }
      } else {
        var isExceeded = ((productsInCart[key] ?? 0) + quantity) >
            kCartDetail['maxAllowQuantity'];

        if (isExceeded && !allowBackorder) {
          message =
              '${S.of(context).youCanOnlyPurchase} ${kCartDetail['maxAllowQuantity']} ${S.of(context).forThisProduct}';
          return message;
        }
      }
    }

    try {
      /// Product variations.
      if (product.isVariableProduct) {
        /// Loading attributes & variants.
        if (cartItemMetaData?.variation == null &&
            (cartItemMetaData?.options?.isEmpty ?? true)) {
          message = S.of(context).loading;
          return message;
        }

        /// Not selected all attributes.
        if ((cartItemMetaData?.options?.isNotEmpty ?? false) &&
            (cartItemMetaData?.options?.values.contains(null) ?? false)) {
          message = S.of(context).pleaseSelectAllAttributes;
          return message;
        }
      }

      if (product.selectedOptions?.isNotEmpty ?? false) {
        key += '+${product.selectedOptions!.map((e) => e.label).join('+')}';
      }

      //Check product's quantity before adding to cart
      var total = !productsInCart.containsKey(key)
          ? quantity
          : productsInCart[key]! + quantity;
      var stockQuantity = cartItemMetaData?.variation == null
          ? product.stockQuantity
          : cartItemMetaData?.variation?.stockQuantity;

      if (!product.manageStock || allowBackorder) {
        productsInCart[key] = total;
      } else if (total <= stockQuantity!) {
        if (product.minQuantity == null && product.maxQuantity == null) {
          productsInCart[key] = total;
        } else if (product.minQuantity != null && product.maxQuantity == null) {
          total < product.minQuantity!
              ? message =
                  '${S.of(context).minimumQuantityIs} ${product.minQuantity}'
              : productsInCart[key] = total;
        } else if (product.minQuantity == null && product.maxQuantity != null) {
          (total > product.maxQuantity! && !allowBackorder)
              ? message =
                  '${S.of(context).youCanOnlyPurchase} ${product.maxQuantity} ${S.of(context).forThisProduct}'
              : productsInCart[key] = total;
        } else if (product.minQuantity != null && product.maxQuantity != null) {
          if (total >= product.minQuantity! && total <= product.maxQuantity!) {
            productsInCart[key] = total;
          } else {
            if (total < product.minQuantity!) {
              message =
                  '${S.of(context).minimumQuantityIs} ${product.minQuantity}';
            }
            if (total > product.maxQuantity! && !allowBackorder) {
              message =
                  '${S.of(context).youCanOnlyPurchase} ${product.maxQuantity} ${S.of(context).forThisProduct}';
            }
          }
        }
      } else {
        message =
            '${S.of(context).currentlyWeOnlyHave} $stockQuantity ${S.of(context).ofThisProduct}';
      }

      if (message.isEmpty) {
        item[product.id] = product;
        cartItemMetaDataInCart[key] = cartItemMetaData?.copyWith(
            addonsOptions:
                product.selectedOptions?.map(AddonsOption.copy).toList());

        if (isSaveLocal) {
          saveCartToLocal(
            key,
            product: product,
            quantity: quantity,
            cartItemMetaData: cartItemMetaData,
          );
        }
      }

      updateDiscount(onFinish: notifyListeners);
      notifyListeners();
      Services().widget.syncCartToWebsite(this);
    } catch (err) {
      if (err is ArgumentError) {
        return S.of(context).pleaseSelectAllAttributes;
      }
    }
    return message;
  }

  @override
  void setRewardTotal(double total) {
    rewardTotal = total;
    notifyListeners();
  }

  double getShippingVendorCost({bool includeTax = false}) {
    var sum = 0.0;

    for (var element in selectedShippingMethods) {
      sum += element.shippingMethods[0].cost ?? 0.0;
      if (includeTax) {
        sum += element.shippingMethods[0].shippingTax ?? 0.0;
      }
    }
    return sum;
  }

  @override
  double? getShippingCost({bool includeTax = false}) {
    var isMultiVendor = ServerConfig().typeName.isMultiVendor;
    return isMultiVendor
        ? getShippingVendorCost(includeTax: includeTax)
        : super.getShippingCost(includeTax: includeTax);
  }

  @override
  void loadSavedCoupon() {
    savedCoupon = UserBox().savedCoupon;
    notifyListeners();
  }

  @override
  void setWalletAmount(double total) {
    super.setWalletAmount(total);
    notifyListeners();
  }

  bool isTopUpProduct(Product? product) {
    return product != null && product.isTopUpProduct();
  }

  @override
  bool isWalletCart() {
    var isWallet = false;
    for (var key in productsInCart.keys) {
      var productId = Product.cleanProductID(key);
      var product = item[productId];
      if (isTopUpProduct(product)) {
        isWallet = true;
        break;
      }
    }

    return isWallet;
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
}
