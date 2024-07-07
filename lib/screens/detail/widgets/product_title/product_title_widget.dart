import 'package:flutter/material.dart';

import '../../../../models/index.dart' show Product;
import '../../../../modules/dynamic_layout/helper/helper.dart';
import '../../mixins/detail_product_price_mixin.dart';
import 'layouts/product_title_normal_web_widget.dart';
import 'layouts/product_title_normal_widget.dart';
import 'layouts/product_title_style01_widget.dart';
import 'product_title_state_ui.dart';

class ProductTitle extends StatefulWidget {
  const ProductTitle(
    this.product, {
    this.style = ProductTitleStyle.normal,
    this.detailProductPriceStateUI,
    this.builderBuyButton,
  });

  final Product? product;
  final ProductTitleStyle style;
  final DetailProductPriceStateUI? detailProductPriceStateUI;
  final Widget Function()? builderBuyButton;

  @override
  State<ProductTitle> createState() => _ProductTitleState();
}

class _ProductTitleState extends State<ProductTitle>
    with DetailProductPriceMixin {
  @override
  Product? get productData => widget.product;

  @override
  Widget build(BuildContext context) {
    final detailPriceData =
        widget.detailProductPriceStateUI ?? calculatorPrice();

    if (Layout.isDisplayDesktop(context)) {
      return ProductTitleNormalWebWidget(
          detailPriceData, widget.builderBuyButton);
    }

    switch (widget.style) {
      case ProductTitleStyle.style01:
        return ProductTitleStyle01Widget(detailPriceData);
      case ProductTitleStyle.normal:
      default:
        return ProductTitleNormalWidget(detailPriceData);
    }
  }
}
