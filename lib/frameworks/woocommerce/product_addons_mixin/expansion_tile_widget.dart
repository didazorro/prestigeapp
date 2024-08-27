import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inspireui/widgets/timeago/timeago.dart';
import 'package:provider/provider.dart';

import '../../../common/theme/colors.dart';
import '../../../common/tools/price_tools.dart';
import '../../../models/app_model.dart';
import '../../../models/entities/product_addons.dart';

class ExpansionTileWidget extends StatelessWidget {
  final ProductAddons item;
  final Map<String, AddonsOption> selected;
  final Widget? title;
  final String? subtitle;
  final List<Widget>? children;
  final String? durationUnit;
  const ExpansionTileWidget({
    required this.item,
    this.title,
    required this.subtitle,
    required this.selected,
    this.children,
    this.durationUnit,
  });

  String? get description {
    if (item.descriptionEnable ?? false) {
      return null;
    }
    return item.description;
  }

  bool get isPrice => item.type == AddonsType.custom_price;

  double get price => double.tryParse('${item.price}') ?? 0.0;
  bool get showPrice => !(item.hidePrice ?? false) && price > 0;

  int get duration => int.tryParse('${item.duration}') ?? 0;
  bool get showDuration => !(item.hideDuration ?? false) && duration > 0;

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<AppModel>(context);
    final rates = model.currencyRate;
    return ExpansionTile(
      trailing: const Icon(CupertinoIcons.plus_circle_fill, size: 25),
      title: ListTile(
        visualDensity: VisualDensity.compact,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title ??
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Text.rich(
                        TextSpan(
                          text: item.name ?? '',
                          children: [
                            if (item.required ?? true)
                              const TextSpan(
                                text: ' *',
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                          ],
                        ),
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: selected.isNotEmpty
                                      ? null
                                      : Theme.of(context)
                                          .colorScheme
                                          .secondary
                                          .withOpacity(0.7),
                                ),
                      ),
                    ),
                    if (!isPrice && showPrice)
                      Text(
                        ' (${PriceTools.getCurrencyFormatted(item.price, rates)})',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: selected.isNotEmpty
                                      ? null
                                      : Theme.of(context)
                                          .colorScheme
                                          .secondary
                                          .withOpacity(0.7),
                                  fontSize: 13,
                                ),
                      ),
                    if (!isPrice && showDuration)
                      Text(
                        ' + ${TimeAgo.toUnitString(
                          duration,
                          unit: durationUnit,
                        )}',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: selected.isNotEmpty
                                      ? null
                                      : Theme.of(context)
                                          .colorScheme
                                          .secondary
                                          .withOpacity(0.7),
                                  fontSize: 13,
                                ),
                      ),
                  ],
                ),
            if (description?.isNotEmpty ?? false)
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  '${item.description}',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: kGrey400,
                      ),
                ),
              )
          ],
        ),
        subtitle: (subtitle?.isNotEmpty ?? false)
            ? Text(
                '$subtitle',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
              )
            : null,
        contentPadding: EdgeInsets.zero,
      ),
      children: children ?? [],
    );
  }
}
