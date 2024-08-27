import 'dart:math';

import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/constants.dart';
import '../../common/tools.dart';
import '../../generated/l10n.dart';
import '../../models/entities/filter_sorty_by.dart';
import '../../models/index.dart'
    show AppModel, BlogModel, FilterAttribute, ProductModel, SubAttribute;
import '../../modules/dynamic_layout/helper/helper.dart';
import '../../services/index.dart';
import '../common/flux_image.dart';
import 'filters/attribute_filter_widget.dart';
import 'filters/brand_filter_widget.dart';
import 'filters/category_filter_widget.dart';
import 'filters/listing_location_filter_widget.dart';
import 'filters/multi_attribute_filter_widget.dart';
import 'filters/tag_filter_widget.dart';
import 'filters/widgets/container_filter.dart';
import 'filters/widgets/menu_title_widget.dart';

class FilterWidget extends StatefulWidget {
  final Function({
    dynamic minPrice,
    dynamic maxPrice,
    List<String>? categoryId,
    String? categoryName,
    List<String>? tagId,
    String? listingLocationId,
    FilterSortBy? sortBy,
    bool? isSearch,
    List<String>? brandIds,
    Map<FilterAttribute, List<SubAttribute>>? attributes,
  })? onFilter;
  final List<String>? categoryId;
  final List<String>? tagId;
  final List<String>? brandIds;
  final String? listingLocationId;
  final Map<FilterAttribute, List<SubAttribute>>? selectedAttributes;

  /// Set true in case showing the Blog menu data inside Woo/Vendor app
  /// apply for the dynamic Blog on home screen.
  final bool isUseBlog;
  final bool isBlog;
  final ScrollController? controller;
  final double? minPrice;
  final double? maxPrice;
  final FilterSortBy? sortBy;

  final bool showSort;
  final bool showLayout;
  final bool showTag;
  final bool showBrand;
  final bool showCategory;
  final bool showPriceSlider;
  final bool showAttribute;
  final bool allowMultipleCategory;
  final bool allowMultipleTag;
  final bool allowMultiAttribute;
  final double? minFilterPrice;
  final double? maxFilterPrice;

  final VoidCallback? onApply;

  const FilterWidget({
    super.key,
    this.onFilter,
    this.categoryId,
    this.tagId,
    this.isBlog = false,
    this.isUseBlog = false,
    this.listingLocationId,
    this.controller,
    this.minPrice,
    this.maxPrice,
    this.sortBy,
    this.showSort = true,
    this.showLayout = true,
    this.showTag = true,
    this.showBrand = true,
    this.showCategory = true,
    this.showPriceSlider = true,
    this.showAttribute = true,
    this.allowMultipleCategory = false,
    this.allowMultipleTag = false,
    this.allowMultiAttribute = false,
    this.onApply,
    this.minFilterPrice,
    this.maxFilterPrice,
    this.brandIds,
    this.selectedAttributes,
  });

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  double minPrice = 0.0;
  double maxPrice = 0.0;

  List<String>? _categoryId = [];
  List<String>? _tagId;
  List<String>? _brandId;
  FilterSortBy? _currentSortBy;

  Map<FilterAttribute, List<SubAttribute>>? _selectedAttributes;

  AppModel get appModel => context.read<AppModel>();
  ProductModel get productModel => context.read<ProductModel>();
  BlogModel get blogModel => context.read<BlogModel>();

  List<String>? get categoryId =>
      _categoryId ??
      (widget.isUseBlog ? blogModel.categoryIds : productModel.categoryIds);

  List<String>? get tagId =>
      _tagId ?? (widget.isUseBlog ? blogModel.tagIds : productModel.tagIds);

  double get minFilterPrice => min(minPrice, widget.minFilterPrice ?? 0);
  double get maxFilterPrice =>
      max(maxPrice, widget.maxFilterPrice ?? kMaxPriceFilter);

  @override
  void initState() {
    super.initState();
    _categoryId = widget.categoryId;
    minPrice = widget.minPrice ?? 0;
    maxPrice = widget.maxPrice ?? 0;
    _currentSortBy = widget.sortBy;
    _tagId = widget.tagId;
    _brandId = widget.brandIds;
    _selectedAttributes = widget.selectedAttributes;

    /// Support loading Blog Category inside Woo/Vendor app
    if (widget.isBlog && widget.isUseBlog) {
      blogModel.getCategoryList();

      /// enable if using Tag, otherwise disable to save performance
      blogModel.getTagList();
    }
  }

  void _onFilter({
    List<String>? categoryId,
    String? categoryName,
    List<String>? tagId,
    bool? isSearch,
    String? listingLocationId,
    List<String>? brandIds,
  }) =>
      widget.onFilter?.call(
        minPrice: minPrice,
        maxPrice: maxPrice,
        sortBy: _currentSortBy,
        categoryId: categoryId,
        categoryName: categoryName ?? '',
        tagId: tagId,
        brandIds: brandIds,
        isSearch: isSearch,
        listingLocationId: (listingLocationId?.isEmpty ?? false)
            ? null
            : listingLocationId ?? productModel.listingLocationId,
        attributes: _selectedAttributes,
      );

  List<Widget> renderLayout() {
    return [
      const SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Text(
          S.of(context).layout,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
      const SizedBox(height: 5.0),

      /// render layout
      Selector<AppModel, String>(
        selector: (context, AppModel appModel) => appModel.productListLayout,
        builder: (context, String selectLayout, _) {
          return Wrap(
            children: <Widget>[
              const SizedBox(width: 8),
              for (var item
                  in widget.isBlog ? kBlogListLayout : kProductListLayout)
                Tooltip(
                  message: item['layout']!,
                  child: GestureDetector(
                    onTap: () =>
                        appModel.updateProductListLayout(item['layout']),
                    child: SizedBox(
                      width: 70,
                      height: 70,
                      child: ContainerFilter(
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.only(
                          bottom: 15,
                          left: 8,
                          right: 8,
                          top: 15,
                        ),
                        isBlog: widget.isBlog,
                        isSelected: selectLayout == item['layout'],
                        child: FluxImage(
                          imageUrl: item['image']!,
                          color: selectLayout == item['layout']
                              ? Theme.of(context).primaryColor
                              : Theme.of(context)
                                  .colorScheme
                                  .secondary
                                  .withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                )
            ],
          );
        },
      ),
    ];
  }

  Widget _renderPrice(double price) {
    final currency = appModel.currency;
    final currencyRate = appModel.currencyRate;

    return Text(
      PriceTools.getCurrencyFormatted(price, currencyRate, currency: currency)!,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }

  Widget renderPriceSlider() {
    var primaryColor = Services().widget.enableProductBackdrop
        ? Colors.white
        : Theme.of(context).primaryColor;

    final child = Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (minPrice != 0 || maxPrice != 0) ...[
              _renderPrice(minPrice),
              Text(
                ' - ',
                style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.secondary),
              ),
            ],
            _renderPrice(maxPrice),
          ],
        ),
        SliderTheme(
          data: SliderThemeData(
            activeTrackColor: primaryColor,
            inactiveTrackColor:
                Theme.of(context).primaryColorLight.withOpacity(0.5),
            activeTickMarkColor: Theme.of(context).primaryColorLight,
            inactiveTickMarkColor:
                Theme.of(context).colorScheme.secondary.withOpacity(0.5),
            overlayColor: primaryColor.withOpacity(0.2),
            thumbColor: primaryColor,
            showValueIndicator: ShowValueIndicator.always,
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
                const Duration(milliseconds: 1000),
                () {
                  _onFilter();
                },
              );
            },
          ),
        ),
      ],
    );

    return MenuTitleWidget(
      title: S.of(context).price,
      useExpansionStyle: true,
      child: child,
    );
  }

  @override
  void didUpdateWidget(covariant FilterWidget oldWidget) {
    if (widget.tagId != oldWidget.tagId) {
      _tagId = widget.tagId;
    }

    super.didUpdateWidget(oldWidget);
  }

  /// Filter support
  ServerConfig get _svConfig => ServerConfig();
  bool get _supportSort => !_svConfig.isHaravan;
  bool get _supportBrand => !_svConfig.isHaravan;
  bool get _supportPriceSlider =>
      !_svConfig.isHaravan && !_svConfig.isListingType && !_svConfig.isShopify;
  bool get _supportAttribute =>
      !_svConfig.isHaravan && !_svConfig.isListingType && !_svConfig.isShopify;
  bool get _supportTag => _svConfig.isHaravan == false;
  bool get _supportProductBackdrop =>
      !_svConfig.isListingType && !_svConfig.isHaravan;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: widget.controller,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (Layout.isDisplayDesktop(context))
            SizedBox(
              height: 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      if (Layout.isDisplayDesktop(context)) {
                        eventBus.fire(const EventOpenCustomDrawer());
                      }
                      Navigator.of(context).pop();
                    },
                    child: const Icon(Icons.arrow_back_ios,
                        size: 22, color: Colors.white70),
                  ),
                  const SizedBox(width: 20),
                  Text(
                    ServerConfig().isWordPress
                        ? context.select((BlogModel blogModel) =>
                                blogModel.categoryName) ??
                            S.of(context).blog
                        : S.of(context).products,
                    style: const TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),

          if (widget.showLayout) ...renderLayout(),

          if (widget.showSort && _supportSort)
            Services().widget.renderFilterSortBy(
              context,
              filterSortBy: _currentSortBy,
              showDivider: widget.showLayout,
              isBlog: widget.isBlog,
              onFilterChanged: (filterSortBy) {
                setState(() {
                  _currentSortBy = filterSortBy;
                });
                _onFilter();
              },
            ),

          if (ServerConfig().isListingType)
            ListingLocationFilterWidget(
              listingLocationId: widget.listingLocationId,
              onFilter: (listingLocationId) =>
                  _onFilter(listingLocationId: listingLocationId ?? ''),
            ),

          if (_supportPriceSlider && widget.showPriceSlider)
            renderPriceSlider(),

          if (widget.showCategory)
            CategoryFilterWidget(
              categoryId: _categoryId,
              isUseBlog: widget.isUseBlog,
              isBlog: widget.isBlog,
              allowMultiple: widget.allowMultipleCategory,
              onFilter: (category) => _onFilter(
                categoryId: category,
                categoryName: null,
                isSearch: false,
              ),
            ),

          if (widget.showBrand && _supportBrand)
            BrandFilterWidget(
              brandId: _brandId,
              onChanged: (p0) {
                _brandId = p0;
                _onFilter(brandIds: p0);
              },
            ),

          if (_supportAttribute && widget.showAttribute)
            if (widget.allowMultiAttribute)
              MultiAttributeFilterWidget(
                selectedAttribute: _selectedAttributes,
                onChanged: (attrs) {
                  setState(() {
                    _selectedAttributes = attrs;
                  });
                  _onFilter();
                },
              )
            else
              AttributeFilterWidget(
                selectedAttribute: _selectedAttributes,
                onChanged: (attrs) {
                  setState(() {
                    _selectedAttributes = attrs;
                  });
                  _onFilter();
                },
              ),

          /// filter by tags
          if (widget.showTag && _supportTag)
            TagFilterWidget(
              tagId: _tagId,
              isUseBlog: widget.isUseBlog,
              isBlog: widget.isBlog,
              allowMultiple: widget.allowMultipleTag,
              onChanged: (tagId) => _onFilter(tagId: tagId),
            ),

          /// render Apply button
          if (_supportProductBackdrop &&
              Services().widget.enableProductBackdrop)
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 5,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: ButtonTheme(
                      height: 55,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          backgroundColor: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3.0),
                          ),
                        ),
                        onPressed: () {
                          _onFilter(
                            categoryId: categoryId,
                            tagId: tagId,
                          );
                          widget.onApply?.call();
                        },
                        child: Text(
                          S.of(context).apply,
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

          const SizedBox(height: 70),
        ],
      ),
    );
  }
}
