import 'package:collection/collection.dart';

import '../../../common/constants.dart';
import '../../../data/boxes.dart';
import '../../../services/index.dart';
import '../../index.dart';
import '../cart_item_meta_data.dart';
import 'cart_mixin.dart';

/// Everything relate to Local storage
mixin LocalMixin on CartMixin {
  void saveCartToLocal(String key,
      {Product? product,
      int? quantity = 1,
      CartItemMetaData? cartItemMetaData}) {
    try {
      final newItem = {
        'key': key,
        'product': product!.toJson(),
        'quantity': quantity,
        'cartItemMetaData': cartItemMetaData?.toJson(),
      };
      var items = UserBox().productsInCart;
      if (items != null && items.isNotEmpty) {
        final existed =
            items.firstWhereOrNull((item) => item['key'] == key) != null;
        if (existed) {
          items =
              items.map((item) => item['key'] == key ? newItem : item).toList();
        } else {
          items.add(newItem);
        }
      } else {
        items = [newItem];
      }
      UserBox().productsInCart = items;
    } catch (err) {
      printLog('[saveCartToLocal] failed: $err');
    }
  }

  Future<void> updateQuantityCartLocal({String? key, int quantity = 1}) async {
    try {
      var items = UserBox().productsInCart;
      if (items != null && items.isNotEmpty) {
        final existed =
            items.firstWhereOrNull((item) => item['key'] == key) != null;
        if (existed) {
          items = items.map((item) {
            if (item['key'] == key) {
              item['quantity'] = quantity;
            }
            return item;
          }).toList();
        }
      }
      UserBox().productsInCart = items;
    } catch (err) {
      printLog(err);
    }
  }

  Future<void> clearCartLocal() async {
    UserBox().productsInCart = null;
  }

  void removeProductLocal(String key) {
    try {
      final items = UserBox().productsInCart;
      if (items != null && items.isNotEmpty) {
        final ids = key.split('-');
        var newItems = <Map>[];
        for (var item in items) {
          if (Product.fromLocalJson(item['product']).id != ids[0]) {
            newItems.add(item);
          }
        }
        UserBox().productsInCart = newItems;
      }
    } catch (err) {
      printLog(err);
    }
  }

  void getCartInLocal() {
    if (ServerConfig().isVendorManagerType()) {
      return;
    }
    try {
      final items = UserBox().productsInCart;
      if (items != null && items.isNotEmpty) {
        for (final item in items) {
          addProductToCart(
            product: Product.fromLocalJson(item['product']),
            quantity: int.tryParse('${item['quantity']}') ?? 0,
            cartItemMetaData: item['cartItemMetaData'] != null
                ? CartItemMetaData.fromLocalJson(item['cartItemMetaData'])
                : null,
            isSaveLocal: false,
            notify: () {},
          );
        }
      }
    } catch (err, trace) {
      printError(err, trace, '::::::::: Get Cart In Local Error');
    }
  }

  // Adds a product to the cart.
  String addProductToCart({
    required Product product,
    int quantity = 1,
    CartItemMetaData? cartItemMetaData,
    required Function notify,
    isSaveLocal = true,
  }) {
    var message = '';

    var key = product.id.toString();
    if (cartItemMetaData?.variation != null) {
      if (cartItemMetaData?.variation?.id != null) {
        key += '-${cartItemMetaData?.variation?.id}';
      }
      if (cartItemMetaData?.options != null) {
        for (var option in (cartItemMetaData?.options?.keys ?? [])) {
          key += '-$option${cartItemMetaData?.options?[option]}';
        }
      }
    }

    //Check product's quantity before adding to cart
    var total = !productsInCart.containsKey(key)
        ? quantity
        : (productsInCart[key]! + quantity);
    var stockQuantity = cartItemMetaData?.variation == null
        ? product.stockQuantity
        : cartItemMetaData?.variation?.stockQuantity;
//    printLog('stock is here');
//    printLog(product.manageStock);

    if (!product.manageStock) {
      productsInCart[key] = total;
    } else if (total <= stockQuantity!) {
      if (product.minQuantity == null && product.maxQuantity == null) {
        productsInCart[key] = total;
      } else if (product.minQuantity != null && product.maxQuantity == null) {
        total < product.minQuantity!
            ? message = 'Minimum quantity is ${product.minQuantity}'
            : productsInCart[key] = total;
      } else if (product.minQuantity == null && product.maxQuantity != null) {
        total > product.maxQuantity!
            ? message =
                'You can only purchase ${product.maxQuantity} for this product'
            : productsInCart[key] = total;
      } else if (product.minQuantity != null && product.maxQuantity != null) {
        if (total >= product.minQuantity! && total <= product.maxQuantity!) {
          productsInCart[key] = total;
        } else {
          if (total < product.minQuantity!) {
            message = 'Minimum quantity is ${product.minQuantity}';
          }
          if (total > product.maxQuantity!) {
            message =
                'You can only purchase ${product.maxQuantity} for this product';
          }
        }
      }
    } else {
      message = 'Currently we only have $stockQuantity of this product';
    }

    if (message.isEmpty) {
      item[product.id] = product;
      cartItemMetaDataInCart[key] = cartItemMetaData;

      if (isSaveLocal) {
        saveCartToLocal(
          key,
          product: product,
          quantity: quantity,
          cartItemMetaData: cartItemMetaData,
        );
      }
    }

    notify();
    return message;
  }
}
