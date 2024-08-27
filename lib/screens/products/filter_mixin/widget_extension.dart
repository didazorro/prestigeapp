part of 'products_filter_mixin.dart';

extension ProductsFilterMixinWidgetExtension on ProductsFilterMixin {
  void showFilterBottomSheet() {
    showModalBottomSheet(
      context: App.fluxStoreNavigatorKey.currentContext!,
      isScrollControlled: true,
      isDismissible: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Stack(
        children: [
          GestureDetector(
            onTap: Navigator.of(context).pop,
            child: Container(color: Colors.transparent),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.7,
            minChildSize: 0.2,
            maxChildSize: 0.9,
            builder: (BuildContext context, ScrollController scrollController) {
              return Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      ),
                      color: Theme.of(context).colorScheme.surface,
                    ),
                    child: Stack(
                      children: [
                        const DragHandler(),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: FilterWidget(
                            onFilter: onFilter,
                            categoryId: categoryIds,
                            sortBy: filterSortBy,
                            tagId: tagIds,
                            brandIds: brandIds,
                            listingLocationId: listingLocationId,
                            controller: scrollController,
                            minPrice: minPrice,
                            maxPrice: maxPrice,
                            selectedAttributes: lstSelectedAttribute,

                            /// hide layout filter from Search screen
                            showLayout: showLayout,
                            showCategory: showCategory,
                            showPriceSlider: showPriceSlider,
                            showTag: showTag,
                            showAttribute: showAttribute,
                            showBrand: showBrand,

                            onApply: onCloseFilter,
                            allowMultipleCategory: allowMultipleCategory,
                            allowMultipleTag: allowMultipleTag,
                            allowMultiAttribute: allowMultiAttribute,

                            minFilterPrice: productPriceModel.minFilterPrice,
                            maxFilterPrice: productPriceModel.maxFilterPrice,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  Widget renderFilters(
    BuildContext context, {
    Widget? title,
    Widget? trailingWidget,
  }) {
    return Row(
      children: [
        Expanded(
          child: title ?? renderFilterTitle(context),
        ),
        if (trailingWidget == null) ...[
          const SizedBox(width: 5),
          const SizedBox(
            height: 44,
            child: VerticalDivider(
              width: 15,
              indent: 8,
              endIndent: 8,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 5),
        ],
        CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: showFilterBottomSheet,
          child: trailingWidget ??
              Row(
                children: [
                  Text(
                    S.of(context).filter,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(width: 4),
                  const Icon(CupertinoIcons.chevron_down, size: 13),
                ],
              ),
        ),
        if (trailingWidget == null) const SizedBox(width: 5),
      ],
    );
  }

  Widget renderFilterTitle(BuildContext context) {
    var appModel = context.read<AppModel>();
    final currency = appModel.currency;
    final currencyRate = appModel.currencyRate;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _renderFilterSortByTag(context),
          const SizedBox(width: 5),
          for (int i = 0; i < lstSelectedAttribute.length; i++)
            ...List.generate(
              lstSelectedAttribute.values.elementAt(i).length,
              (index) {
                final attribute = lstSelectedAttribute.keys.elementAt(i);
                final subAttribute =
                    lstSelectedAttribute.values.elementAt(i)[index];
                final attributeName = attribute.name?.capitalize();
                final subAttributeName = subAttribute.name;
                return FilterLabel(
                  label: '$attributeName: $subAttributeName',
                  onTap: () {
                    final selectedSubAttribute = List<SubAttribute>.from(
                        lstSelectedAttribute.values.elementAt(i));

                    selectedSubAttribute.removeAt(index);

                    if (selectedSubAttribute.isEmpty) {
                      lstSelectedAttribute
                          .remove(lstSelectedAttribute.keys.elementAt(i));
                    } else {
                      lstSelectedAttribute.update(
                        lstSelectedAttribute.keys.elementAt(i),
                        (value) => selectedSubAttribute,
                      );
                    }

                    onFilter();
                  },
                );
              },
            ),
          if (tagIds?.isNotEmpty ?? false)
            ...List.generate(
              tagIds!.length,
              (index) {
                final id = tagIds![index];
                final tagName = tagModel.getTagName(id).capitalize();
                return FilterLabel(
                  label: '#$tagName',
                  onTap: () {
                    final selectedTags = tagIds
                      ?..removeWhere((element) => element == id);
                    onFilter(tagId: selectedTags);
                  },
                );
              },
            ),
          if (brandIds?.isNotEmpty ?? false)
            ...List.generate(
              brandIds!.length,
              (index) {
                final id = brandIds![index];
                final brand = brandModel.getBrandById(id);
                final brandName = brand?.name?.capitalize() ?? id;
                return FilterLabel(
                  leading: brand != null
                      ? FluxImage(imageUrl: brand.image ?? '')
                      : null,
                  label: brandName,
                  onTap: () {
                    final selectedBrandIds = brandIds
                      ?..removeWhere((element) => element == id);
                    onFilter(brandIds: selectedBrandIds);
                  },
                );
              },
            ),
          if (minPrice != null && maxPrice != null && maxPrice != 0)
            FilterLabel(
              onTap: () {
                resetPrice();
                onFilter(minPrice: 0.0, maxPrice: 0.0);
              },
              label:
                  '${PriceTools.getCurrencyFormatted(minPrice, currencyRate, currency: currency)!} - ${PriceTools.getCurrencyFormatted(maxPrice, currencyRate, currency: currency)!}',
            ),
        ],
      ),
    );
  }

  Widget _renderFilterSortByTag(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (filterSortBy.displaySpecial != null)
          FilterLabel(
            label: filterSortBy.displaySpecial!,
            onTap: () {
              filterSortBy = filterSortBy.applyOnSale(null).applyFeatured(null);
              onFilter();
            },
            leading: filterSortBy.onSale ?? false
                ? Icon(
                    CupertinoIcons.tag_solid,
                    size: 16,
                    color: Theme.of(context).primaryColor,
                  )
                : Icon(
                    CupertinoIcons.star_circle_fill,
                    size: 16,
                    color: Theme.of(context).primaryColor,
                  ),
          ),
        if (filterSortBy.displayOrderBy != null)
          FilterLabel(
            label: filterSortBy.displayOrderBy!,
            icon: filterSortBy.orderType == null
                ? null
                : (filterSortBy.orderType!.isAsc
                    ? Icon(
                        CupertinoIcons.sort_up,
                        size: 20,
                        color: Theme.of(context)
                            .colorScheme
                            .secondary
                            .withOpacity(0.6),
                      )
                    : Icon(
                        CupertinoIcons.sort_down,
                        size: 20,
                        color: Theme.of(context)
                            .colorScheme
                            .secondary
                            .withOpacity(0.6),
                      )),
            onTap: () {
              filterSortBy = filterSortBy.applyOrder(null).applyOrderBy(null);
              onFilter();
            },
          ),
      ],
    );
  }
}
