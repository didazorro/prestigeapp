import 'package:flutter/material.dart';
import 'package:inspireui/inspireui.dart';
import 'package:provider/provider.dart';

import '../../../common/tools/price_tools.dart';
import '../../../generated/l10n.dart';
import '../../../models/index.dart';
import 'expansion_tile_widget.dart';

class ChoiceItemWidget extends StatelessWidget {
  final ProductAddons item;
  final Map<String, AddonsOption> selected;
  final void Function(Map<String, AddonsOption>)? onSelectProductAddons;
  final String? durationUnit;
  const ChoiceItemWidget({
    required this.item,
    required this.selected,
    this.onSelectProductAddons,
    this.durationUnit,
  });

  void onTapItem(AddonsOption? option) {
    final value = Map<String, AddonsOption>.from(selected);
    final label = option?.label;
    switch (item.type) {
      case AddonsType.radiobutton:
      case AddonsType.multiple_choice:
        value.clear();
        if (label != null && option != null) {
          value[label] = option;
        }
        break;
      case AddonsType.checkbox:
        final isSelected = value[label] != null;
        if (isSelected) {
          value.remove(label);
        } else {
          if (label != null && option != null) {
            value[label] = option;
          }
        }
        break;
      default:
    }
    onSelectProductAddons?.call(value);
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionTileWidget(
      item: item,
      selected: selected,
      durationUnit: durationUnit,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Text.rich(
              TextSpan(text: item.name ?? '', children: [
                if (item.required ?? true)
                  const TextSpan(
                    text: ' *',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
              ]),
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: selected.isNotEmpty
                        ? null
                        : Theme.of(context)
                            .colorScheme
                            .secondary
                            .withOpacity(0.7),
                  ),
            ),
          ),
          if ((item.required ?? false) && (item.type?.isRadio ?? false))
            Text(
              S.of(context).mustSelectOneItem,
              style: TextStyle(
                fontSize: 10,
                color: selected.isNotEmpty
                    ? Theme.of(context).colorScheme.secondary
                    : Theme.of(context).colorScheme.secondary.withOpacity(0.7),
              ),
            ),
        ],
      ),
      subtitle: selected.keys.join(', '),
      children: [
        Wrap(
          children: [
            if (!(item.required ?? false) && item.type != AddonsType.checkbox)
              ChoiceItem(
                groupValue:
                    selected.keys.isNotEmpty ? selected.keys.first : null,
                isSelected: selected.isEmpty,
                option: AddonsOption(
                  type: item.type,
                ),
                label: S.of(context).none,
                onTap: () => onTapItem(null),
              ),
            ...List.generate(item.options?.length ?? 0, (index) {
              final option = item.options?[index];
              final isSelected = selected[option?.label] != null;
              return ChoiceItem(
                option: option,
                isSelected: isSelected,
                onTap: () => onTapItem(option),
                groupValue: selected.keys.isNotEmpty ? selected.keys.first : '',
                showPrice: !(item.hidePrice ?? false),
                showDuration: !(item.hideDuration ?? false),
              );
            })
          ],
        ),
      ],
    );
  }
}

class ChoiceItem extends StatelessWidget {
  final AddonsOption? option;
  final bool isSelected;
  final VoidCallback? onTap;
  final String? groupValue;
  final bool? showPrice;
  final bool? showDuration;
  final String? durationUnit;
  final String? label;
  const ChoiceItem({
    this.option,
    this.isSelected = false,
    this.onTap,
    this.groupValue,
    this.showPrice,
    this.showDuration,
    this.durationUnit,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<AppModel>(context);
    final rates = model.currencyRate;
    final duration = int.tryParse('${option?.duration}') ?? 0;
    final price = double.tryParse('${option?.price}') ?? 0.0;
    return Container(
      constraints: BoxConstraints(
        minWidth: MediaQuery.sizeOf(context).width * 0.4,
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (option?.type?.isRadio ?? false)
              IgnorePointer(
                child: Radio<String?>(
                  visualDensity: VisualDensity.compact,
                  groupValue: groupValue,
                  value: option?.label,
                  onChanged: (_) {},
                  activeColor: Theme.of(context).primaryColor,
                ),
              ),
            if (option?.type == AddonsType.checkbox)
              IgnorePointer(
                child: Checkbox(
                  visualDensity: VisualDensity.compact,
                  onChanged: (_) => onTap?.call(),
                  activeColor: Theme.of(context).primaryColor,
                  checkColor: Colors.white,
                  value: isSelected,
                ),
              ),
            Text(
              '${label ?? option?.label}',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: isSelected ? FontWeight.bold : null,
                  ),
            ),
            if ((showPrice ?? true) && price > 0)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Text(
                  '(${PriceTools.getCurrencyFormatted(option?.price, rates)})',
                  style: TextStyle(
                    fontWeight: isSelected ? FontWeight.bold : null,
                    fontSize: 13,
                  ),
                ),
              ),
            if ((showDuration ?? true) && duration > 0)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: Text(
                  '+ ${TimeAgo.toUnitString(
                    duration,
                    unit: durationUnit,
                  )}',
                  style: TextStyle(
                    fontWeight: isSelected ? FontWeight.bold : null,
                    fontSize: 13,
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
