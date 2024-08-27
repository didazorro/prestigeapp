import 'dart:convert' as convert;

import 'package:fstore/models/entities/product.dart';
import 'package:fstore/services/services.dart';
import 'package:inspireui/inspireui.dart';
import 'package:quiver/strings.dart';

import '../models/store.dart';

class StoreLocatorServices {
  final domain = Services().api.domain;

  Future<List<Store>> getStores(
      {String? latitude,
      String? longitude,
      double? radius,
      bool? showAll}) async {
    try {
      var url =
          '$domain/wp-json/api/flutter_store_locator/stores?show_all=${showAll == true}';
      if (latitude != null && longitude != null) {
        url += '&latitude=$latitude&longitude=$longitude';
      }
      if (radius != null) {
        url += '&radius=$radius';
      }
      var response = await httpGet(Uri.parse(url),
          headers: {'Content-Type': 'application/json'});
      var jsonDecode = convert.jsonDecode(response.body);
      var stores = <Store>[];

      if (jsonDecode is Map && isNotBlank(jsonDecode['message'])) {
        throw Exception(jsonDecode['message']);
      } else {
        if (jsonDecode is List) {
          for (var item in jsonDecode) {
            stores.add(Store.fromJson(item));
          }
        }
        return stores;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Product>> getProducts(
      {required String storeId, int page = 1, int perPage = 10}) async {
    try {
      var url =
          '$domain/wp-json/api/flutter_store_locator/stores/$storeId/products?page=$page&per_page=$perPage';
      var response = await httpGet(Uri.parse(url),
          headers: {'Content-Type': 'application/json'});
      var jsonDecode = convert.jsonDecode(response.body);
      var products = <Product>[];

      if (jsonDecode is Map && isNotBlank(jsonDecode['message'])) {
        throw Exception(jsonDecode['message']);
      } else {
        if (jsonDecode is List) {
          for (var item in jsonDecode) {
            products.add(Product.fromJson(item));
          }
        }
        return products;
      }
    } catch (e) {
      rethrow;
    }
  }
}
