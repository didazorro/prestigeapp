import 'package:collection/collection.dart' show IterableExtension;
import 'package:flutter/material.dart';

import '../../common/config.dart';
import '../../common/constants.dart';
import '../../data/boxes.dart';
import '../../generated/l10n.dart';
import '../../modules/dynamic_layout/helper/helper.dart';
import '../../services/index.dart';
import '../entities/index.dart' show Product, ProductVariation, Tax, PWGiftExt;
import '../entities/product_addons.dart';
import 'cart_base.dart';
import 'cart_item_meta_data.dart';
import 'mixin/index.dart';

class CartModelWoo
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
  static final CartModelWoo _instance = CartModelWoo._internal();

  factory CartModelWoo() => _instance;

  CartModelWoo._internal();

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
      subtotal += getShippingCost(includeTax: true)!;
    }

    if (taxes.isNotEmpty && !isIncludingTax) {
      subtotal += taxesTotal;
    }

    subtotal -= rewardTotal;

    subtotal -= walletAmount;

    subtotal += getCODExtraFee();

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
        if ((signUpFee?.isNotEmpty ?? false) &&
            productsInCart[id] != null &&
            double.parse(signUpFee!) > 0) {
          return double.parse(signUpFee!) * productsInCart[id]!;
        }
      }
    }

    if (cartItemMetaDataInCart[id]?.selectedTiredPrice != null) {
      return double.parse(cartItemMetaDataInCart[id]
                  ?.selectedTiredPrice
                  ?.price
                  ?.toString() ??
              '0') *
          productsInCart[id]!;
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
  String updateQuantity(Product product, String key, int quantity) {
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
      return S.current.storeClosed;
    }
    if (isOnVacation) {
      return S.current.onVacation;
    }
    var message = '';
    ProductVariation? variation;

    if (key.contains('-')) {
      variation = getProductVariationById(key);
    }

    final allowBackorder = variation != null
        ? (variation.backordersAllowed ?? false)
        : product.backordersAllowed;

    message = checkMinMaxQuantity(
      product: product,
      key: key,
      totalQuantity: quantity,
      allowBackorder: allowBackorder,
      variation: variation,
    );

    if (message.isEmpty) {
      updateSelectedTiredPrice(key, quantity);
      updateQuantityCartLocal(key: key, quantity: quantity);
      notifyListeners();
    }

    updateDiscount(onFinish: notifyListeners);
    notifyListeners();

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

  // Removes an item from the cart.
  @override
  void removeItemFromProductId(String productId) {
    productsInCart.removeWhere((key, value) => key.contains(productId));
    removeProductLocal(productId);

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

  String? _validateProductComponent(
      Product? product, CartItemMetaData? cartItemMetaData) {
    String? errMsg;
    if (product?.isCompositeProduct == true) {
      if (cartItemMetaData?.selectedComponents == null) {
        errMsg = S.current.pleaseSelectRequiredOptions;
      } else {
        product?.components?.forEach((e) {
          if (e.required == true &&
              cartItemMetaData?.selectedComponents?[e.id] == null) {
            errMsg = '${e.name ?? ''} is required';
            return;
          }
        });
      }
    }
    return errMsg;
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

    var invalidMsg = _validateProductComponent(product, cartItemMetaData);
    if (invalidMsg != null) return invalidMsg;
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
      if (cartItemMetaData?.options != null) {
        for (var option in cartItemMetaData!.options!.keys) {
          key += '-$option${cartItemMetaData.options![option]}';
        }
      }
    } else if (product.bookingInfo != null) {
      key += '-${product.bookingInfo!.timeStart.toString()}';
    }
    if (cartItemMetaData?.selectedComponents != null) {
      for (var selectedComponentKey
          in (cartItemMetaData?.selectedComponents?.keys.toList() ?? [])) {
        var selected =
            cartItemMetaData?.selectedComponents?[selectedComponentKey];
        if (selected != null) {
          key += '-$selectedComponentKey-${selected.product.id}';
          if (selected.variant?.id?.isNotEmpty ?? false) {
            key += '-${selected.variant?.id}';
          }
        }
      }
    }

    final allowBackorder = cartItemMetaData?.variation != null
        ? (cartItemMetaData?.variation?.backordersAllowed ?? false)
        : product.backordersAllowed;

    try {
      /// Product variations.
      if (product.isVariableProduct) {
        /// Loading attributes & variants.
        if (cartItemMetaData?.variation == null) {
          message = S.of(context).pleaseSelectAllAttributes;
          return message;
        }

        /// Not selected all attributes.
        if ((cartItemMetaData?.options?.isEmpty ?? true) ||
            cartItemMetaData!.options!.values.contains(null)) {
          message = S.of(context).pleaseSelectAllAttributes;
          return message;
        }
      }

      /// Product addons.
      if (product.addOns?.isNotEmpty ?? false) {
        for (var addOns in product.addOns!) {
          if (addOns.required ?? false) {
            /// For customer-defined price, text & upload type, label is entered by user.
            /// So we need to check using addon name.
            final requiredOptions = addOns.options!.map((e) {
              if (e.isEnteredByUser) {
                return e.parent;
              }
              return e.label;
            }).toList();
            final check = product.selectedOptions?.firstWhereOrNull(
              (option) => requiredOptions.contains(
                option.isEnteredByUser ? option.parent : option.label,
              ),
            );
            if (check == null) {
              message = S.of(context).pleaseSelectRequiredOptions;
              return message;
            }
          }
        }
      }

      if (product.selectedOptions?.isNotEmpty ?? false) {
        key += '+${product.selectedOptions!.map((e) => e.label).join('+')}';
      }
      final pwGiftCardInfo = cartItemMetaData?.pwGiftCardInfo;
      if (product.isPWGiftCardProduct) {
        key += '+${pwGiftCardInfo?.key}';
        if (!(pwGiftCardInfo?.isValid ?? false)) {
          message = S.of(context).pleaseInputFillAllFields;
          return message;
        }
        var emails = pwGiftCardInfo?.to.split(',') ?? [];
        quantity = emails.length;
        for (var email in emails) {
          if (!email.isEmail) {
            message = S.of(context).errorEmailFormat;
            return message;
          }
        }
      }

      //Check product's quantity before adding to cart
      var existedItem = productsInCart.containsKey(key);
      message = checkMinMaxQuantity(
        product: product,
        key: key,
        totalQuantity:
            !existedItem ? quantity : productsInCart[key]! + quantity,
        allowBackorder: allowBackorder,
        variation: cartItemMetaData?.variation,
      );

      if (message.isEmpty) {
        item[product.id] = product;
        cartItemMetaDataInCart[key] = cartItemMetaData?.copyWith(
            addonsOptions:
                product.selectedOptions?.map(AddonsOption.copy).toList());
        if (existedItem) {
          updateSelectedTiredPrice(key, productsInCart[key] ?? quantity);
        }
        if (isSaveLocal) {
          saveCartToLocal(
            key,
            product: product,
            quantity: productsInCart[key],
            cartItemMetaData: cartItemMetaDataInCart[key],
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
    var isMultiVendor = ServerConfig().isVendorType();
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
  bool isB2BKingCart() {
    if (kAdvanceConfig.b2bKingConfig.enabled &&
        kAdvanceConfig.b2bKingConfig.guestAccessRestriction ==
            'replace_prices_quote' &&
        user == null) {
      return true;
    }

    var isB2BKing = false;
    for (var item in cartItemMetaDataInCart.values) {
      if (item?.selectedTiredPrice != null) {
        isB2BKing = true;
        break;
      }
    }

    return isB2BKing;
  }

  @override
  void setTaxInfo(List<Tax> taxes, double taxesTotal, bool isIncludingTax) {
    super.setTaxInfo(taxes, taxesTotal, isIncludingTax);
    notifyListeners();
  }

  @override
  double getProductAddonsPrice(String id) {
    var addOns = cartItemMetaDataInCart[id]?.addonsOptions;
    var price = 0.0;
    if (addOns == null) {
      return 0.0;
    }
    for (var option in addOns) {
      var quantity = productsInCart[id] ?? 0;
      var optionPrice = (double.tryParse(option.price ?? '0.0') ?? 0.0);
      price += optionPrice * quantity;
    }
    return price;
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

  /// Support for min-max-quantity for Woo plugin
  String checkMinMaxQuantity({
    required Product product,
    required String key,
    required int totalQuantity,
    ProductVariation? variation,
    bool allowBackorder = false,
  }) {
    String checkQuantityGroupOf() {
      final step = product.quantityStep;
      if (step != null && totalQuantity % step != 0) {
        return '${product.name} ${S.current.mustBeBoughtInGroupsOf(step)}. ${S.current.pleaseIncreaseOrDecreaseTheQuantity}';
      }
      productsInCart[key] = totalQuantity;
      return '';
    }

    var stockQuantity =
        variation == null ? product.stockQuantity : variation.stockQuantity;
    var manageStock =
        variation == null ? product.manageStock : variation.manageStock;
    var minQuantity = product.minQuantity;
    var maxQuantity = product.maxQuantity;
    var maxAllowQuantity = Helper.formatInt(kCartDetail['maxAllowQuantity']);
    final useMaxAllowQuantity = maxAllowQuantity != null &&
        !allowBackorder &&
        maxQuantity != null &&
        maxQuantity > maxAllowQuantity;

    if (maxQuantity == null || useMaxAllowQuantity) {
      maxQuantity = maxAllowQuantity;
    }

    if (!manageStock || allowBackorder || totalQuantity <= stockQuantity!) {
      if (minQuantity == null && maxQuantity == null) {
        return checkQuantityGroupOf();
      } else if (minQuantity != null && maxQuantity == null) {
        if (totalQuantity < minQuantity) {
          return '${S.current.minimumQuantityIs} $minQuantity';
        }
        return checkQuantityGroupOf();
      } else if (minQuantity == null && maxQuantity != null) {
        if (totalQuantity > maxQuantity && !allowBackorder) {
          return '${S.current.youCanOnlyPurchase} $maxQuantity ${S.current.forThisProduct}';
        }
        return checkQuantityGroupOf();
      } else if (minQuantity != null && maxQuantity != null) {
        if (totalQuantity >= minQuantity && totalQuantity <= maxQuantity) {
          return checkQuantityGroupOf();
        } else {
          if (totalQuantity < minQuantity) {
            return '${S.current.minimumQuantityIs} $minQuantity';
          }
          if (totalQuantity > maxQuantity && !allowBackorder) {
            return '${S.current.youCanOnlyPurchase} $maxQuantity ${S.current.forThisProduct}';
          }
          return checkQuantityGroupOf();
        }
      }
    } else {
      return '${S.current.currentlyWeOnlyHave} $stockQuantity ${S.current.ofThisProduct}';
    }
    return '';
  }

  void updateSelectedTiredPrice(String key, int quantity) {
    var cartItemMetaData = cartItemMetaDataInCart[key];
    //update the correct selectedTiredPrice when change quantity
    if (cartItemMetaData?.tiredPrices?.isNotEmpty ?? false) {
      var selectedTiredPrice = cartItemMetaData?.tiredPrices?.reversed
          .firstWhereOrNull((e) => (e.quantity ?? 0) <= quantity);
      if (selectedTiredPrice != null) {
        cartItemMetaDataInCart[key] =
            cartItemMetaData?.copyWith(selectedTiredPrice: selectedTiredPrice);
      } else {
        cartItemMetaDataInCart[key] =
            cartItemMetaData?.removeSelectedTiredPrice();
      }
    }
  }
}
