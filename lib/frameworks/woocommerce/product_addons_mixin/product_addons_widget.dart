import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/index.dart';
import '../../../models/product_variant_model.dart';
import 'choice_item_widget.dart';
import 'file_upload_widget.dart';
import 'header_item.dart';
import 'quantity_item_widget.dart';
import 'textfield_item_widget.dart';
import 'total_price.dart';

class ProductAddonsWidget extends StatefulWidget {
  final Product product;
  final bool isProductInfoLoading;
  final Widget? appointmentWidget;
  const ProductAddonsWidget({
    required this.product,
    this.isProductInfoLoading = false,
    this.appointmentWidget,
  });

  @override
  StateProductAddonsWidget createState() => StateProductAddonsWidget();
}

class StateProductAddonsWidget extends State<ProductAddonsWidget> {
  ProductVariantModel get model => context.read<ProductVariantModel>();

  Map<String, Map<String, AddonsOption>> get selectedOptions =>
      model.selectedOptions;

  String? get durationUnit {
    if (widget.product.appointmentDurationUnit == 'hour') {
      return 'minute';
    }
    return widget.product.appointmentDurationUnit;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.endOfFrame.then((_) {
      if (mounted) {
        updateDefaultAddonsOption();
      }
    });
  }

  @override
  void didUpdateWidget(covariant ProductAddonsWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isProductInfoLoading != oldWidget.isProductInfoLoading) {
      updateDefaultAddonsOption();
    }
  }

  void updateDefaultAddonsOption() {
    final addOns = widget.product.addOns ?? [];
    if (!widget.isProductInfoLoading && addOns.isNotEmpty) {
      var options = Map<String, Map<String, AddonsOption>>.from(
        selectedOptions,
      );
      options.addAll(widget.product.defaultAddonsOptions);
      model.updateValues(selectedOptions: options);
      updateSelectOptions();
    }
  }

  void onSelectProductAddons({
    required String? key,
    required Map<String, AddonsOption> value,
  }) {
    if (key == null) {
      return;
    }
    var options = Map<String, Map<String, AddonsOption>>.from(selectedOptions);
    options[key] = value;
    model.updateValues(selectedOptions: options);
    updateSelectOptions();
  }

  void updateSelectOptions() {
    final options = <AddonsOption>[];
    for (var addOns in selectedOptions.values) {
      options.addAll(addOns.values);
    }
    widget.product.selectedOptions = options;
  }

  Widget renderItem({
    required ProductAddons item,
    required Map<String, AddonsOption> selected,
    String? key,
  }) {
    switch (item.type) {
      case AddonsType.heading:
        return HeaderItem(item);
      case AddonsType.multiple_choice:
      case AddonsType.radiobutton:
      case AddonsType.checkbox:
        return ChoiceItemWidget(
          item: item,
          selected: selected,
          durationUnit: durationUnit,
          onSelectProductAddons: (value) => onSelectProductAddons(
            key: key,
            value: value,
          ),
        );
      case AddonsType.input_multiplier:
        return QuantityItemWidget(
          item: item,
          selected: selected,
          durationUnit: durationUnit,
          onSelectProductAddons: (value) => onSelectProductAddons(
            key: key,
            value: value,
          ),
        );
      case AddonsType.file_upload:
        return FileUploadWidget(
          item: item,
          selected: selected,
          durationUnit: durationUnit,
          onSelectProductAddons: (value) => onSelectProductAddons(
            key: key,
            value: value,
          ),
        );
      case AddonsType.custom_text:
      case AddonsType.custom_textarea:
      case AddonsType.custom_price:
      default:
        return TextFieldItemWidget(
          item: item,
          selected: selected,
          durationUnit: durationUnit,
          onSelectProductAddons: (value) => onSelectProductAddons(
            key: key,
            value: value,
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final addOns = widget.product.addOns ?? [];
    final topAddOns = addOns.where((e) => e.showOnTop ?? true).toList();
    final endAddOns = addOns.where((e) => e.showOnTop == false).toList();
    if (addOns.isEmpty) {
      return widget.appointmentWidget ?? const SizedBox();
    }
    return Column(
      children: [
        TotalPrice(
          quantity: model.quantity,
          selectedOptions: selectedOptions,
        ),
        ...List.generate(topAddOns.length, (index) {
          final item = topAddOns[index];
          final key = item.name;
          final selected = Map<String, AddonsOption>.from(
            key != null ? (selectedOptions[key] ?? {}) : {},
          );
          return renderItem(
            item: item,
            selected: selected,
            key: key,
          );
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: widget.appointmentWidget ?? const SizedBox(),
        ),
        ...List.generate(endAddOns.length, (index) {
          final item = endAddOns[index];
          final key = item.name;
          final selected = Map<String, AddonsOption>.from(
            key != null ? (selectedOptions[key] ?? {}) : {},
          );
          return renderItem(
            item: item,
            selected: selected,
            key: key,
          );
        }),
      ],
    );
  }
}
