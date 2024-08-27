import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/config.dart';
import '../../models/index.dart' show Product;
import '../../models/search_web_model.dart';
import '../../modules/dynamic_layout/helper/helper.dart';
import '../../modules/dynamic_layout/index.dart';
import 'layouts/products_backdrop_layout.dart';
import 'layouts/products_flatview_layout.dart';
import 'layouts/products_web_layout.dart';

class ProductsScreen extends StatelessWidget {
  final List<Product>? products;
  final ProductConfig? config;
  final Duration countdownDuration;
  final bool enableSearchHistory;
  final String? routeName;
  final bool autoFocusSearch;
  final String? searchText;

  const ProductsScreen({
    super.key,
    this.products,
    this.config,
    this.countdownDuration = Duration.zero,
    this.enableSearchHistory = false,
    this.routeName,
    this.searchText,
    this.autoFocusSearch = true,
  });

  @override
  Widget build(BuildContext context) {
    if (Layout.isDisplayDesktop(context)) {
      return ChangeNotifierProvider(
        create: (context) => SearchWebModel(searchText),
        child: ProductsWebLayout(
          products: products,
          config: config,
          countdownDuration: countdownDuration,
          autoFocusSearch: autoFocusSearch,
        ),
      );
    }
    if (kAdvanceConfig.enableProductBackdrop) {
      return ProductsBackdropLayout(
        products: products,
        config: config,
        countdownDuration: countdownDuration,
        autoFocusSearch: autoFocusSearch,
      );
    }
    return ProductsFlatviewLayout(
      products: products,
      config: config,
      countdownDuration: countdownDuration,
      autoFocusSearch: autoFocusSearch,
    );
  }
}
