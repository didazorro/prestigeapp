import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../common/tools/price_tools.dart';
import '../../../models/index.dart';
import '../../../modules/dynamic_layout/helper/helper.dart';
import 'expansion_tile_widget.dart';

class TextFieldItemWidget extends StatefulWidget {
  final ProductAddons item;
  final Map<String, AddonsOption> selected;
  final void Function(Map<String, AddonsOption>)? onSelectProductAddons;
  final String? durationUnit;
  const TextFieldItemWidget({
    required this.item,
    required this.selected,
    this.onSelectProductAddons,
    this.durationUnit,
    super.key,
  });

  @override
  StateTextFieldItemWidget createState() => StateTextFieldItemWidget();
}

class StateTextFieldItemWidget extends State<TextFieldItemWidget> {
  final TextEditingController controller = TextEditingController();

  ProductAddons get item => widget.item;
  AddonsOption? get option =>
      (item.options?.isNotEmpty ?? false) ? item.options?.first : null;
  AddonsOption? get current =>
      option != null ? widget.selected['${option?.label}'] : null;

  @override
  void initState() {
    super.initState();
    controller.value = TextEditingValue(
      text: (isPrice ? current?.price : current?.label) ?? '',
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void onChanged(String? value) {
    final model = context.read<AppModel>();
    final rates = model.currencyRate;
    final currency = model.currency;
    final selected = Map<String, AddonsOption>.from(widget.selected);
    final addons = AddonsOption(
      parent: item.name,
      type: option?.type,
      label: value,
      price: item.price,
      display: item.display,
      fieldName: item.fieldName,
      priceType: item.priceType,
    );
    if (isPrice) {
      final price = double.tryParse('$value');
      final formattedPrice =
          PriceTools.getCurrencyFormatted(price, rates, currency: currency) ??
              value;
      addons.label = formattedPrice;
      addons.price = '${Helper.formatDouble(value) ?? 0.0}';
    }
    if (value?.isEmpty ?? true) {
      selected.remove(item.name);
    } else {
      selected['${item.name}'] = addons;
    }
    widget.onSelectProductAddons?.call(selected);
  }

  int get maxLines {
    switch (widget.item.type) {
      case AddonsType.custom_textarea:
        return 3;
      case AddonsType.custom_text:
      case AddonsType.custom_price:
      default:
        return 1;
    }
  }

  bool get isPrice => widget.item.type == AddonsType.custom_price;

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<AppModel>(context);
    final currency = model.currency;

    return ExpansionTileWidget(
      item: item,
      selected: widget.selected,
      subtitle: widget.selected[item.name]?.label ?? '',
      durationUnit: widget.durationUnit,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: CupertinoTextField(
            controller: controller,
            onChanged: onChanged,
            maxLines: maxLines,
            style: Theme.of(context).textTheme.bodyMedium,
            inputFormatters: isPrice
                ? [
                    FilteringTextInputFormatter.allow(
                      RegExp(r'^\d+\.?\d{0,2}'),
                    ),
                  ]
                : null,
            placeholder: isPrice
                ? PriceTools.getCurrencyFormatted(
                    0,
                    null,
                    currency: currency,
                  )
                : null,
            keyboardType: isPrice
                ? const TextInputType.numberWithOptions(
                    signed: false,
                    decimal: true,
                  )
                : null,
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
