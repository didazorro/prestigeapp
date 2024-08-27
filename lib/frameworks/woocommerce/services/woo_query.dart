import 'dart:convert';

import '../../../common/config.dart';
import '../../../common/constants.dart';
import '../../../modules/dynamic_layout/helper/helper.dart';

class ProductQuery {
  String? category;
  String? tag;
  bool? featured;
  bool? onSale;
  num? maxPrice;
  num? minPrice;
  String? orderBy;
  String? order;
  int? perPage;
  int? page;
  String? include;
  String? search;
  String? sku;
  Map? advancedParams;
  String? userId;
  List<String>? brandIds;
  Map? attributes;

  ProductQuery({
    this.category,
    this.tag,
    this.featured,
    this.onSale,
    this.maxPrice,
    this.minPrice,
    this.orderBy,
    this.order,
    this.perPage,
    this.page,
    this.include,
    this.search,
    this.sku,
    this.advancedParams,
    this.userId,
    this.brandIds,
    this.attributes,
  });

  /// Used for object initialization that does not
  /// specify the data type of the value components
  ProductQuery.parse({
    dynamic category,
    dynamic tag,
    dynamic featured,
    dynamic onSale,
    dynamic maxPrice,
    dynamic minPrice,
    dynamic orderBy,
    dynamic order,
    dynamic perPage,
    dynamic page,
    dynamic include,
    dynamic search,
    dynamic sku,
    dynamic advancedParams,
    dynamic userId,
    dynamic brandIds,
    dynamic attributes,
  }) {
    this.category = category != null ? '$category' : null;
    this.tag = tag != null ? '$tag' : null;
    this.featured = bool.tryParse('$featured');
    this.onSale = bool.tryParse('$onSale');
    this.maxPrice = num.tryParse('$maxPrice');
    this.minPrice = num.tryParse('$minPrice');
    this.orderBy = orderBy is String ? orderBy : null;
    this.order = order is String ? order : null;
    this.perPage = int.tryParse('$perPage');
    this.page = int.tryParse('$page');
    this.include = include is String ? include : null;
    this.search = search is String ? search : null;
    this.sku = sku is String ? sku : null;
    this.advancedParams = advancedParams is Map ? advancedParams : null;
    this.brandIds = brandIds is List<String> ? brandIds : null;
    this.userId = userId != null ? '$userId' : null;
    this.attributes = attributes is Map ? attributes : null;
  }

  ProductQuery.fromJson(dynamic json) {
    final category = json['category'];
    if (category is List) {
      this.category = category.join(',');
    } else if (category != null) {
      this.category = '${json['category']}';
    }
    tag = json['tag'] != null ? '${json['tag']}' : null;
    featured = bool.tryParse('${json['featured']}');
    onSale = bool.tryParse('${json['onSale']}');
    maxPrice = num.tryParse('${json['maxPrice']}');
    minPrice = num.tryParse('${json['minPrice']}');
    orderBy = json['orderby'] is String ? json['orderby'] : null;
    order = json['order'] is String ? json['order'] : null;
    perPage = int.tryParse('${json['limit']}');
    page = int.tryParse('${json['page']}');
    include = json['include'] is String
        ? json['include']
        : json['include'] is List
            ? json['include'].join(',')
            : null;
    search = json['search'] is String ? json['search'] : null;
    sku = json['sku'] is String ? json['sku'] : null;
    advancedParams =
        json['advancedParams'] is Map ? json['advancedParams'] : null;
    brandIds = json['brandIds'] is List<String> ? json['brandIds'] : null;
    userId = json['userId'] != null ? '${json['userId']}' : null;
    attributes = json['attributes'] is Map
        ? json['attributes']
        : json['attribute'] != null || json['attributeId'] != null
            ? {
                json['attribute']: json['attributeId'],
              }
            : null;
  }

  String toParams({bool hideOutOfStock = true, int apiVersion = 2}) {
    var params = '';
    if (advancedParams?.isNotEmpty ?? false) {
      advancedParams?.forEach((key, value) {
        params += '&$key';
        if (value?.toString().isNotEmpty ?? false) {
          params += '=$value';
        }
      });
    }

    /// Add category filter
    if ((category?.isNotEmpty ?? false) && category != kEmptyCategoryID) {
      params += '&category=$category';
    }
    if (tag?.isNotEmpty ?? false) {
      params += '&tag=$tag';
    }

    if (brandIds?.isNotEmpty ?? false) {
      params += '&brand=${brandIds!.join(',')}';
    }

    /// Add featured filter
    if (featured == true) {
      params += '&featured=$featured';
    }

    /// Add onSale filter
    if (onSale == true) {
      params += '&on_sale=$onSale';
    }

    /// Add range price filter
    if (minPrice != null && maxPrice != null && (maxPrice ?? 0) > 0) {
      params +=
          '&min_price=${minPrice?.toInt()}&max_price=${maxPrice?.toInt()}';
    }

    /// Add attribute filter
    if (attributes?.isNotEmpty ?? false) {
      // If there is only one attribute, use `attribute` and `attribute_term`
      // for compatibility with woocommerce rest api
      if (attributes!.length == 1) {
        final attribute = attributes!.entries.first;
        final attributeId = attribute.key?.toString();
        final attributeTerm = attribute.value?.toString();

        if (attributeId?.isNotEmpty ?? false) {
          params += '&attribute=$attributeId';
        }
        if (attributeTerm?.isNotEmpty ?? false) {
          params += '&attribute_term=$attributeTerm';
        }
      } else {
        params += '&attributes=${jsonEncode(attributes)}';
      }
    }

    /// Sort by
    if (orderBy?.isNotEmpty ?? false) {
      params += '&orderby=$orderBy';
    }
    if (order?.isNotEmpty ?? false) {
      params += '&order=$order';
    }

    /// Page & limit
    if (page != null) {
      params += '&page=$page';
    }
    params += '&per_page=${perPage ?? apiPageSize}';

    /// Add user filter
    if (userId?.isNotEmpty ?? false) {
      params += '&user_id=$userId';
    }

    /// Only load special products
    if (include?.isNotEmpty ?? false) {
      var result = <int>[];
      var ids = include?.split(',') ?? [];
      for (var id in ids) {
        var idProduct = Helper.formatInt(id);
        if (idProduct != null) {
          result.add(idProduct);
        }
      }
      params += '&include=${result.toList().join(',')}';
    }

    /// Search product
    if (search?.isNotEmpty ?? false) {
      params += '&search=$search';
    }

    // The `sku` parameter will limit result set to products with a specific
    // SKU. Does not work properly if used with the `search` parameter.
    //
    // In the new version of WooCommerce API V3, they have provided the param
    // `search_sku`. Do a partial match for a sku. Supercedes sku parameter that
    // does exact matching.
    if (sku?.isNotEmpty ?? false) {
      // TODO: Remove function [_searchBySku] on the class [WooCommerceService] if apply
      params += '&sku=$sku';

      // if (apiVersion < 3) {
      //   params += '&sku=$sku';
      // } else {
      //   params += '&search_sku=$sku';
      // }
    }

    // If add this param to API, the result will not contain backorder products
    if (hideOutOfStock && kAdvanceConfig.hideOutOfStock) {
      params += '&stock_status=instock';
    }

    if (kExcludedProductIDs?.isNotEmpty ?? false) {
      params += '&exclude=$kExcludedProductIDs';
    }
    return params;
  }
}
