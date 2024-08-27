import 'package:flutter/material.dart';
import 'package:fstore/common/constants.dart';

import 'views/store_locator_screen.dart';

class StoreLocatorRoute {
  static dynamic getRoutesWithSettings(RouteSettings settings) {
    final routes = {
      RouteList.storeLocator: (context) => const StoreLocatorScreen(),
    };
    return routes;
  }
}
