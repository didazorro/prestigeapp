import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/config.dart';
import '../../common/tools/price_tools.dart';
import '../../generated/l10n.dart';
import '../../models/app_model.dart';
import '../../models/entities/product.dart';
import '../../models/entities/product_attribute.dart';
import '../../models/entities/product_component.dart';
import '../../models/entities/product_variation.dart';
import '../../modules/dynamic_layout/config/index.dart';
import '../../services/index.dart';
import '../../widgets/product/quantity_selection/quantity_selection.dart';
import '../../widgets/product/widgets/image.dart';
import '../../widgets/product/widgets/pricing.dart';

mixin ProductComponentsMixin {
  List<Widget> getProductComponentsWidget({
    required BuildContext context,
    String? lang,
    required Product product,
    required bool isProductInfoLoading,
    Map<String, SelectedProductComponent>? selectedComponents,
    Function? onChanged,
  }) {
    var cpPerItemPricing = product.cpPerItemPricing == true;
    final model = Provider.of<AppModel>(context);
    final rates = model.currencyRate;
    if (product.isCompositeProduct &&
        (product.components?.isNotEmpty ?? false)) {
      final listWidget = <Widget>[];
      product.components?.forEach((component) {
        var selectedComponent = selectedComponents?[component.id];

        listWidget.add(
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
            margin: const EdgeInsets.only(bottom: 4),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColorLight.withOpacity(0.7),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        component.name ?? '',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      if (component.required)
                        Text(
                          ' (*)',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(color: Colors.red),
                        ),
                      if (selectedComponent != null)
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: TextButton.icon(
                              onPressed: () {
                                selectedComponents?.remove(component.id);
                                onChanged?.call(selectedComponents);
                              },
                              style: TextButton.styleFrom(
                                  minimumSize: Size.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  backgroundColor:
                                      Theme.of(context).colorScheme.error),
                              icon: const Icon(
                                Icons.close,
                                size: 12,
                                color: Colors.white,
                              ),
                              label: Text(S.of(context).clear,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ))),
                        )
                    ],
                  ),
                ),
                if (selectedComponent != null)
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                      const SizedBox(width: 5),
                      Text(
                        PriceTools.getCurrencyFormatted(
                                selectedComponent.getPrice(), rates) ??
                            '',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      const SizedBox(width: 4),
                    ],
                  )
              ],
            ),
          ),
        );
        component.products?.forEach((product) {
          listWidget.add(ProductItem(
              product: product,
              cpPerItemPricing: cpPerItemPricing,
              onSelected: (ProductVariation? variant) {
                var key = component.id ?? '';
                var newItem = SelectedProductComponent(
                    product: product,
                    component: component,
                    quantity: 1,
                    variant: variant,
                    cpPerItemPricing: cpPerItemPricing);
                if (selectedComponents == null) {
                  selectedComponents = {key: newItem};
                } else {
                  selectedComponents![key] = newItem;
                }
                onChanged?.call(selectedComponents);
              },
              onChanged: (SelectedProductComponent selectedComponent) {
                selectedComponents![selectedComponent.component.id ?? ''] =
                    selectedComponent;
                onChanged?.call(selectedComponents);
              },
              selectedComponent: selectedComponents?[component.id]));
          listWidget.add(const SizedBox(height: 5));
        });
      });

      return listWidget;
    }
    if (product.isCompositeProduct && isProductInfoLoading) {
      return [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: kLoadingWidget(context),
        )
      ];
    }
    return const [SizedBox()];
  }
}

class ProductItem extends StatefulWidget {
  const ProductItem({
    super.key,
    required this.product,
    required this.onSelected,
    required this.onChanged,
    this.selectedComponent,
    required this.cpPerItemPricing,
  });
  final Product product;
  final Function(ProductVariation? variant) onSelected;
  final Function(SelectedProductComponent) onChanged;
  final SelectedProductComponent? selectedComponent;
  final bool cpPerItemPricing;

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  var _mapAttrs = <String?, String?>{};
  List<ProductVariation>? _variations;
  bool _loading = false;

  @override
  void didUpdateWidget(covariant ProductItem oldWidget) {
    var currentSelected = widget.selectedComponent != null &&
        widget.selectedComponent?.product.id == widget.product.id;
    var oldSelected = oldWidget.selectedComponent != null &&
        oldWidget.selectedComponent?.product.id == oldWidget.product.id;
    if (currentSelected != oldSelected &&
        currentSelected == true &&
        widget.product.isVariableProduct &&
        (_variations?.isEmpty ?? true)) {
      setState(() {
        _loading = true;
      });
      Services().api.getProductVariations(widget.product)!.then((value) {
        setState(() {
          _loading = false;
          _variations = value!.toList();
        });

        if (_variations?.isNotEmpty ?? false) {
          _updateMapAttrs(_variations?.first);
          widget.onChanged(
              widget.selectedComponent!.copyWith(variant: _variations?.first));
        }
      }).catchError((_) {
        setState(() {
          _loading = false;
        });
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  void _updateMapAttrs(ProductVariation? variant) {
    for (var attribute in variant?.attributes ?? []) {
      _mapAttrs.update(attribute.name, (value) => value, ifAbsent: () {
        return attribute.option;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final lang = Provider.of<AppModel>(context, listen: false).langCode;
    final currency = Provider.of<AppModel>(context, listen: false).currencyCode;
    final currencyRate = Provider.of<AppModel>(context).currencyRate;

    var selected = widget.selectedComponent != null &&
        widget.selectedComponent?.product.id == widget.product.id;
    var variant = selected ? widget.selectedComponent?.variant : null;
    if (variant == null && (_variations?.isNotEmpty ?? false)) {
      variant = _variations?.first;
      _updateMapAttrs(_variations?.first);
    }
    var inStock = widget.product.inStock ?? false;

    var hidePrice = !widget.cpPerItemPricing;
    return GestureDetector(
      onTap: inStock
          ? () {
              widget.onSelected(variant);
            }
          : null,
      child: Container(
        color: Theme.of(context).cardColor,
        child: Column(
          children: [
            Row(
              children: [
                ProductImage(
                  width: 100,
                  product: widget.product,
                  offset: null,
                  config: ProductConfig.empty(),
                  onTapProduct: () {},
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.product.name ?? '',
                          style: selected
                              ? Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).primaryColor)
                              : Theme.of(context).textTheme.titleSmall),
                      const SizedBox(height: 5),
                      if (variant == null && !hidePrice)
                        ProductPricing(
                          product: widget.product,
                          hide: false,
                        ),
                      if (variant != null && !hidePrice)
                        Text(
                          PriceTools.getCurrencyFormatted(
                              variant.price, currencyRate,
                              currency: currency)!,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                fontWeight: FontWeight.w600,
                              )
                              .apply(fontSizeFactor: 0.8),
                        ),
                      if (!inStock)
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Text(
                            S.of(context).outOfStock,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: Colors.red),
                          ),
                        )
                    ],
                  ),
                ),
                const SizedBox(width: 5),
                if (selected)
                  QuantitySelection(
                    enabled: true,
                    width: 25,
                    height: 25,
                    quantityStep: 1,
                    enabledTextBox: true,
                    color: Theme.of(context).colorScheme.secondary,
                    limitSelectQuantity:
                        widget.selectedComponent?.component.maxQuantity ?? 0,
                    value: widget.selectedComponent?.quantity ?? 0,
                    onChanged: (value) {
                      widget.onChanged(
                          widget.selectedComponent!.copyWith(quantity: value));
                      return true;
                    },
                    style: QuantitySelectionStyle.style02,
                  )
              ],
            ),
            if (selected && _loading)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: kLoadingWidget(context),
              ),
            if (selected &&
                widget.product.isVariableProduct &&
                (_variations?.isNotEmpty ?? false))
              ...Services()
                  .widget
                  .getProductAttributeWidget(lang, widget.product, _mapAttrs, ({
                ProductAttribute? attr,
                String? val,
                List<ProductVariation>? variations,
                Map<String?, String?>? mapAttribute,
                Function? onFinish,
              }) {
                Services().widget.onSelectProductVariant(
                      attr: attr!,
                      val: val,
                      variations: variations!,
                      mapAttribute: mapAttribute!,
                      onFinish: (Map<String?, String?> mapAttribute,
                          ProductVariation? variation) {
                        setState(() {
                          _mapAttrs = mapAttribute;
                        });
                        if (variation != null) {
                          widget.onChanged(widget.selectedComponent!
                              .copyWith(variant: variation));
                        } else {
                          widget.onChanged(
                              widget.selectedComponent!.removeVariant());
                        }
                      },
                    );
              }, _variations ?? [])
          ],
        ),
      ),
    );
  }
}
