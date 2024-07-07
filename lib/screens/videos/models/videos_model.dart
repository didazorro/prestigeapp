import 'package:flutter/material.dart';

import '../../../models/entities/product.dart';
import '../services/videos_services.dart';
import 'video.dart';

enum VideosState {
  loading,
  none,
  init;

  bool get isLoading => this == VideosState.loading;
}

class VideosModel extends ChangeNotifier {
  final String langCode;

  VideosModel({
    this.langCode = 'en',
  });

  final _videoService = VideosService();
  final _products = <Product>[];
  final _videos = <Video>[];
  var _state = VideosState.none;
  var _canLoadmore = true;
  var _autoFetch = true;

  List<Video> get videos => _videos;
  List<Product> get products => _products;
  VideosState get state => _state;

  bool get canActiveLoadmoreAuto => _autoFetch && _canLoadmore;

  /// Disable the loadmore function when a loadmore event is being executed.
  bool get canLoadmore => _canLoadmore;

  /// Disable the load more function when unable to load data on the last page.
  bool get autoFetch => _autoFetch;

  Future<void> loadMoreItem() async {
    if (_canLoadmore == false) {
      return;
    }

    _canLoadmore = false;
    _updateState(VideosState.loading);

    final listProduct = await _videoService.loadMoreItems(langCode);
    _autoFetch = listProduct.isNotEmpty;
    _products.addAll(listProduct);

    final listVideo = await _videoService.loadListVideo(listProduct);
    _videos.addAll(listVideo);

    _canLoadmore = true;
    _updateState(VideosState.none);
  }

  Future<void> init() async {
    _canLoadmore = false;
    _updateState(VideosState.loading);

    final listProduct = await _videoService.refreshItems(langCode);
    _autoFetch = listProduct.isNotEmpty;

    _products.clear();
    _products.addAll(listProduct);

    final listVideo = await _videoService.loadListVideo(_products);
    _videos.clear();
    _videos.addAll(listVideo);

    _canLoadmore = true;
    _updateState(VideosState.none);
  }

  void _updateState(VideosState state) {
    _state = state;
    notifyListeners();
  }
}
