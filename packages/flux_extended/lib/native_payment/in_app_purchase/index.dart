import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:fstore/common/config.dart';
import 'package:fstore/common/tools/price_tools.dart';
import 'package:fstore/common/tools/tools.dart';
import 'package:fstore/models/index.dart';
import 'package:fstore/services/services.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:provider/provider.dart';

enum InAppPurchaseStatus { loading, completed, failed, canceled }

class InAppPurchaseEvent {
  const InAppPurchaseEvent({required this.status, this.order});

  final InAppPurchaseStatus status;
  final Order? order;
}

class InAppPurchaseHelper {
  late BuildContext _context;

  late StreamController? _streamController;
  Stream<InAppPurchaseEvent>? get stream =>
      _streamController?.stream as Stream<InAppPurchaseEvent>;
  bool get hasListener => _streamController?.hasListener ?? false;

  ProductDetails? _productDetails;
  static StreamSubscription<List<PurchaseDetails>>? _subscription;

  InAppPurchaseHelper._(BuildContext context) {
    _context = context;
    initStream();
    final purchaseUpdated = InAppPurchase.instance.purchaseStream;
    _subscription =
        purchaseUpdated.listen(_listenToPurchaseUpdated, onDone: () {
      _subscription?.cancel();
    }, onError: (e) {
      Tools.showSnackBar(ScaffoldMessenger.of(_context), e.toString());
      _streamController
          ?.add(const InAppPurchaseEvent(status: InAppPurchaseStatus.failed));
    });
  }

  static InAppPurchaseHelper? _instance;
  static InAppPurchaseHelper instance(BuildContext context) =>
      _getOrCreateInstance(context);
  static InAppPurchaseHelper _getOrCreateInstance(BuildContext context) {
    if (_instance != null) {
      if (_subscription?.isPaused ?? false) {
        _subscription?.resume();
      }
      return _instance!;
    }
    _instance = InAppPurchaseHelper._(context);
    return _instance!;
  }

  late Product _product;
  late int _quantity;
  late ProductVariation? _productVariation;
  late Map<String?, String?> _mapAttribute;
  List<PurchaseDetails>? _purchaseDetailsList;

  void initStream() {
    _streamController = StreamController<InAppPurchaseEvent>.broadcast();
  }

  Future<void> _listenToPurchaseUpdated(
      List<PurchaseDetails> purchaseDetailsList) async {
    for (var purchaseDetails in purchaseDetailsList) {
      if (purchaseDetails.status == PurchaseStatus.purchased) {
        try {
          if (purchaseDetails.pendingCompletePurchase) {
            await InAppPurchase.instance.completePurchase(purchaseDetails);
          }
          final userModel = Provider.of<UserModel>(_context, listen: false);
          var params = Order().toIAPWooJson(_product, _quantity,
              _productVariation, _mapAttribute, userModel.user?.id);
          var order =
              await Services().api.createIAPOrder(params, userModel.user);
          _streamController?.add(InAppPurchaseEvent(
              status: InAppPurchaseStatus.completed, order: order));
        } catch (e) {
          Tools.showSnackBar(ScaffoldMessenger.of(_context), e.toString());
          _streamController?.add(
              const InAppPurchaseEvent(status: InAppPurchaseStatus.failed));
        }
      } else if (purchaseDetails.status == PurchaseStatus.canceled) {
        await InAppPurchase.instance.completePurchase(purchaseDetails);
        _streamController?.add(
            const InAppPurchaseEvent(status: InAppPurchaseStatus.canceled));
      }
    }
    _purchaseDetailsList = purchaseDetailsList;
  }

  Future checkProduct(
    Product product,
    int quantity,
    ProductVariation? productVariation,
    Map<String?, String?> mapAttribute,
  ) async {
    _product = product;
    _quantity = quantity;
    _productVariation = productVariation;
    _mapAttribute = mapAttribute;

    final available = await InAppPurchase.instance.isAvailable();
    if (available) {
      final kIds = <String>{
        ...?kInAppPurchaseConfig['consumableProductIDs'],
        ...?kInAppPurchaseConfig['nonConsumableProductIDs'],
        ...?kInAppPurchaseConfig['subscriptionProductIDs']
      };
      final response = await InAppPurchase.instance.queryProductDetails(kIds);
      var products = response.productDetails;

      if (products.isNotEmpty) {
        final price = _getProductPrice(product, quantity, productVariation);
        _productDetails = products.firstWhereOrNull((e) => e.rawPrice == price);
      }
    }
    return;
  }

  bool get isAvailable => _productDetails != null;

  bool _isConsumableProduct() {
    return List<String>.from(kInAppPurchaseConfig['consumableProductIDs'] ?? [])
            .firstWhereOrNull((e) => e == _productDetails?.id) !=
        null;
  }

  Future purchase(BuildContext context) async {
    if (_productDetails != null) {
      final purchaseParam = PurchaseParam(productDetails: _productDetails!);
      try {
        //finish pending transactions
        for (var purchaseDetails in _purchaseDetailsList ?? []) {
          if (purchaseDetails.pendingCompletePurchase) {
            await InAppPurchase.instance.completePurchase(purchaseDetails);
          }
        }

        if (_isConsumableProduct()) {
          await InAppPurchase.instance
              .buyConsumable(purchaseParam: purchaseParam);
        } else {
          await InAppPurchase.instance
              .buyNonConsumable(purchaseParam: purchaseParam);
        }
      } catch (e) {
        Tools.showSnackBar(ScaffoldMessenger.of(context), e.toString());
        _streamController
            ?.add(const InAppPurchaseEvent(status: InAppPurchaseStatus.failed));
      }
    }
  }

  bool _hasProductVariation(ProductVariation? productVariation) =>
      productVariation != null &&
      productVariation.price != null &&
      productVariation.price!.isNotEmpty;

  double _getProductPrice(
      Product product, int quantity, ProductVariation? productVariation) {
    if (_hasProductVariation(productVariation)) {
      return double.parse(productVariation?.price ?? '') * quantity;
    } else {
      var price = PriceTools.getPriceProductValue(product, onSale: true);
      if (price?.isNotEmpty ?? false) {
        return double.parse(price!) * quantity;
      }
      return 0.0;
    }
  }

  void dispose() {
    _subscription?.pause();
    _streamController?.close();
    _streamController = null;
  }
}
