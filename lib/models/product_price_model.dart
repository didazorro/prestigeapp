import 'package:flutter/material.dart';

import '../common/constants.dart';
import '../services/index.dart';

class ProductPriceModel with ChangeNotifier {
  final Services _service = Services();

  double minFilterPrice = 0;
  double maxFilterPrice = kMaxPriceFilter;

  Future<void> getMinMaxPrices() async {
    final (min, max) = await _service.api.getMinMaxPrices();
    minFilterPrice = min ?? 0;
    maxFilterPrice = max ?? kMaxPriceFilter;
    notifyListeners();
  }
}
