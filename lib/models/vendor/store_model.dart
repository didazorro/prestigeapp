import 'package:async/async.dart';
import 'package:flutter/material.dart';

import '../../common/constants.dart';
import '../../services/index.dart';
import '../entities/store/store.dart';

export '../entities/store/store.dart';

class StoreModel with ChangeNotifier {
  final Services _service = Services();

  StoreModel();

  List<Store>? _stores;
  List<Store>? lstFeaturedStores;
  bool isLoading = false;
  int _currentPage = 0;
  String _currentNameSearch = '';
  bool _isEnd = false;

  bool get isEnd => _isEnd;

  List<Store>? get stores => _stores;

  CancelableOperation? _cancelLoadStore;

  Future<List<Store>?> getFeaturedStores({
    int? page,
    int? perPage,
  }) async {
    if (lstFeaturedStores?.isNotEmpty ?? false) {
      return lstFeaturedStores;
    }
    try {
      var list = await _service.api.getFeaturedStores(
        page: page,
        perPage: perPage,
      );
      lstFeaturedStores = list;
      notifyListeners();
    } catch (err) {
      printLog('err $err');
    }
    return lstFeaturedStores;
  }

  // Can use search
  Future<void> loadStore({String name = '', Function? onFinish}) async {
    if ((isLoading && _currentNameSearch != name) ||
        (isLoading && _currentPage == 0)) {
      // cancel the current request if search or refresh store
      await _cancelLoadStore?.cancel();
    } else if (isLoading && _currentNameSearch == name) {
      return;
    }

    isLoading = true;
    notifyListeners();
    if (_currentNameSearch != name) {
      _currentPage = 1;
      _currentNameSearch = name;
    } else {
      _currentPage++;
    }
    if (_currentPage == 1) {
      _stores = null;
    }

    _isEnd = false;

    _cancelLoadStore = CancelableOperation.fromFuture(_service.api.searchStores(
      keyword: name,
      page: _currentPage,
    )!);

    final data = await _cancelLoadStore!.value;

    if (data.isEmpty) {
      if (onFinish != null) {
        onFinish();
      }
      _isEnd = true;
      isLoading = false;
      _stores ??= [];
      notifyListeners();
      return;
    }

    _stores = _currentPage > 1 ? [...stores ?? [], ...data] : data;
    isLoading = false;
    if (onFinish != null) {
      onFinish();
    }
    notifyListeners();
  }

  Future<void> refreshStore({String name = '', Function? onFinish}) async {
    _currentPage = 0;
    await loadStore(name: name, onFinish: onFinish);
  }
}
