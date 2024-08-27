import 'dart:math';

import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/constants.dart';
import '../../generated/l10n.dart';
import '../../models/app_model.dart';
import '../../models/entities/filter_attribute.dart';
import '../../models/entities/filter_sorty_by.dart';
import '../../models/product_model.dart';
import '../../services/service_config.dart';
import '../../services/services.dart';
import 'filters/attribute_filter_widget.dart';
import 'filters/brand_filter_widget.dart';
import 'filters/category_filter_widget.dart';
import 'filters/multi_attribute_filter_widget.dart';
import 'filters/tag_filter_widget.dart';

class WebFilterWidget extends StatefulWidget {
  const WebFilterWidget({
    super.key,
    this.onFilter,
    this.onApply,
    this.allowMultipleCategory = false,
    this.allowMultipleTag = false,
    this.minPrice,
    this.maxPrice,
    this.sortBy,
    this.categoryIds,
    this.brandIds,
    this.minFilterPrice,
    this.maxFilterPrice,
    this.selectedAttributes,
    this.tagIds,
  });

  final void Function({
    dynamic minPrice,
    dynamic maxPrice,
    List<String>? categoryId,
    String? categoryName,
    List<String>? tagId,
    String? listingLocationId,
    FilterSortBy? sortBy,
    String? search,
    bool? isSearch,
    List<String>? brandIds,
    Map<FilterAttribute, List<SubAttribute>>? attributes,
  })? onFilter;

  final VoidCallback? onApply;
  final bool allowMultipleCategory;
  final bool allowMultipleTag;
  final double? minPrice;
  final double? maxPrice;
  final List<String>? brandIds;
  final List<String>? categoryIds;
  final List<String>? tagIds;
  final FilterSortBy? sortBy;
  final double? minFilterPrice;
  final double? maxFilterPrice;
  final Map<FilterAttribute, List<SubAttribute>>? selectedAttributes;

  @override
  State<WebFilterWidget> createState() => _WebFilterWidgetState();
}

class _WebFilterWidgetState extends State<WebFilterWidget> {
  late double minPrice = widget.minPrice ?? 0.0;
  late double maxPrice = widget.maxPrice ?? 0.0;
  FilterSortBy? _currentSortBy;
  List<String>? _brandId;
  List<String>? _tagId;
  late List<String> _categoryId = widget.categoryIds ?? [];

  Map<FilterAttribute, List<SubAttribute>>? _selectedAttributes;

  AppModel get appModel => context.read<AppModel>();
  ProductModel get productModel => context.read<ProductModel>();
  String? get currency => appModel.currency;
  Map<String, dynamic> get currencyRate => appModel.currencyRate;
  List<String>? get categoryId => _categoryId;

  double get minFilterPrice => min(minPrice, widget.minFilterPrice ?? 0);
  double get maxFilterPrice =>
      max(maxPrice, widget.maxFilterPrice ?? kMaxPriceFilter);

  void _onFilter({
    String? categoryName,
    bool? isSearch,
    String? listingLocationId,
    List<String>? brandIds,
  }) =>
      widget.onFilter?.call(
        minPrice: minPrice,
        maxPrice: maxPrice,
        sortBy: _currentSortBy,
        brandIds: brandIds,
        categoryId: categoryId,
        categoryName: categoryName ?? '',
        tagId: _tagId,
        isSearch: isSearch,
        listingLocationId: listingLocationId ?? productModel.listingLocationId,
        attributes: _selectedAttributes,
      );

  @override
  void initState() {
    super.initState();
    _currentSortBy = widget.sortBy;
    _brandId = widget.brandIds;
    _selectedAttributes = widget.selectedAttributes;
    _tagId = widget.tagIds;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              renderPriceSlider(),
              Services().widget.renderFilterSortBy(
                context,
                filterSortBy: _currentSortBy,
                showDivider: true,
                useExpansionStyle: false,
                onFilterChanged: (filterSortBy) {
                  setState(() {
                    _currentSortBy = filterSortBy;
                  });
                  _onFilter();
                },
              ),
              if (!ServerConfig().isListingType &&
                  ServerConfig().type != ConfigType.shopify) ...[
                const SizedBox(height: 10),
                CategoryFilterWidget(
                  categoryId: _categoryId,
                  useExpansionStyle: false,
                  allowMultiple: widget.allowMultipleCategory,
                  onFilter: (category) {
                    _categoryId = category;

                    _onFilter(
                      categoryName: null,
                      isSearch: false,
                    );
                  },
                ),
                const SizedBox(height: 10),
                BrandFilterWidget(
                  brandId: _brandId,
                  useExpansionStyle: false,
                  onChanged: (p0) {
                    _brandId = p0;
                    _onFilter(brandIds: p0);
                  },
                ),
                const SizedBox(height: 10),
                if (ServerConfig().isWooPluginSupported)
                  MultiAttributeFilterWidget(
                    onChanged: (attrs) {
                      setState(() {
                        _selectedAttributes = attrs;
                      });
                      _onFilter();
                    },
                    useExpansionStyle: false,
                  )
                else
                  AttributeFilterWidget(
                    onChanged: (attrs) {
                      setState(() {
                        _selectedAttributes = attrs;
                      });
                      _onFilter();
                    },
                    useExpansionStyle: false,
                  ),
                const SizedBox(height: 10),
                TagFilterWidget(
                  tagId: _tagId,
                  allowMultiple: widget.allowMultipleTag,
                  useExpansionStyle: false,
                  onChanged: (tagId) {
                    _tagId = tagId;
                    _onFilter();
                  },
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget renderPriceSlider() {
    var primaryColor = Services().widget.enableProductBackdrop
        ? Colors.white
        : Theme.of(context).primaryColor;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).price,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.w700, fontSize: 17),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: SizedBox(
                  height: 40,
                  child: PriceInputWidget(
                    value: minPrice,
                    onChanged: (p0) {
                      EasyDebounce.cancel('changeMinPrice');
                      setState(() {
                        minPrice = p0;
                      });
                      EasyDebounce.debounce(
                        'changeMinPrice',
                        const Duration(milliseconds: 1500),
                        () {
                          _onFilter();
                        },
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(width: 16),
              const Icon(CupertinoIcons.minus),
              const SizedBox(width: 16),
              Expanded(
                child: SizedBox(
                  height: 40,
                  child: PriceInputWidget(
                    value: maxPrice,
                    onChanged: (p0) {
                      EasyDebounce.cancel('changeMaxPrice');
                      setState(() {
                        maxPrice = p0;
                      });
                      EasyDebounce.debounce(
                        'changeMaxPrice',
                        const Duration(milliseconds: 1500),
                        () {
                          _onFilter();
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        SliderTheme(
          data: SliderThemeData(
            activeTrackColor: primaryColor,
            inactiveTrackColor:
                Theme.of(context).primaryColorLight.withOpacity(0.5),
            activeTickMarkColor: Theme.of(context).primaryColorLight,
            inactiveTickMarkColor:
                Theme.of(context).colorScheme.secondary.withOpacity(0.5),
            overlayColor: primaryColor.withOpacity(0.2),
            thumbColor: Colors.white,
            showValueIndicator: ShowValueIndicator.always,
            minThumbSeparation: 0,
            trackShape: CustomTrackShape(),
          ),
          child: RangeSlider(
            min: minFilterPrice,
            max: maxFilterPrice,
            divisions: kFilterDivision,
            values: RangeValues(minPrice, maxPrice),
            onChanged: (RangeValues value) {
              EasyDebounce.cancel('slider');
              setState(() {
                minPrice = value.start;
                maxPrice = value.end;
              });
              EasyDebounce.debounce(
                'slider',
                const Duration(milliseconds: 1500),
                () {
                  _onFilter();
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

class PriceInputWidget extends StatefulWidget {
  const PriceInputWidget({
    super.key,
    this.value,
    required this.onChanged,
  });

  final double? value;
  final void Function(double) onChanged;

  @override
  State<PriceInputWidget> createState() => _PriceInputWidgetState();
}

class _PriceInputWidgetState extends State<PriceInputWidget> {
  final _ctrlPrice = TextEditingController(text: '0');
  final _focusNodePrice = FocusNode();

  AppModel get appModel => context.read<AppModel>();
  String? get currency => appModel.currency;
  Map<String, dynamic> get currencyRate => appModel.currencyRate;

  void _formatPrice(String? value) {
    final valuePrice = double.tryParse(value ?? '0') ?? 0;
    _ctrlPrice.text = valuePrice >= 0 ? valuePrice.toString() : '0';

    widget.onChanged(valuePrice >= 0 ? valuePrice : 0);
  }

  void _listenerFocus() {
    _formatPrice(_ctrlPrice.text);
  }

  @override
  void didUpdateWidget(covariant PriceInputWidget oldWidget) {
    if (widget.value != oldWidget.value) {
      final valuePrice =
          widget.value != null ? (widget.value! >= 0 ? widget.value : 0) : 0;
      _ctrlPrice.text = valuePrice.toString();
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    _focusNodePrice.addListener(_listenerFocus);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _formatPrice(widget.value?.toString());
    });
    super.initState();
  }

  @override
  void dispose() {
    _focusNodePrice.removeListener(_listenerFocus);
    _ctrlPrice.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: _focusNodePrice,
      controller: _ctrlPrice,
      onChanged: (value) {
        // final valueDouble = double.tryParse(value);
        // if (valueDouble == null) {
        //   _ctrlPrice.text = '0';
        // } else if (value.isNotEmpty && value[0] == '0') {
        //   _ctrlPrice.text = value.substring(1);
        // }
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
          ),
        ),
      ),
    );
  }
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final trackHeight = sliderTheme.trackHeight;
    final trackLeft = offset.dx;
    final trackTop = offset.dy + (parentBox.size.height - trackHeight!) / 2;
    final trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
