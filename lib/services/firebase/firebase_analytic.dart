import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/index.dart';
import '../../modules/analytics/abstract_analytic_trigger.dart';
import '../services.dart';

class FirebaseAnalytic extends AbstractAnalyticTrigger {
  @override
  void onTapProduct(Product value, String? itemListId, String? itemListName) {
    Services().firebase.firebaseAnalytics?.logSelectItem(
          itemListId: itemListId,
          itemListName: itemListName,
          data: value,
        );
  }

  @override
  void onAddToCart(Product value, int? quantity, BuildContext? context) {
    String? currency;
    if (context != null) {
      currency = context.read<AppModel>().currency;
    }
    Services().firebase.firebaseAnalytics?.logAddToCart(
          currency: currency,
          price: double.tryParse(value.price ?? ''),
          data: value,
          quantity: quantity,
        );
  }

  @override
  void addToWishList(Product value) {
    Services().firebase.firebaseAnalytics?.logAddToWishlist(data: value);
  }

  @override
  void onViewCart(Map value, BuildContext? context) {
    String? currency;
    double? price;
    if (context != null) {
      final model = context.read<CartModel>();
      currency = model.currencyCode;
      price = model.getSubTotal();
    }
    Services().firebase.firebaseAnalytics?.logViewCart(
          currency: currency,
          data: value,
          price: price,
        );
  }

  @override
  void onRemoveProductFromCart(
    Product value,
    int? quantity,
    BuildContext? context,
  ) {
    String? currency;
    if (context != null) {
      currency = context.read<AppModel>().currency;
    }
    Services().firebase.firebaseAnalytics?.logRemoveFromCart(
          currency: currency,
          data: value,
          price: double.tryParse(value.price ?? ''),
        );
  }

  @override
  void onViewProduct(Product value, BuildContext? context) {
    String? currency;
    if (context != null) {
      currency = context.read<AppModel>().currency;
    }
    Services().firebase.firebaseAnalytics?.logViewItem(
          currency: currency,
          data: value,
          price: double.tryParse(value.price ?? ''),
        );
  }

  @override
  void onBeginCheckout(BuildContext context) {
    final model = context.read<CartModel>();
    Services().firebase.firebaseAnalytics?.logBeginCheckout(
          coupon: model.couponObj?.code,
          currency: model.currencyCode,
          data: model.getProductsInCart(),
          price: model.getSubTotal(),
        );
  }

  @override
  void onPurchased(Order value, BuildContext? context) {
    double? price;
    double? shipping;
    double? tax;
    String? coupon;
    String? currency;
    List? productList;
    if (context != null) {
      final model = context.read<CartModel>();
      price = model.getSubTotal();
      shipping = model.getShippingCost();
      tax = model.taxesTotal;
      coupon = model.couponObj?.code;
      currency = model.currencyCode;
      productList = model.getProductsInCart();
    }
    Services().firebase.firebaseAnalytics?.logPurchase(
          orderId: value.id,
          price: price,
          shipping: shipping,
          tax: tax,
          coupon: coupon,
          currency: currency,
          data: productList,
        );
  }

  @override
  void onAddPaymentInfo(String? value, BuildContext? context) {
    double? price;
    String? coupon;
    String? currency;
    List? productList;
    if (context != null) {
      final model = context.read<CartModel>();
      price = model.getSubTotal();
      coupon = model.couponObj?.code;
      currency = model.currencyCode;
      productList = model.getProductsInCart();
    }
    Services().firebase.firebaseAnalytics?.logAddPaymentInfo(
          coupon: coupon,
          currency: currency,
          data: productList,
          paymentType: value,
          price: price,
        );
  }

  @override
  void onCreateRefund(Order value) {
    Services().firebase.firebaseAnalytics?.logRefund(
          orderId: value.id,
          price: value.total,
          currency: value.currencyCode,
          data: value.lineItems,
        );
  }

  @override
  void onAddShippingInfo(String? value, BuildContext? context) {
    double? price;
    String? coupon;
    String? currency;
    List? productList;
    if (context != null) {
      final model = context.read<CartModel>();
      price = model.getSubTotal();
      coupon = model.couponObj?.code;
      currency = model.currencyCode;
      productList = model.getProductsInCart();
    }
    Services().firebase.firebaseAnalytics?.logAddShippingInfo(
          coupon: coupon,
          currency: currency,
          data: productList,
          price: price,
          shippingTier: value,
        );
  }

  @override
  void onViewListProduct(List<Product> value, BuildContext? context) {
    String? itemListId;
    String? itemListName;
    if (context != null) {
      final model = context.read<ProductModel>();
      itemListId = model.categoryIds?.join(',') ?? model.tagIds?.join(',');
      itemListName = model.categoryName;
    }

    Services().firebase.firebaseAnalytics?.logViewItemList(
          itemListId: itemListId,
          itemListName: itemListName,
          data: value,
        );
  }
}
