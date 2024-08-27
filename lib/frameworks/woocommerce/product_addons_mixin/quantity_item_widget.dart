import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../models/index.dart';
import 'expansion_tile_widget.dart';

class QuantityItemWidget extends StatefulWidget {
  final ProductAddons item;
  final Map<String, AddonsOption> selected;
  final void Function(Map<String, AddonsOption>)? onSelectProductAddons;
  final String? durationUnit;
  const QuantityItemWidget({
    required this.item,
    required this.selected,
    this.onSelectProductAddons,
    this.durationUnit,
    super.key,
  });

  @override
  StateQuantityItemWidget createState() => StateQuantityItemWidget();
}

class StateQuantityItemWidget extends State<QuantityItemWidget> {
  final TextEditingController controller = TextEditingController();

  ProductAddons get item => widget.item;
  AddonsOption? get option =>
      (item.options?.isNotEmpty ?? false) ? item.options?.first : null;
  AddonsOption? get current =>
      option != null ? widget.selected['${option?.label}'] : null;

  @override
  void initState() {
    super.initState();
    controller.value =
        TextEditingValue(text: '${int.tryParse('${current?.label}') ?? ''}');
  }

  void onChangedValue(String? value) {
    var selected = Map<String, AddonsOption>.from(widget.selected);
    final amount = int.tryParse('$value');
    final addons = AddonsOption(
      parent: item.name,
      type: option?.type,
      label: amount?.toString(),
      display: item.display,
      fieldName: item.fieldName,
      priceType: item.priceType,
    );
    if (amount == null) {
      selected.remove(item.name);
    } else {
      addons.price = '${(double.tryParse('${item.price}') ?? 0.0) * amount}';
      selected['${item.name}'] = addons;
    }
    widget.onSelectProductAddons?.call(selected);
  }

  void onTapAdd() {
    final amount = (int.tryParse(controller.text) ?? 0) + 1;
    onChangedValue(amount.toString());
    controller.value = TextEditingValue(text: amount.toString());
  }

  void onTapRemove() {
    var amount = (int.tryParse(controller.text) ?? 0) - 1;
    if (amount < 0) {
      amount = 0;
    }
    onChangedValue(amount.toString());
    controller.value = TextEditingValue(text: amount.toString());
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionTileWidget(
      item: widget.item,
      selected: widget.selected,
      subtitle: widget.selected[widget.item.name]?.label ?? '',
      durationUnit: widget.durationUnit,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Expanded(
                child: CupertinoTextField(
                  style: Theme.of(context).textTheme.bodyMedium,
                  controller: controller,
                  onChanged: onChangedValue,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                      RegExp(r'[0-9]'),
                    )
                  ],
                  keyboardType: const TextInputType.numberWithOptions(
                    signed: false,
                    decimal: false,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                height: 30,
                width: 30,
                child: IconButton(
                  padding: const EdgeInsets.all(2),
                  onPressed: onTapRemove,
                  icon: Icon(
                    Icons.remove,
                    size: 18,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              const SizedBox(width: 5),
              SizedBox(
                height: 30,
                width: 30,
                child: IconButton(
                  padding: const EdgeInsets.all(2),
                  onPressed: onTapAdd,
                  icon: Icon(
                    Icons.add,
                    size: 18,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
