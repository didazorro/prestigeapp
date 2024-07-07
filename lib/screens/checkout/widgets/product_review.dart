import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/config.dart';
import '../../../common/tools/price_tools.dart';
import '../../../common/tools/tools.dart';
import '../../../models/index.dart';
import '../../../widgets/common/flux_image.dart';
import '../../../widgets/html/index.dart';
import '../../../widgets/product/quantity_selection/quantity_selection.dart';

const _kProductItemHeight = 100.0;

class ProductReviewWidget extends StatelessWidget {
  final ProductItem item;
  final bool isWalletTopup;
  final String? currency;

  const ProductReviewWidget({
    super.key,
    required this.item,
    this.isWalletTopup = false,
    this.currency,
  });

  @override
  Widget build(BuildContext context) {
    final appModel = Provider.of<AppModel>(context, listen: false);
    Map<String, dynamic>? rates = appModel.currencyRate;
    final secondaryColor = Theme.of(context).colorScheme.secondary;
    var addonsOptions = {};
    if (item.addonsOptions.isNotEmpty) {
      for (var element in item.addonsOptions.keys) {
        addonsOptions[element] =
            Tools.getFileNameFromUrl(item.addonsOptions[element]!);
      }
    }
    final currencySelected = isWalletTopup
        ? kAdvanceConfig.defaultCurrency?.currencyCode
        : appModel.currencyCode;
    if (currency != null && currencySelected == currency) {
      rates = null;
    }

    return Container(
      height: _kProductItemHeight,
      margin: const EdgeInsetsDirectional.symmetric(vertical: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(3),
            child: FluxImage(
              imageUrl: item.product?.imageFeature ?? '',
              fit: BoxFit.fitHeight,
              width: _kProductItemHeight,
              height: _kProductItemHeight,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  item.name ?? '',
                  style: TextStyle(
                    color: secondaryColor,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                if (addonsOptions.keys.isNotEmpty)
                  HtmlWidget(
                    addonsOptions.values.join(', '),
                  ),
                const SizedBox(height: 7),
                Text(
                  PriceTools.getCurrencyFormatted(
                    item.total ?? 0.0,
                    rates,
                    currency: currencySelected,
                  )!,
                  style: TextStyle(
                    color: secondaryColor,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 10),
                QuantitySelection(
                  enabled: false,
                  color: secondaryColor,
                  value: item.quantity,
                  style: QuantitySelectionStyle.normal,
                  width: 60,
                  height: 32,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
