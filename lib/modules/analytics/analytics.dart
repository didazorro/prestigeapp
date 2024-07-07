import 'dart:async';

import 'package:flutter/material.dart';

import '../../common/config.dart';
import '../../models/entities/blog.dart';
import '../../models/entities/product.dart';
import '../../models/order/order.dart';
import '../../services/elastic/elastic_analytic.dart';
import '../../services/firebase/firebase_analytic.dart';
import '../../services/meta_app_event_tracking.dart';

enum AnalyticsEvent {
  tapProduct,
  addToCart,
  addToWishList,
  viewCart,
  removeFromCart,
  viewProduct,
  beginCheckout,
  purchased,
  addPaymentInfo,
  createRefund,
  addShippingInfo,
  viewListProduct,
  tapBlog,
  addBlogToWishList,
  searchProduct,
}

class AnalyticData {
  dynamic data;
  BuildContext? context;
  int? quantity;
  String? itemListName;
  String? itemListId;
  bool? isEmpty;

  AnalyticData({
    required this.data,
    this.context,
    this.quantity,
    this.itemListName,
    this.itemListId,
    this.isEmpty,
  });
}

class Analytics {
  static final StreamController<(AnalyticsEvent, AnalyticData?)> _controller =
      StreamController<(AnalyticsEvent, AnalyticData?)>();
  static StreamSubscription? _subscription;

  Analytics._();

  static Analytics? _instance;
  static Analytics get instance => _instance ?? Analytics._();

  void init() {
    final firebase = FirebaseAnalytic();
    final elastic = ElasticAnalytic();
    final metaAppEvent = MetaAppEventTracking();
    _subscription = _controller.stream.listen((event) {
      if (Configurations.enableFirebaseAnalytics) {
        firebase.onListener(event);
      }
      if (kBoostEngineConfig.enableAnalytics) {
        elastic.onListener(event);
      }
      if (Configurations.enableFacebookAppEvents) {
        metaAppEvent.onListener(event);
      }
    });
  }

  static void _triggerEvent(
    AnalyticsEvent value, {
    AnalyticData? data,
  }) {
    _controller.add((value, data));
  }

  static void triggerTapProduct(
      Product? value, String? itemListId, String? itemListName) {
    _triggerEvent(
      AnalyticsEvent.tapProduct,
      data: AnalyticData(
        data: value,
        itemListId: itemListId,
        itemListName: itemListName,
      ),
    );
  }

  static void triggerAddToCart(
    Product? value,
    int quantity,
    BuildContext? context,
  ) {
    _triggerEvent(
      AnalyticsEvent.addToCart,
      data: AnalyticData(
        data: value,
        context: context,
        quantity: quantity,
      ),
    );
  }

  static void triggerAddToWishList(Product? value) {
    _triggerEvent(
      AnalyticsEvent.addToWishList,
      data: AnalyticData(
        data: value,
      ),
    );
  }

  static void triggerViewCart(Map? value, BuildContext? context) {
    _triggerEvent(
      AnalyticsEvent.viewCart,
      data: AnalyticData(
        data: value,
        context: context,
      ),
    );
  }

  static void triggerRemoveProductFromCart(
    Product? value,
    BuildContext? context,
  ) {
    _triggerEvent(
      AnalyticsEvent.removeFromCart,
      data: AnalyticData(
        data: value,
        context: context,
      ),
    );
  }

  static void triggerViewProduct(Product? value, BuildContext? context) {
    _triggerEvent(
      AnalyticsEvent.viewProduct,
      data: AnalyticData(
        data: value,
        context: context,
      ),
    );
  }

  static void triggerBeginCheckout(BuildContext? value) {
    _triggerEvent(
      AnalyticsEvent.beginCheckout,
      data: AnalyticData(data: value),
    );
  }

  static void triggerPurchased(Order? value, BuildContext? context) {
    _triggerEvent(
      AnalyticsEvent.purchased,
      data: AnalyticData(
        data: value,
        context: context,
      ),
    );
  }

  static void triggerAddPaymentInfo(String? value, BuildContext? context) {
    _triggerEvent(
      AnalyticsEvent.addPaymentInfo,
      data: AnalyticData(
        data: value,
        context: context,
      ),
    );
  }

  static void triggerCreateRefund(Order? value) {
    _triggerEvent(
      AnalyticsEvent.createRefund,
      data: AnalyticData(data: value),
    );
  }

  static void triggerAddShippingInfo(String? value, BuildContext? context) {
    _triggerEvent(
      AnalyticsEvent.createRefund,
      data: AnalyticData(
        data: value,
        context: context,
      ),
    );
  }

  static void triggerViewListProduct(
    List<Product>? value,
    BuildContext? context,
  ) {
    _triggerEvent(
      AnalyticsEvent.viewListProduct,
      data: AnalyticData(
        data: value,
        context: context,
      ),
    );
  }

  static void triggerTapBlog(Blog? value) {
    _triggerEvent(
      AnalyticsEvent.tapBlog,
      data: AnalyticData(data: value),
    );
  }

  static void triggerAddBlogToWishList(Blog? value) {
    _triggerEvent(
      AnalyticsEvent.addBlogToWishList,
      data: AnalyticData(data: value),
    );
  }

  static void triggerSearchProduct(
    String? value,
    bool isEmpty,
    BuildContext? context,
  ) {
    _triggerEvent(
      AnalyticsEvent.searchProduct,
      data: AnalyticData(
        data: value,
        isEmpty: isEmpty,
        context: context,
      ),
    );
  }

  static void dispose() {
    _subscription?.cancel();
  }
}
