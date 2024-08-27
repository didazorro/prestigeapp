import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fstore/models/entities/product.dart';
import 'package:fstore/models/entities/product_variation.dart';
import 'package:fstore/screens/checkout/webview_checkout_success_screen.dart';
import 'index.dart';

mixin InAppPurchaseMixin {
  InAppPurchaseHelper? _iapHelper;
  StreamSubscription? _iapHelperSubscription;

  void doIAPPayment(
      BuildContext context,
      Product product,
      ProductVariation? productVariation,
      int quantity,
      Map<String?, String?> mapAttribute,
      Function(bool) onLoading,
      VoidCallback onAddToCart) {
    onLoading(true);
    _iapHelper = InAppPurchaseHelper.instance(context);

    if (_iapHelper?.hasListener != true) {
      _iapHelper?.initStream();
    }
    _iapHelperSubscription ??=
        _iapHelper?.stream?.listen((InAppPurchaseEvent event) async {
      if (event.status == InAppPurchaseStatus.failed ||
          event.status == InAppPurchaseStatus.completed ||
          event.status == InAppPurchaseStatus.canceled) {
        onLoading(false);
      }
      if (event.status == InAppPurchaseStatus.completed) {
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WebviewCheckoutSuccessScreen(
              order: event.order,
            ),
          ),
        );
      }
    });
    _iapHelper
        ?.checkProduct(product, quantity, productVariation, mapAttribute)
        .then((_) {
      if (_iapHelper?.isAvailable ?? false) {
        _iapHelper?.purchase(context);
      } else {
        onLoading(false);
        onAddToCart();
      }
    }).catchError((error) {
      onLoading(false);
    });
  }

  void iapDispose() {
    _iapHelperSubscription?.cancel();
    _iapHelperSubscription = null;
    _iapHelper?.dispose();
  }
}
