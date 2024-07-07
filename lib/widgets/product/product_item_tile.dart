import 'package:flutter/material.dart';

import '../../common/tools.dart';
import '../../models/index.dart' show Product;
import '../../modules/dynamic_layout/config/product_config.dart';
import '../../services/services.dart';
import 'action_button_mixin.dart';
import 'index.dart'
    show
        CartButton,
        CartIcon,
        CartQuantity,
        HeartButton,
        ProductPricing,
        ProductRating,
        ProductTitle,
        StockStatus,
        StoreName;

class ProductItemTileView extends StatelessWidget with ActionButtonMixin {
  final Product item;
  final EdgeInsets? padding;
  final ProductConfig config;

  const ProductItemTileView({
    required this.item,
    this.padding,
    required this.config,
  });

  @override
  Widget build(BuildContext context) {
    var onSale = item.onSale ?? false;
    var price = double.tryParse(item.price ?? '0') ?? 0;
    var regularPrice = double.tryParse(item.regularPrice ?? '0') ?? 0;
    var sale = 0;
    if (onSale && regularPrice > 0 && price > 0) {
      sale = (100 - price / regularPrice * 100).toInt();
    }

    return InkWell(
      onTap: () => onTapProduct(context, product: item, config: config),
      child: Padding(
        padding: padding ?? const EdgeInsets.symmetric(vertical: 5.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(width: 8),
            Flexible(
              flex: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(2.0),
                child: Stack(
                  children: <Widget>[
                    Container(
                      child: getImageFeature(
                        () => onTapProduct(context,
                            product: item, config: config),
                      ),
                    ),
                    if (sale > 0)
                      InkWell(
                        onTap: () => onTapProduct(context,
                            product: item, config: config),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.only(
                              bottomRight: context.isRtl
                                  ? Radius.zero
                                  : const Radius.circular(8),
                              bottomLeft: context.isRtl
                                  ? const Radius.circular(8)
                                  : Radius.zero,
                            ),
                          ),
                          child: Text(
                            '$sale %',
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      )
                  ],
                ),
              ),
            ),
            const SizedBox(width: 4),
            Flexible(
              flex: 3,
              child: _ProductDescription(
                item: item,
                config: config,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getImageFeature(onTapProduct) {
    return GestureDetector(
      onTap: onTapProduct,
      child: ImageResize(
        url: item.imageFeature,
        size: kSize.medium,
        isResize: true,
        // height: _height,
        fit: ImageTools.boxFit(config.imageBoxfit),
      ),
    );
  }
}

class _ProductDescription extends StatelessWidget {
  final ProductConfig config;

  const _ProductDescription({
    required this.item,
    required this.config,
  });

  final Product item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: config.hPadding,
        vertical: config.vPadding,
      ),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (item.categoryName != null)
              Text(
                item.categoryName!.toUpperCase(),
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ProductTitle(
              product: item,
              hide: config.hideTitle,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15.0,
              ),
              maxLines: config.titleLine,
            ),
            const SizedBox(height: 4),
            StoreName(product: item, hide: config.hideStore),
            if (item.tagLine != null)
              Text(
                item.tagLine.toString(),
                maxLines: 1,
                style: const TextStyle(fontSize: 13),
              ),
            ProductPricing(product: item, hide: config.hidePrice),
            StockStatus(product: item, config: config),
            ProductRating(
              product: item,
              config: config,
            ),
            if (!config.showQuantity)
              Align(
                alignment:
                    context.isRtl ? Alignment.topLeft : Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: CartIcon(product: item, config: config),
                ),
              ),
            if (Services().widget.enableShoppingCart(item))
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: CartQuantity(product: item, config: config),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                if (config.showCartButton &&
                    Services().widget.enableShoppingCart(item))
                  CartButton(
                    product: item,
                    hide: !item.canBeAddedToCartFromList(
                            enableBottomAddToCart:
                                config.enableBottomAddToCart) &&
                        config.showCartButton,
                    enableBottomAddToCart: config.enableBottomAddToCart,
                  ),
                const Spacer(),
                if (config.showHeart && !item.isEmptyProduct())
                  CircleAvatar(child: HeartButton(product: item, size: 18)),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
