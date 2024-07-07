import 'package:flutter/material.dart';

import '../../../models/entities/index.dart' show Product;
import '../../../services/index.dart';

class ProductDetailCategories extends StatelessWidget {
  final Product? product;

  const ProductDetailCategories(this.product);

  @override
  Widget build(BuildContext context) {
    if (product!.categories.isEmpty) {
      return const SizedBox();
    }
    return Services().widget.renderProductDetailCategories(context, product);
  }
}
