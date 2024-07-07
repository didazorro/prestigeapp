import '../../../common/config.dart';
import '../../../common/tools.dart';
import '../../index.dart';
import '../cart_item_meta_data.dart';

mixin CartMixin {
  User? user;
  double taxesTotal = 0;
  List<Tax> taxes = [];
  bool isIncludingTax = false;
  double rewardTotal = 0;
  double walletAmount = 0;
  bool enableCheckoutButton = true;

  PaymentMethod? paymentMethod;

  String? notes;
  String? currencyCode;
  Map<String, dynamic>? currencyRates;

  // The IDs and products currently in the cart.
  final Map<String?, Product?> item = {};

  // The IDs and quantities of products and variant products currently in the cart.
  final Map<String, int?> productsInCart = {};

  // The IDs and cart item metadata in the cart.
  final Map<String, CartItemMetaData?> cartItemMetaDataInCart = {};

  void resetValues() {
    user = null;
    taxesTotal = 0;
    taxes = [];
    isIncludingTax = false;
    rewardTotal = 0;
    walletAmount = 0;
    enableCheckoutButton = true;

    paymentMethod = null;

    notes = null;
    currencyCode = null;
    currencyRates = null;

    item.clear();
    cartItemMetaDataInCart.clear();
    productsInCart.clear();
  }

  void removeItemFromProductId(String productId) {}

  int get totalCartQuantity => productsInCart.values.fold(0, (v, e) => v + e!);

  bool _hasProductVariation(String id) {
    var productVariation = cartItemMetaDataInCart[id]?.variation;
    return productVariation?.price?.isNotEmpty ?? false;
  }

  double getProductPrice(id) {
    if (_hasProductVariation(id)) {
      return double.parse(cartItemMetaDataInCart[id]?.variation?.price ?? '0') *
          productsInCart[id]!;
    } else {
      var productId = Product.cleanProductID(id);

      var price =
          PriceTools.getPriceProductValue(item[productId], onSale: true);
      if ((price?.isNotEmpty ?? false) && productsInCart[id] != null) {
        return double.parse(price!) * productsInCart[id]!;
      }
      return 0.0;
    }
  }

  double getProductAddonsPrice(String id) {
    var addOns = cartItemMetaDataInCart[id]?.addonsOptions;
    var price = 0.0;
    if (addOns == null) {
      return 0.0;
    }
    for (var option in addOns) {
      var quantity = productsInCart[id] ?? 0;
      var optionPrice = (double.tryParse(option.price ?? '0.0') ?? 0.0);
      if (option.isQuantityBased) {
        optionPrice *= quantity;
      }
      price += optionPrice;
    }
    return price;
  }

  double? getSubTotal() {
    return productsInCart.keys.fold(0.0, (sum, id) {
      return sum! +
          getProductPrice(id) +
          getProductAddonsPrice(id) +
          getProductComponentsPrice(id);
    });
  }

  void setPaymentMethod(data) {
    paymentMethod = data;
  }

  // Returns the Product instance matching the provided id.
  Product? getProductById(String id) {
    return item[id];
  }

  // Returns the Product instance matching the provided id.
  ProductVariation? getProductVariationById(String key) {
    return cartItemMetaDataInCart[key]?.variation;
  }

  String? getCheckoutId() {
    return '';
  }

  void setUser(data) {
    user = data;
  }

  void loadSavedCoupon() {}

  bool isEnabledShipping() {
    return kPaymentConfig.enableShipping;
  }

  void setWalletAmount(double total) {
    walletAmount = total;
  }

  bool isWalletCart() {
    return false;
  }

  bool isB2BKingCart() {
    return false;
  }

  void addWalletProductToCart({
    required Product product,
    int quantity = 1,
  }) {
    final key = product.id.toString();
    item[product.id] = product;
    productsInCart[key] = quantity;

    currencyCode = kAdvanceConfig.defaultCurrency?.currencyCode;
  }

  void setTaxInfo(List<Tax> taxes, double taxesTotal, bool isIncludingTax) {
    this.taxes = taxes;
    this.taxesTotal = taxesTotal;
    this.isIncludingTax = isIncludingTax;
  }

  double getCODExtraFee() {
    final enabled = (kPaymentConfig.smartCOD?.enabled ?? false) &&
        ((paymentMethod?.id?.contains('cod') ?? false) ||
            (paymentMethod?.id?.contains('cashondelivery') ?? false));
    final extraFee = kPaymentConfig.smartCOD?.extraFee ?? 0;
    final amountStop = kPaymentConfig.smartCOD?.amountStop ?? 0;
    final subtotal = getSubTotal() ?? 0;
    return (enabled && extraFee > 0 && subtotal < amountStop) &&
            double.tryParse('$extraFee') != null
        ? double.parse('$extraFee')
        : 0;
  }

  /// Get product detail with quantity in the current cart
  List getProductsInCart() {
    var productList = [];
    for (var key in productsInCart.keys) {
      var productId = Product.cleanProductID(key);
      var product = getProductById(productId);

      if (product != null) {
        productList.add(
            {'id': key, 'product': product, 'quantity': productsInCart[key]});
      }
    }
    return productList;
  }

  void updateProduct(String productId, Product? product) {
    //keep booking info after choose datetime in detail screen.
    var oldProduct = item[productId];
    if (oldProduct?.bookingInfo != null) {
      product?.bookingInfo = oldProduct?.bookingInfo;
    }

    item[productId] = product;
  }

  void updateProductVariant(
      String productId, ProductVariation? productVariant) {
    cartItemMetaDataInCart[productId] =
        cartItemMetaDataInCart[productId]?.copyWith(variation: productVariant);
  }

  void updateStateCheckoutButton() {
    enableCheckoutButton = true;
    // Check all product and variation in cart
    for (var key in productsInCart.keys) {
      var productId = Product.cleanProductID(key);
      var variation = getProductVariationById(key);
      var product = getProductById(productId);
      var quantityProductInCart = productsInCart[key];
      var maxQuantity = kCartDetail['maxAllowQuantity'] ?? 100;

      var inStock =
          (variation != null ? variation.inStock : product?.inStock) ?? false;

      var totalQuantity = variation != null
          ? (variation.stockQuantity ?? maxQuantity)
          : (product?.stockQuantity ?? maxQuantity);

      var limitQuantity =
          totalQuantity > maxQuantity ? maxQuantity : totalQuantity;

      final isOnBackorder = variation != null
          ? variation.backordersAllowed ?? false
          : product?.backordersAllowed ?? false;

      if (isOnBackorder == false) {
        if (!inStock) {
          enableCheckoutButton = false;
          break;
        }
        if (inStock &&
            quantityProductInCart != null &&
            quantityProductInCart > limitQuantity) {
          enableCheckoutButton = false;
          break;
        }
      }
    }
  }

  double getProductComponentsPrice(String id) {
    var productComponents = cartItemMetaDataInCart[id]?.selectedComponents;
    var price = 0.0;
    if (productComponents == null) {
      return 0.0;
    }
    for (var item in productComponents.values) {
      var quantity = productsInCart[id] ?? 0;
      var optionPrice = (item.getPrice() ?? 0.0) * quantity;
      price += optionPrice;
    }
    return price;
  }
}
