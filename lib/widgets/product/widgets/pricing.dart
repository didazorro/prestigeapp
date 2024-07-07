import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/tools.dart';
import '../../../generated/l10n.dart';
import '../../../models/index.dart' show AppModel, Product;
import '../../../services/index.dart';

class ProductPricing extends StatelessWidget {
  final Product product;
  final bool hide;
  final bool showOnlyPrice;
  final TextStyle? priceTextStyle;

  const ProductPricing({
    super.key,
    required this.product,
    required this.hide,
    this.showOnlyPrice = false,
    this.priceTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    if (hide ||
        product.isEmptyProduct() ||
        Services().widget.hideProductPrice(context, product)) {
      return const SizedBox();
    }

    final currency = Provider.of<AppModel>(context, listen: false).currencyCode;
    final currencyRate = Provider.of<AppModel>(context).currencyRate;

    /// Calculate the Sale price
    var isSale = (product.onSale ?? false) &&
        PriceTools.getPriceProductValue(product, onSale: true) !=
            PriceTools.getPriceProductValue(product, onSale: false);

    if (product.isVariableProduct) {
      isSale = product.onSale ?? false;
    }

    var price = PriceTools.getPriceProduct(
      product,
      currencyRate,
      currency,
      onSale: true,
    )!;

    if (product.isVariableProduct) {
      final minPrice = double.tryParse('${product.minPrice}') ?? 0.0;
      final maxPrice = double.tryParse('${product.maxPrice}') ?? 0.0;

      if (maxPrice > minPrice && minPrice > 0.0) {
        price = '${PriceTools.getCurrencyFormatted(
          minPrice,
          currencyRate,
          currency: currency,
        )!} - ${PriceTools.getCurrencyFormatted(
          maxPrice,
          currencyRate,
          currency: currency,
        )!}';
      }
    } else if (product.isGroupedProduct) {
      price = '${S.of(context).from} ${PriceTools.getPriceProduct(
        product,
        currencyRate,
        currency,
        onSale: true,
      )}';
    } else if (ServerConfig().isListingType) {
      // Listing have a different logic
      price = PriceTools.getCurrencyFormatted(
          product.price ?? product.regularPrice ?? '0', null,
          currency: currency)!;
    }

    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.end,
      children: <Widget>[
        Text(
          price,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(
                fontWeight: FontWeight.w600,
              )
              .apply(fontSizeFactor: 0.8)
              .merge(priceTextStyle),
        ),

        /// Not show regular price for variant product (product.regularPrice = "").
        if (isSale && product.type != 'variable' && showOnlyPrice == false) ...[
          const SizedBox(width: 5),
          Text(
            product.type == 'grouped'
                ? ''
                : PriceTools.getPriceProduct(product, currencyRate, currency,
                    onSale: false)!,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(
                  fontWeight: FontWeight.w300,
                  color:
                      Theme.of(context).colorScheme.secondary.withOpacity(0.6),
                  decoration: TextDecoration.lineThrough,
                )
                .apply(fontSizeFactor: 0.8)
                .merge(
                  priceTextStyle?.copyWith(
                      color: priceTextStyle?.color?.withOpacity(0.6),
                      fontSize: priceTextStyle?.fontSize != null
                          ? priceTextStyle!.fontSize! - 2
                          : null),
                ),
          ),
        ],
      ],
    );
  }
}
