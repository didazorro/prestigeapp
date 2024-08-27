import 'package:flutter/cupertino.dart';

import '../route.dart';

mixin StoreLocatorServiceMixin {
  dynamic getStoreLocatorRoutesWithSettings(RouteSettings settings) {
    return StoreLocatorRoute.getRoutesWithSettings(settings);
  }
}
