import 'package:flutter/material.dart';

import '../../models/index.dart' show Product;
import '../../modules/dynamic_layout/config/product_config.dart';
import 'action_button_mixin.dart';
import 'index.dart'
    show
        ProductImage,
        ProductPricing,
        ProductRating,
        ProductTitle,
        SaleProgressBar,
        StockStatus;
import 'widgets/on_sale.dart';

class ProductQuiltedCard extends StatelessWidget with ActionButtonMixin {
  final Product item;
  final double width;
  final double? maxWidth;
  final double? offset;
  final ProductConfig config;
  final Axis axis;

  const ProductQuiltedCard({
    required this.item,
    required this.width,
    this.maxWidth,
    this.offset,
    required this.config,
    this.axis = Axis.vertical,
  });

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(config.borderRadius ?? 12);

    Widget child = Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 12.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Column(
                children: [
                  if (item.onSale ?? false) const SizedBox(height: 12),
                  ProductImage(
                    width: width * 2 / 3,
                    product: item,
                    config: config,
                    ratioProductImage: config.imageRatio,
                    offset: offset,
                    onTapProduct: () => onTapProduct(
                      context,
                      product: item,
                      config: config,
                    ),
                  ),
                ],
              ),
              Positioned.directional(
                end: 8,
                top: 0,
                textDirection: Directionality.of(context),
                child: ProductOnSale(
                  product: item,
                  config: ProductConfig.empty()..hMargin = 0,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius:
                        BorderRadius.circular((config.borderRadius ?? 6) * 0.5),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          ProductTitle(
            product: item,
            hide: config.hideTitle,
            maxLines: config.titleLine,
            textCenter: true,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 4),
          StockStatus(
            product: item,
            config: config,
          ),
          const SizedBox(height: 4),
          ProductRating(
            product: item,
            config: config,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: SaleProgressBar(
              width: width,
              product: item,
              show: config.showCountDown,
            ),
          ),
          const SizedBox(height: 12),
          ProductPricing(
            product: item,
            hide: config.hidePrice,
            priceTextStyle: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
    if (axis == Axis.horizontal) {
      child = ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(config.borderRadius ?? 0),
          bottomLeft: Radius.circular(config.borderRadius ?? 0),
        ),
        child: Row(
          children: [
            ProductImage(
              width: width / 2,
              product: item,
              config: config.copyWith(borderRadius: 0),
              ratioProductImage: config.imageRatio,
              offset: -2,
              onTapProduct: () =>
                  onTapProduct(context, product: item, config: config),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.only(end: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ProductTitle(
                      product: item,
                      hide: config.hideTitle,
                      maxLines: config.titleLine,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    StockStatus(
                      product: item,
                      config: config,
                    ),
                    const SizedBox(height: 4),
                    ProductRating(
                      product: item,
                      config: config,
                    ),
                    SaleProgressBar(
                      width: width,
                      product: item,
                      show: config.showCountDown,
                    ),
                    const SizedBox(height: 12),
                    ProductPricing(
                      product: item,
                      hide: config.hidePrice,
                      priceTextStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    final boxShadow = config.boxShadow;

    return GestureDetector(
      onTap: () => onTapProduct(context, product: item, config: config),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: Theme.of(context).cardColor,
          boxShadow: [
            if (boxShadow != null)
              BoxShadow(
                color: Theme.of(context).primaryColor.withOpacity(0.15),
                offset: Offset(
                  boxShadow.x,
                  boxShadow.y,
                ),
                spreadRadius: boxShadow.spreadRadius,
                blurRadius: boxShadow.blurRadius,
              ),
          ],
        ),
        child: ClipRRect(
          borderRadius: borderRadius,
          child: child,
        ),
      ),
    );
  }
}
