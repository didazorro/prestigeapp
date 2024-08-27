import 'dart:async';

import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../common/constants.dart';
import '../data/boxes.dart';
import '../services/index.dart';
import 'entities/product.dart';
import 'mixins/language_mixin.dart';

class SearchModel extends ChangeNotifier with LanguageMixin {
  SearchModel() {
    getKeywords();
    _subLanguageChange = eventBus.on<EventChangeLanguage>().listen((event) {
      var oldName = _currentName;
      _currentName = '';
      loadProduct(name: oldName);
    });
  }

  @override
  void dispose() {
    _subLanguageChange?.cancel();
    super.dispose();
  }

  List<String> keywords = [];
  List<Product>? _products = [];
  dynamic _page;
  bool _isEnd = false;
  String? _currentName = '';
  late CancelableOperation _cancelLoadProduct;

  var category = '';
  var categoryName = '';
  var tag = '';
  var attribute = '';
  var attributeTerm = '';
  var listingLocation = '';

  bool isLoading = false;
  String? errMsg;

  bool get isEnd => _isEnd;

  StreamSubscription? _subLanguageChange;

  List<Product>? get products => _products;

  void _initPage() {
    if (!ServerConfig().isShopify) {
      _page = 1;
      return;
    }
    _page = null;
  }

  void _updatePage() {
    if (!ServerConfig().isShopify && _page != null) {
      _page++;
    }
  }

  Future<void> loadProduct(
      {String? name,
      bool hasFilter = false,
      userId,
      RefreshController? controller}) async {
    if (name != _currentName || hasFilter) {
      _currentName = name;
      // _page = 1;
      _initPage();
      _products = null;
      _isEnd = false;
    } else if (_products?.isNotEmpty ?? false) {
      // _page++;
      _updatePage();
    }

    if (!hasFilter) {
      if (_isEnd) return;
    }

    /// Cancel a previous product search request when a new request is created
    if (isLoading) {
      await _cancelLoadProduct.cancel();
    }

    isLoading = true;
    notifyListeners();

    List<Product> newProducts;

    _cancelLoadProduct = CancelableOperation.fromFuture(_searchProducts(
      name: name!,
      page: _page,
      userId: userId,
    ));

    newProducts = await _cancelLoadProduct.value;

    if (newProducts.isEmpty) {
      if (products?.isEmpty ?? true) {
        _products = <Product>[];
      }
      if (controller != null) {
        controller.loadComplete();
      }
      isLoading = false;
      _isEnd = true;
      notifyListeners();
      return;
    }

    if (products == null) _products = <Product>[];

    products!.addAll(newProducts);
    if (controller != null) {
      controller.loadComplete();
    }
    isLoading = false;
    notifyListeners();
  }

  Future<void> refresh({userId}) async {
    // _page = 1;
    _initPage();
    _products = <Product>[];
    await loadProduct(userId: userId);
  }

  void refreshProduct(List<Product>? product) {
    _products = product;
    notifyListeners();
  }

  void searchByFilter(
      Map<String, List<dynamic>> searchFilterResult, String searchText,
      {userId}) {
    if (searchFilterResult.isEmpty) clearFilter();

    searchFilterResult.forEach((key, value) {
      switch (key) {
        case 'categories':
          var categories = <String>[];
          if (value.isNotEmpty) {
            for (var item in value) {
              categories.add('${item.id}');
            }
            category = categories.join(',');
          } else {
            category = '';
          }
          categoryName = value.isNotEmpty ? '${value.first.name}' : '';
          break;
        case 'tags':
          var tags = <String>[];
          if (value.isNotEmpty) {
            for (var item in value) {
              tags.add('${item.id}');
            }
            tag = tags.join(',');
          } else {
            tag = '';
          }
          break;
        case 'listingLocation':
          listingLocation = value.isNotEmpty ? '${value.first.id}' : '';
          break;
        default:
          attribute = key;
          var terms = <String>[];
          if (value.isNotEmpty) {
            for (var item in value) {
              terms.add('${item.id}');
            }
            attributeTerm = terms.join(',');
          }
      }
    });

    loadProduct(
      name: searchText.isEmpty ? '' : searchText,
      hasFilter: true,
      userId: userId,
    );
  }

  void clearFilter() {
    category = '';
    categoryName = '';
    tag = '';
    attribute = '';
    attributeTerm = '';
  }

  Future<List<Product>> _searchProducts({
    required String name,
    dynamic page,
    userId,
  }) async {
    try {
      if (name.isEmpty || name.trim() == '') {
        return [];
      }

      int? indexPage;
      String? cursor;

      if (page is int) {
        indexPage = page;
      } else if (page is String) {
        cursor = page;
      }

      final pagingResponse = await Services().api.searchProducts(
            name: name,
            categoryId: category,
            tag: tag,
            attribute: attribute,
            attributeId: attributeTerm,
            page: indexPage,
            cursor: cursor,
            listingLocation: listingLocation,
            userId: userId,
          )!;
      final data = pagingResponse.data ?? [];
      _page = pagingResponse.cursor ?? _page;

      if (data.isNotEmpty && page == 1 && name.isNotEmpty) {
        if (keywords.contains(name)) {
          keywords.remove(name);
        }
        keywords.insert(0, name);
        saveKeywords(keywords);
      }
      errMsg = null;
      return data;
    } catch (err) {
      isLoading = false;
      errMsg = '⚠️ $err';
      notifyListeners();
      return <Product>[];
    }
  }

  void clearKeywords() {
    keywords = [];
    saveKeywords(keywords);
    notifyListeners();
  }

  void saveKeywords(List<String> keywords) {
    UserBox().recentSearches = keywords;
  }

  void getKeywords() {
    final list = UserBox().recentSearches;
    if (list.isNotEmpty) {
      keywords = list;
      notifyListeners();
    }
  }

  Future<List<Product>?> searchListingProducts(
      {String? name, required int page}) async {
    _products!.clear();
    try {
      isLoading = true;
      notifyListeners();
      final pagingResponse =
          await Services().api.searchProducts(name: name, page: page);
      _products = pagingResponse?.data ?? [];
      isLoading = false;
      errMsg = null;
      notifyListeners();
    } catch (err) {
      isLoading = false;
      errMsg =
          'There is an issue with the app during request the data, please contact admin for fixing the issues $err';
      notifyListeners();
    }
    return _products;
  }
}
