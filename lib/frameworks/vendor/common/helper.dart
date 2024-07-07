import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/entities/category.dart';
import '../store_detail/shop_model/shop_category_model.dart';
import '../store_detail/shop_screen/shop_product_list_screen.dart';

class Helper {
  static void navigateToShopList(BuildContext context, Category cat) {
    final model = Provider.of<ShopCategoryModel>(context, listen: false);
    model.setCatId(cat.id!);
    model.getProducts();
    Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => ShopProductListScreen.category(
              name: cat.name,
              ctx: context,
            )));
  }
}
