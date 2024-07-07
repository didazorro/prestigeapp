import 'package:flutter/material.dart';

class SearchWebModel extends ChangeNotifier {
  String? _searchText;

  SearchWebModel([String? text]) : _searchText = text;

  String? get searchText => _searchText;

  void search(String text) {
    _searchText = text;
    notifyListeners();
  }

  void clear() {
    _searchText = '';
  }
}
