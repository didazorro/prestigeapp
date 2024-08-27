part of 'products_filter_mixin.dart';

extension ProductsFilterMixinMethodExtension on ProductsFilterMixin {
  List<FilterAttribute> get listProductAttribute =>
      filterAttrModel.lstProductAttribute ?? <FilterAttribute>[];

  @protected
  void onFilter({
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
  }) {
    printLog('[onFilter] ♻️ Reload product list');
    filterSortBy = sortBy ?? filterSortBy;

    this.listingLocationId = listingLocationId;

    if (minPrice == maxPrice && minPrice == 0) {
      this.minPrice = null;
      this.maxPrice = null;
    } else {
      this.minPrice = minPrice ?? this.minPrice;
      this.maxPrice = maxPrice ?? this.maxPrice;
    }

    if (tagId != null) {
      tagIds = tagId;
    }

    /// Compare old and new brand list
    var isSameBrand = true;
    if (brandIds != null) {
      final isSameBrand1 =
          this.brandIds?.toSet().difference((brandIds).toSet()).isEmpty ?? true;
      final isSameBrand2 =
          brandIds.toSet().difference((this.brandIds ?? []).toSet()).isEmpty;
      isSameBrand = isSameBrand1 && isSameBrand2;

      this.brandIds = brandIds;
    }

    if (search != null) {
      this.search = search;
    }

    if (attributes != null) {
      lstSelectedAttribute = attributes;
    }

    var isSameCategory = true;

    /// Set category title, ID
    if (categoryId != null) {
      // Compare old and new category list
      final isSameCate1 =
          categoryIds?.toSet().difference((categoryId).toSet()).isEmpty ?? true;
      final isSameCate2 =
          categoryId.toSet().difference((categoryIds ?? []).toSet()).isEmpty;
      isSameCategory = isSameCate1 && isSameCate2;

      categoryIds = categoryId;

      var selectedCategoryName;
      if (categoryIds?.length == 1) {
        selectedCategoryName = categoryModel.categories
            ?.firstWhereOrNull(
                (element) => element.id == categoryId.firstOrNull)
            ?.name;
      }
      onCategorySelected(selectedCategoryName);
    }

    if (!isSameCategory) {
      final futureList = <Future>[
        _resetBrands(categoryIds: categoryIds),
        _resetTags(categoryIds: categoryIds),
        _resetAttributes(categoryIds: categoryIds),
      ];
      Future.wait(futureList);
    } else if (!isSameBrand) {
      final futureList = <Future>[
        _resetTags(categoryIds: categoryIds, brandIds: brandIds),
        _resetAttributes(categoryIds: categoryIds, brandIds: brandIds),
      ];
      Future.wait(futureList);
    }

    if (ServerConfig().isShopify) {
      if (isSearch != null) {
        if (isSearch) {
          categoryIds = [];
        } else {
          this.search = null;
          onClearTextSearch();
        }
      }
    }

    /// reset paging and clean up product
    page = 1;
    clearProductList();
    unawaited(getProductList(forceLoad: true));
    rebuild();
  }

  Future<void> onLoadMore() async {
    page++;
    await getProductList();
  }

  // Return map attribute and selected attribute term. For example:
  // {
  //   "pa_color": "1,2",
  //   "pa_size": "4"
  // }
  @protected
  Map<String, String> getAttributes() {
    var attributes = <String, String>{};

    for (var attribute in lstSelectedAttribute.entries) {
      var terms = [];
      for (var subAttribute in attribute.value) {
        terms.add(subAttribute.id);
      }

      if (terms.isNotEmpty) {
        attributes[attribute.key.slug!] = terms.join(',');
      }
    }

    return attributes;
  }

  Future<void> onRefresh() async {
    page = 1;
    rebuild();
    await getProductList(forceLoad: true);
  }

  Future<void> initFilter({ProductConfig? config}) async {
    minPrice = null;
    maxPrice = null;
    page = 1;
    search = null;
    filterSortBy = const FilterSortBy();
    include = config?.include;

    categoryIds = config?.category;
    brandIds = config?.brandIds;

    // Get all brands based on category
    // Reset attributes and tags list based on new category and brand
    final futureList = <Future>[
      if (allowGetBrandByCategory)
        brandModel.getBrands(categoryIds: categoryIds),
      _resetTags(categoryIds: categoryIds, brandIds: brandIds),
      _resetAttributes(categoryIds: categoryIds, brandIds: brandIds),
    ];

    // Use unawait to avoid getting delay when opening the product screen for
    // the first time
    unawaited(Future.wait(futureList));

    // Selected tags (including invisible tags), set after calling the reset filter
    tagIds = config?.tag;

    var params = config?.advancedParams != null
        ? FilterProductParams.fromJson(config!.advancedParams!)
        : null;

    filterSortBy = filterSortBy
        .copyWith(
          onSale: config?.onSale ?? params?.onSale,
          featured: config?.featured ?? params?.featured,
        )
        .copyWithString(
          orderBy: config?.orderby ?? params?.orderby,
          order: config?.order ?? params?.order,
        );

    listingLocationId =
        config?.jsonData?['location']?.toString() ?? params?.listingLocation;

    final attributeId = params?.attribute ?? '';
    final attributeTerm = params?.attributeTerm ?? '';
    if (attributeId.isNotEmpty && attributeTerm.isNotEmpty) {
      final attribute = listProductAttribute.firstWhereOrNull((element) =>
          element.id.toString() == attributeId || element.slug == attributeId);

      // Don't add attribute if this attribute is unavailable or invisible
      if (attribute == null || !attribute.isVisible) return;

      lstSelectedAttribute[attribute] = [];

      final listSubAttributes =
          await filterAttrModel.getSubAttributes(attributeId: attribute.id!);

      for (var term in attributeTerm.split(',')) {
        final subAttribute = listSubAttributes
            ?.firstWhereOrNull((element) => element.id == int.parse(term));
        if (subAttribute != null) {
          lstSelectedAttribute[attribute]!.add(subAttribute);
        }
      }
    }
  }

  Future<void> _resetBrands({List<String>? categoryIds}) async {
    if (allowGetBrandByCategory) {
      // Reset selected brand
      brandIds = null;
      // Get all brands by category
      await brandModel.getBrands(
        categoryIds: categoryIds,
      );
    }
  }

  Future<void> _resetTags(
      {List<String>? categoryIds, List<String>? brandIds}) async {
    if (allowGetTagByCategory) {
      // Reset selected tag
      tagIds = null;
      // Get all tags by category
      await tagModel.getTags(
        payload: TagPayload(
          categoryIds: categoryIds?.join(','),
          brandIds: brandIds?.join(','),
        ),
      );
    }
  }

  Future<void> _resetAttributes({
    List<String>? categoryIds,
    // List<String>? tagIds,
    List<String>? brandIds,
  }) async {
    if (allowGetAttributeByCategory) {
      // Reset selected attribute
      resetAllSelectedAttribute();
      // Get all attributes by category
      await filterAttrModel.getFilterAttributes(
        categoryIds: categoryIds?.join(','),
        // tagIds: tagIds,
        brandIds: brandIds?.join(','),
      );
    }
  }

  @protected
  void resetPrice() {
    minPrice = 0.0;
    maxPrice = 0.0;
  }
}
