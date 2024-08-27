import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/tools/price_tools.dart';
import '../../../generated/l10n.dart';
import '../../../models/index.dart';

class TotalPrice extends StatelessWidget {
  final int quantity;
  final Map<String, Map<String, AddonsOption>> selectedOptions;
  const TotalPrice({
    required this.quantity,
    required this.selectedOptions,
    super.key,
  });

  double getProductOptionsPrice(int quantity) {
    var price = 0.0;
    final options = <AddonsOption>[];
    for (var addOns in selectedOptions.values) {
      options.addAll(addOns.values);
    }
    if (selectedOptions.isEmpty) {
      return price;
    }

    for (var option in options) {
      var optionPrice = (double.tryParse(option.price ?? '0.0') ?? 0.0);
      if (option.isQuantityBased) {
        optionPrice *= quantity;
      }
      price += optionPrice;
    }
    return price;
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<AppModel>(context);
    final rates = model.currencyRate;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
      margin: const EdgeInsets.only(bottom: 4),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorLight.withOpacity(0.7),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              S.of(context).options.toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(
              S.of(context).total,
              style: TextStyle(
                fontSize: 11,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
          const SizedBox(width: 4),
          Text(
            PriceTools.getCurrencyFormatted(
              getProductOptionsPrice(quantity),
              rates,
            )!,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(width: 4),
        ],
      ),
    );
  }
}
