import 'dart:async';

import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:fstore/models/entities/product.dart';

import '../services/index.dart';

class ProductModel extends ChangeNotifier {
  final _services = StoreLocatorServices();

  late String _storeId;
  int _page = 1;
  bool isFetching = false;
  List<Product> productsList = [];
  String? errMsg;
  bool? isEnd;

  CancelableOperation? _cancelReq;

  Future refreshProducts(String id) async {
    try {
      _storeId = id;
      if (isFetching) {
        await _cancelReq?.cancel();
      }
      _page = 1;
      await _getProducts();
    } catch (e) {
      isFetching = false;
      errMsg = e.toString();
      notifyListeners();
    }
  }

  void loadProducts() async {
    if (isFetching) {
      return;
    }
    _page += 1;
    unawaited(_getProducts());
  }

  Future _getProducts() async {
    try {
      isFetching = true;
      _cancelReq = CancelableOperation.fromFuture(
          _services.getProducts(storeId: _storeId, page: _page));
      final items = await _cancelReq!.value;
      isEnd = items.isEmpty;
      if (_page == 1) {
        productsList = items;
      } else {
        productsList.addAll(items);
      }
    } catch (e) {
      errMsg = e.toString();
    }
    isFetching = false;
    notifyListeners();
  }
}
