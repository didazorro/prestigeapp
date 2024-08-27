import 'package:flutter/cupertino.dart';
import 'package:fstore/common/config.dart';
import 'package:fstore/models/entities/product.dart';
import 'package:fstore/models/user_model.dart';
import 'package:provider/provider.dart';

import '../route.dart';
import '../views/information_table.dart';
import '../views/tired_price_table.dart';

mixin B2BKingServiceMixin {
  /// render tired price table  on product detail screen
  Widget renderTiredPriceTable(Product product) =>
      TiredPriceTable(product: product);

  Widget renderCustomInformationTable(Product product) =>
      InformationTable(product: product);

  dynamic getB2BKingRoutesWithSettings(RouteSettings settings) {
    return B2BKingRoute.getRoutesWithSettings(settings);
  }

  bool hideProductPrice(BuildContext context, Product? product) {
    final user = Provider.of<UserModel>(context, listen: false).user;
    final disabled = kAdvanceConfig.b2bKingConfig.enabled == true &&
        kAdvanceConfig.b2bKingConfig.guestAccessRestriction ==
            'replace_prices_quote' &&
        user == null;
    return disabled;
  }
}
