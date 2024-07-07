import 'package:flutter/material.dart';

import '../../../models/entities/product.dart';
import '../../../services/index.dart';
import 'index.dart';

class ProductCommonInfo extends StatelessWidget {
  final Product? product;
  final bool wrapSliver;
  final bool showBuyButton;
  final bool isProductInfoLoading;

  const ProductCommonInfo({
    super.key,
    this.product,
    this.wrapSliver = true,
    this.showBuyButton = true,
    required this.isProductInfoLoading,
  });

  @override
  Widget build(BuildContext context) {
    final product = this.product;
    if (product == null) {
      return const SizedBox();
    }
    switch (product.type) {
      case 'appointment':
        return Services().getBookingLayout(
          product: product,
          wrapSliver: wrapSliver,
        );
      case 'booking':
        return ListingBooking(product);
      case 'grouped':
        return GroupedProduct(product);
      case 'simple':
      case 'variable':
      default:
        return ProductVariant(
          product,
          showBuyButton: showBuyButton,
          isProductInfoLoading: isProductInfoLoading,
        );
    }
  }
}
