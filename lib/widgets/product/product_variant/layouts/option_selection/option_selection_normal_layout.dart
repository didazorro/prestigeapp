import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../common/constants.dart';
import '../../../../../common/extensions/buildcontext_ext.dart';
import '../../../../../common/tools/price_tools.dart';
import '../../../../../models/app_model.dart';

class OptionSelectionNormalLayout extends StatelessWidget {
  const OptionSelectionNormalLayout({
    required this.options,
    super.key,
    this.value,
    this.title,
    this.type,
    this.onChanged,
    this.optionsName,
  });

  final List<String?> options;
  final String? value;
  final String? title;
  final String? type;
  final Function? onChanged;
  final Map? optionsName;

  @override
  Widget build(BuildContext context) {
    var primaryColor = Theme.of(context).primaryColor;
    final colorAppMap = context.colorAppMap;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: Text(
                  title?.capitalize() ?? '',
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
        Wrap(
          spacing: 0.0,
          runSpacing: 12.0,
          children: List.generate(
            options.length,
            (index) {
              final item = options[index];
              var name = optionsName?[item] ?? item;
              if (type == 'price' && double.tryParse(name) != null) {
                name = PriceTools.getCurrencyFormatted(
                  name,
                  context.read<AppModel>().currencyRate,
                  currency: context.read<AppModel>().currency,
                );
              }
              final isSelected = item == value;
              final isColor = type == 'color';
              final colorItem = isColor
                  ? (item!.toUpperCase() == value!.toUpperCase()
                      ? HexColor(colorAppMap[item
                              .toString()
                              .replaceAll(' ', '_')
                              .toLowerCase()] ??
                          '#ffffff')
                      : HexColor(colorAppMap[item
                                  .toString()
                                  .replaceAll(' ', '_')
                                  .toLowerCase()] ??
                              '#ffffff')
                          .withOpacity(0.6))
                  : (item!.toUpperCase() == value!.toUpperCase()
                      ? primaryColor
                      : Colors.transparent);

              return GestureDetector(
                onTap: () => onChanged!(item),
                behavior: HitTestBehavior.opaque,
                child: Tooltip(
                  message: name.toString(),
                  verticalOffset: 32,
                  preferBelow: false,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                    margin: const EdgeInsets.only(
                      right: 12.0,
                      top: 8.0,
                    ),
                    padding:
                        isColor ? const EdgeInsets.all(5) : EdgeInsets.zero,
                    decoration: isColor && isSelected
                        ? BoxDecoration(
                            color: colorItem.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(25),
                          )
                        : null,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                      decoration: isColor
                          ? BoxDecoration(
                              color: colorItem,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                width: 0.5,
                                color: Theme.of(context)
                                    .colorScheme
                                    .secondary
                                    .withOpacity(0.3),
                              ),
                            )
                          : BoxDecoration(
                              color: colorItem,
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(
                                color: Theme.of(context)
                                    .colorScheme
                                    .secondary
                                    .withOpacity(0.3),
                              ),
                            ),
                      child: isColor
                          ? SizedBox(
                              height: 25,
                              width: 25,
                              child: isSelected
                                  ? Icon(
                                      Icons.check,
                                      color:
                                          colorItem.getColorBasedOnBackground,
                                      size: 16,
                                    )
                                  : const SizedBox(),
                            )
                          : Container(
                              constraints: const BoxConstraints(minWidth: 40),
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, bottom: 10),
                                child: Text(
                                  name,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: isSelected
                                        ? Colors.white
                                        : Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
