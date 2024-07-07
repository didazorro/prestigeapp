import 'package:flutter/material.dart';

import '../../models/index.dart';
import 'analytics.dart';

abstract class AbstractAnalyticTrigger {
  void onTapProduct(Product value, String? itemListId, String? itemListName);

  void onAddToCart(Product value, int? quantity, BuildContext? context);

  void addToWishList(Product value);

  void onViewCart(Map value, BuildContext? context) {}

  void onRemoveProductFromCart(
    Product value,
    int? quantity,
    BuildContext? context,
  );

  void onViewProduct(Product value, BuildContext? context) {}

  void onBeginCheckout(BuildContext context) {}

  void onPurchased(Order value, BuildContext? context);

  void onAddPaymentInfo(String? value, BuildContext? context) {}

  void onCreateRefund(Order value);

  void onAddShippingInfo(String? value, BuildContext? context) {}

  void onViewListProduct(List<Product> value, BuildContext? context);

  void onTapBlog(Blog value) {}

  void onAddBlogToWishList(Blog value) {}

  void onSearchProduct(String value, bool isEmpty, BuildContext? context) {}

  void onListener((AnalyticsEvent, AnalyticData?) event) {
    switch (event.$1) {
      case AnalyticsEvent.tapProduct:
        var product = event.$2?.data;
        if (product is Product) {
          onTapProduct(product, event.$2?.itemListId, event.$2?.itemListName);
        }
        break;
      case AnalyticsEvent.addToCart:
        var product = event.$2?.data;
        if (product is Product) {
          onAddToCart(product, event.$2?.quantity, event.$2?.context);
        }
        break;
      case AnalyticsEvent.addToWishList:
        var product = event.$2?.data;
        if (product is Product) {
          addToWishList(product);
        }
        break;
      case AnalyticsEvent.viewCart:
        var productList = event.$2?.data;
        if (productList is Map) {
          onViewCart(productList, event.$2?.context);
        }
        break;
      case AnalyticsEvent.removeFromCart:
        var product = event.$2?.data;
        if (product is Product) {
          onRemoveProductFromCart(
            product,
            event.$2?.quantity,
            event.$2?.context,
          );
        }
        break;
      case AnalyticsEvent.viewProduct:
        var product = event.$2?.data;
        if (product is Product) {
          onViewProduct(product, event.$2?.context);
        }
        break;
      case AnalyticsEvent.beginCheckout:
        var context = event.$2?.data;
        if (context is BuildContext) {
          onBeginCheckout(context);
        }
        break;

      case AnalyticsEvent.purchased:
        var order = event.$2?.data;
        if (order is Order) {
          onPurchased(order, event.$2?.context);
        }
        break;
      case AnalyticsEvent.addPaymentInfo:
        var name = event.$2?.data;
        if (name is String) {
          onAddPaymentInfo(name, event.$2?.context);
        }
        break;
      case AnalyticsEvent.createRefund:
        var order = event.$2?.data;
        if (order is Order) {
          onCreateRefund(order);
        }
        break;
      case AnalyticsEvent.addShippingInfo:
        var name = event.$2?.data;
        if (name is String) {
          onAddShippingInfo(name, event.$2?.context);
        }
        break;
      case AnalyticsEvent.viewListProduct:
        var products = event.$2?.data;
        if (products is List<Product>) {
          onViewListProduct(products, event.$2?.context);
        }
        break;
      case AnalyticsEvent.tapBlog:
        var blog = event.$2?.data;
        if (blog is Blog) {
          onTapBlog(blog);
        }
        break;
      case AnalyticsEvent.addBlogToWishList:
        var blog = event.$2?.data;
        if (blog is Blog) {
          onAddBlogToWishList(blog);
        }
        break;
      case AnalyticsEvent.searchProduct:
        var value = event.$2?.data;
        if (value is String && value.isNotEmpty) {
          onSearchProduct(value, event.$2?.isEmpty ?? true, event.$2?.context);
        }
        break;
      default:
    }
  }
}
