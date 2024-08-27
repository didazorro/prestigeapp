import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../common/constants.dart';
import '../../../../models/entities/filter_sorty_by.dart';
import '../../../../models/index.dart';
import '../../../app.dart';
import '../../../common/config.dart';
import '../../../common/tools/price_tools.dart';
import '../../../generated/l10n.dart';
import '../../../models/entities/filter_product_params.dart';
import '../../../modules/dynamic_layout/config/product_config.dart';
import '../../../services/service_config.dart';
import '../../../widgets/backdrop/filter.dart';
import '../../../widgets/common/drag_handler.dart';
import '../../../widgets/common/flux_image.dart';
import '../widgets/filter_label.dart';

part 'getter_extension.dart';
part 'methods_extension.dart';
part 'widget_extension.dart';

mixin ProductsFilterMixin<T extends StatefulWidget> on State<T> {
  FilterAttributeModel get filterAttrModel =>
      context.read<FilterAttributeModel>();

  CategoryModel get categoryModel => context.read<CategoryModel>();

  TagModel get tagModel => context.read<TagModel>();

  BrandLayoutModel get brandModel => context.read<BrandLayoutModel>();

  ProductPriceModel get productPriceModel => context.read<ProductPriceModel>();

  Future<void> getProductList({bool forceLoad = false});

  void clearProductList();

  /// Call setState(() {}) or notifyListener().
  void rebuild();

  void onCloseFilter();

  void onCategorySelected(String? name);

  void onClearTextSearch() {}

  /// Filter params.
  List<String>? _categoryIds;

  List<String>? get categoryIds => _categoryIds?.toList();

  set categoryIds(List<String>? value) {
    _categoryIds = value?.toList();
  }

  double? minPrice;
  double? maxPrice;
  int page = 1;
  List<String>? _tagIds;

  List<String>? get tagIds => _tagIds?.toList();

  set tagIds(List<String>? value) {
    _tagIds = value?.toList();
  }

  String? listingLocationId;
  List? include;
  String? search;
  bool? isSearch;

  List<String>? _brandIds;

  List<String>? get brandIds => _brandIds?.toList();

  set brandIds(List<String>? value) {
    _brandIds = value?.toList();
  }

  /// List all selected sub attributes of each selected attribute
  Map<FilterAttribute, List<SubAttribute>> lstSelectedAttribute = {};

  void updateSelectedSubAttribute({
    required int attributeId,
    required SubAttribute subAttribute,
  }) {
    final attribute = filterAttrModel.lstProductAttribute
        ?.firstWhere((element) => element.id == attributeId);
    final subAttributes = lstSelectedAttribute[attribute];

    if (subAttributes?.indexWhere((element) => element.id == subAttribute.id) ==
        -1) {
      lstSelectedAttribute[attribute!] = [subAttribute];
    } else {
      lstSelectedAttribute[attribute]
          ?.removeWhere((element) => element.id == subAttribute.id);
    }
  }

  void resetAllSelectedAttribute() {
    lstSelectedAttribute.clear();
  }

  void onTapOpenFilter() {
    showFilterBottomSheet();
  }

  FilterSortBy filterSortBy = const FilterSortBy();

  bool get showLayout => true;

  bool get showSort => true;

  bool get showPriceSlider => true;

  bool get showCategory => true;

  bool get showAttribute => true;

  bool get showTag => true;

  bool get showBrand => true;

  bool get allowMultipleCategory => ServerConfig().allowMultipleCategory;

  bool get allowMultipleTag => ServerConfig().allowMultipleTag;

  bool get allowGetTagByCategory =>
      ServerConfig().isWooPluginSupported &&
      kAdvanceConfig.allowGetDatasByCategoryFilter;

  bool get allowGetAttributeByCategory =>
      ServerConfig().isWooPluginSupported &&
      kAdvanceConfig.allowGetDatasByCategoryFilter;

  bool get allowGetBrandByCategory =>
      ServerConfig().isWooPluginSupported &&
      kAdvanceConfig.allowGetDatasByCategoryFilter;

  bool get allowMultiAttribute =>
      ServerConfig().isWooPluginSupported &&
      kAdvanceConfig.allowGetDatasByCategoryFilter;
}
