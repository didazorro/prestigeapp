import 'package:async/async.dart';
import 'package:flutter/material.dart';

import '../../../common/constants.dart';
import '../../../models/entities/prediction.dart';
import '../../../models/entities/store/store.dart';
import '../../../services/services.dart';

class DokanStoresModel with ChangeNotifier {
  final Services _service = Services();

  DokanStoresModel();

  List<Store>? _stores;
  bool isLoading = false;
  int _currentPage = 0;
  bool _isEnd = false;

  String _currentNameSearch = '';
  Prediction? _prediction;
  int _radius = 5;

  int get radius => _radius;
  bool get isEnd => _isEnd;
  List<Store>? get stores => _stores;
  List<Store>? get mapStores =>
      _stores?.where((e) => e.lat != null && e.long != null).toList();

  CancelableOperation<List<Store>>? _cancelLoadStore;

  Future<void> loadStore({Function? onFinish}) async {
    isLoading = true;
    notifyListeners();
    _currentPage++;
    _cancelLoadStore =
        CancelableOperation.fromFuture(_service.api.getNearbyStores(
      prediction: _prediction,
      name: _currentNameSearch,
      radius: _radius,
      page: _currentPage,
      perPage: apiPageSize,
    )!);

    final data = await _cancelLoadStore!.value;

    _isEnd = data.length < apiPageSize;
    isLoading = false;

    onFinish?.call();

    if (data.isEmpty) {
      _stores ??= [];
      notifyListeners();
      return;
    }

    _stores = _currentPage > 1 ? [...stores ?? [], ...data] : data;
    isLoading = false;
    notifyListeners();
  }

  Future<void> refreshStore(
      {Prediction? prediction,
      String? name,
      int? radius,
      Function? onFinish}) async {
    if ((isLoading && _currentNameSearch != name) ||
        (isLoading && _currentPage == 0)) {
      // cancel the current request if search or refresh store
      await _cancelLoadStore?.cancel();
    } else if (isLoading && _currentNameSearch == name) {
      return;
    }

    _currentPage = 0;
    if (prediction != null || name != null || radius != null) {
      _stores = [];
    }

    _prediction = prediction ?? _prediction;
    _currentNameSearch = name ?? _currentNameSearch;
    _radius = radius ?? _radius;
    await loadStore(onFinish: onFinish);
  }

  Future<void> initStores({Function? onFinish}) async {
    _currentPage = 0;
    _stores = [];
    _prediction = null;
    _currentNameSearch = '';
    await loadStore(onFinish: onFinish);
  }
}
