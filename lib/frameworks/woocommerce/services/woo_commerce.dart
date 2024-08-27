import 'dart:convert' as convert;
import 'dart:convert';
import 'dart:core';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:quiver/strings.dart';
import 'package:universal_platform/universal_platform.dart';

import '../../../common/config.dart';
import '../../../common/constants.dart';
import '../../../common/events.dart';
import '../../../common/extensions/extensions.dart';
import '../../../generated/l10n.dart';
import '../../../models/booking/staff_booking_model.dart';
import '../../../models/entities/branch.dart';
import '../../../models/entities/brand.dart';
import '../../../models/entities/order_delivery_date.dart';
import '../../../models/entities/product_component.dart';
import '../../../models/entities/stripe_payment_intent.dart';
import '../../../models/index.dart';
import '../../../services/base_services.dart';
import '../../../services/elastic/elastic_client.dart';
import '../../../services/elastic/elastic_query.dart';
import '../../../services/elastic/elastic_service.dart';
import '../../../services/https.dart';
import '../../../services/index.dart';
import '../../../services/review_service.dart';
import 'branch_ext.dart';
import 'woo_query.dart';
import 'woo_review_service.dart';
import 'woocommerce_api.dart';

const _rootCategoryId = 0;

final String kDefaultCurrency =
    kAdvanceConfig.defaultCurrency?.currencyCode ?? 'USD';

void checkExpiredCookie(Response response) {
  final body = convert.jsonDecode(response.body);
  if (response.statusCode == 401 && body['code'] == 'expired_cookie') {
    eventBus.fire(
        EventExpiredCookie(isRequiredLogin: true, errMsg: body['message']));
  }
}

class WooCommerceService extends BaseServices {
  final WooCommerceAPI wcApi;

  final String isSecure;
  List<Category> categories = [];
  Map<String, Tag> tags = {};
  String? currentLanguage;
  bool? currentHideEmptyCategories;
  String? currentExcludedCategoryIDs;
  Map<String, List<Product>> categoryCache = <String, List<Product>>{};

  WooCommerceService({
    required super.domain,
    String? blogDomain,
    required String consumerKey,
    required String consumerSecret,
  })  : wcApi = WooCommerceAPI(domain, consumerKey, consumerSecret),
        isSecure = domain.contains('https') ? '' : '&insecure=cool',
        super(
          blogDomain: blogDomain ?? domain,
          reviewService: ReviewService.create(
            factoryReviewServiceNative: () => WooReviewService(
              WooCommerceAPI(domain, consumerKey, consumerSecret),
            ),
          ),
        ) {
    categories = [];
    currentLanguage = null;
    currentHideEmptyCategories = null;
    categoryCache = <String, List<Product>>{};
  }

  String buildUrlToGetProducts(String endPoint) {
    if (kAdvanceConfig.enableWOOCSCurrencySwitcher) {
      endPoint = endPoint.addUrlQuery('currency=$kDefaultCurrency');
    }
    return endPoint
        .addUrlQuery('is_all_data=${kAdvanceConfig.enableIsAllData == true}');
  }

  String buildUrlByLang(String endPoint, {bool isForceUseLang = false}) {
    if (isForceUseLang || kAdvanceConfig.isMultiLanguages) {
      return endPoint.addUrlQuery('lang=$languageCode');
    }
    return endPoint;
  }

  @override
  Future<List<Category>> getCategories({lang}) async {
    try {
      if (categories.isNotEmpty &&
          currentLanguage == languageCode &&
          currentHideEmptyCategories == kAdvanceConfig.hideEmptyCategories &&
          currentExcludedCategoryIDs == kExcludedCategoryIDs) {
        return categories;
      }
      currentLanguage = languageCode;
      currentHideEmptyCategories = kAdvanceConfig.hideEmptyCategories;
      currentExcludedCategoryIDs = kExcludedCategoryIDs;
      var list = <Category>[];
      var isEnd = false;
      var page = 1;
      var limit = 100;

      while (!isEnd) {
        var categories = await getCategoriesByPage(page: page, limit: limit);
        if (categories.isEmpty || categories.length < limit - 1) {
          isEnd = true;
        }
        page = page + 1;
        list = [...list, ...categories];
      }
      categories = list;
      return list;
    } catch (e) {
      return [];
      //rethrow;
    }
  }

  @override
  Future<List<Category>> getCategoriesByPage({
    page,
    limit,
    storeId,
    String? searchTerm,
    int? parent,
    bool useCompute = true,
  }) async {
    try {
      var url =
          'products/categories?per_page=$limit&page=$page&hide_empty=${kAdvanceConfig.hideEmptyCategories}';

      if (kExcludedCategoryIDs?.isNotEmpty ?? false) {
        url = url.addUrlQuery('exclude=$kExcludedCategoryIDs');
      }
      url = buildUrlByLang(url);
      if (searchTerm != null && searchTerm.isNotEmpty) {
        url += '&search=$searchTerm';
      }
      if (parent != null) {
        url += '&parent=$parent';
      }
      var response = await wcApi.getAsync(url);
      if (!useCompute) {
        return Category.parseCategoryList(response);
      }

      return Category.parseCategoryList(response);
    } catch (e) {
      //This error exception is about your RegetHomeCache(st API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<List<Product>> getProducts({userId}) async {
    try {
      var endpoint = 'products';
      if (userId != null) {
        endpoint += '?user_id=$userId';
      }
      var response = await wcApi.getAsync(endpoint);
      var list = <Product>[];
      if (response is Map && isNotBlank(response['message'])) {
        throw Exception(response['message']);
      } else {
        for (var item in response) {
          list.add(Product.jsonParser(item));
        }
        return list;
      }
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  Future<List<Product>> boostProducts({
    dynamic category,
    String? tag,
    bool? featured,
    bool? onSale,
    num? maxPrice,
    num? minPrice,
    String? orderBy,
    String? order,
    int? limit,
    int? offset,
    String? include,
    String? search,
    List<String>? brandIds,
    Map? attributes,
  }) async {
    final mustList = ElasticActionList();
    final mustNotList = ElasticActionList();
    final sortList = <Map<String, dynamic>>[];
    var catIds = [];
    if (category is List) {
      catIds = category;
    } else if (category != null) {
      /// need to remove '' when empty
      catIds = '$category'.split(',');
    }
    catIds.removeWhere(
      (e) => ['0', kEmptyCategoryID, ''].contains('$e'),
    );
    if (catIds.isNotEmpty) {
      mustList.addFilter(
        keyFilter: 'terms',
        key: 'categories.id',
        value: catIds,
      );
    }
    if (category != null && category != kEmptyCategoryID && category != '0') {
      mustList.addFilter(
        keyFilter: 'terms',
        key: 'categories.id',
        value: '$category'.split(','),
      );
    }

    if (brandIds != null && brandIds.isNotEmpty) {
      mustList.addFilter(
        keyFilter: 'terms',
        key: 'brands.id',
        value: brandIds,
      );
    }
    if (tag?.isNotEmpty ?? false) {
      mustList.addFilter(
        keyFilter: 'terms',
        key: 'tags.id',
        value: '$tag'.split(','),
      );
    }

    /// Add featured filter
    if (featured ?? false) {
      mustList.addMatch(
        key: 'featured',
        value: true,
      );
    }

    /// Add onSale filter
    if (onSale ?? false) {
      mustList.addMatch(
        key: 'on_sale',
        value: true,
      );
    }
    if (maxPrice != null && maxPrice > 0) {
      mustList.addRange(
        key: 'price',
        gteValue: minPrice,
        lteValue: maxPrice,
      );
    }

    /// ignore the hidden catalog
    mustNotList.addMatch(key: 'catalog_visibility', value: 'hidden');

    if (attributes?.isNotEmpty ?? false) {
      // As the old logic, only support single attribute
      final attribute = attributes!.entries.first;
      final attributeId = attribute.value;

      if (attributeId != null) {
        var termId = [];
        if (attributeId is List) {
          termId = List.from(attributeId);
        }
        if (attributeId is String) {
          var convertAttribute = attributeId.replaceAll(']', '');
          convertAttribute = convertAttribute.replaceAll('[', '');
          convertAttribute = convertAttribute.replaceAll(' ', '');
          if (convertAttribute.isNotEmpty) {
            termId = convertAttribute.split(',');
          }
        }
        if (termId.isNotEmpty) {
          mustList.addFilter(
            keyFilter: 'terms',
            key: 'attributesData.options.term_id',
            value: termId,
          );
        }
      }
    }

    /// sort by
    if (orderBy is String) {
      orderBy = ElasticClient.convertProductOrderBy(orderBy);
      sortList.add({orderBy: order ?? 'desc'});
    }
    // If add this param to API, the result will not contain backorder products
    if (kAdvanceConfig.hideOutOfStock) {
      mustList.addMatch(key: 'in_stock', value: true);
    }
    if (include?.isNotEmpty ?? false) {
      mustList.addFilter(
        keyFilter: 'terms',
        key: 'id',
        value: include?.split(','),
      );
    }
    if (search?.isNotEmpty ?? false) {
      var fields = ['name'];
      if (kAdvanceConfig.enableSkuSearch) {
        fields = ['name', 'sku'];
      }
      mustList.addQuery(
        query: '$search'.splitMapJoin(
          RegExp(r' |-'),
          onNonMatch: (n) => '*$n*',
          onMatch: (m) => ' ',
        ),
        queryOperator: ElasticQueryOperator.and,
        fields: fields,
      );
    }
    final result = await ElasticService.search(
      uri: Uri.parse(domain),
      languageCode: languageCode,
      limit: limit ?? apiPageSize,
      offset: offset,
      mustList: mustList,
      mustNotList: mustNotList,
      sortList: sortList,
    );

    return ProductModel.parseProductList(
      result,
      {'category': category, 'include': include},
    );
  }

  Future<List<Product>?> boostProductsLayout({required Map config}) {
    return boostProducts(
      category: config['category'],
      tag: config['tag'],
      featured: config['featured'] is bool ? config['featured'] : null,
      onSale: config['onSale'] is bool ? config['onSale'] : null,
      maxPrice: double.tryParse('${config['maxPrice']}'),
      minPrice: double.tryParse('${config['minPrice']}'),
      attributes: config['attributes'] ??
          {
            config['attribute']: config['attributeId'],
          },
      orderBy: config['orderby'],
      order: config['order'],
      limit: config['limit'],
      offset: config['page'],
      include: config['include'],
    );
  }

  Future<dynamic> getWooProductsResponse({
    String params = '',
    int version = 2,
    bool refreshCache = false,
  }) async {
    var endPoint = 'products$params';
    var response = await wcApi.getAsync(
      endPoint,
      refreshCache: refreshCache,
      version: version,
    );
    return response;
  }

  @override
  Future<List<Product>?> fetchProductsLayout({
    config,
    lang,
    userId,
    bool refreshCache = false,
  }) async {
    try {
      late Map dataConfig;
      if (config is Map) {
        dataConfig = config;
      } else {
        return [];
      }
      final enableBoostEngine = bool.tryParse('${dataConfig['boostEngine']}') ??
          kBoostEngineConfig.isOptimizeEnable;
      if (enableBoostEngine) {
        try {
          // Add await here to cache exception if boost engine does not work
          final values = await boostProductsLayout(
            config: dataConfig,
          );
          return values;
        } catch (e, trace) {
          // If the boost engine does not work, just print error and go to call the API
          printError(e, trace);
        }
      }

      var params = '?status=publish';
      params = buildUrlByLang(params);
      params += ProductQuery.fromJson(config).toParams(apiVersion: 3);
      params = buildUrlToGetProducts(params);

      var response = await getWooProductsResponse(
        params: params,
        refreshCache: refreshCache,
        version: 3,
      );

      if (response is Map && isNotBlank(response['message'])) {
        printLog('WooCommerce Error: ${response['message']}');
        return [];
      }

      return ProductModel.parseProductList(response, dataConfig);
    } catch (e, trace) {
      printLog(trace.toString());
      printLog(e.toString());
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      return [];
    }
  }

  /// get all attribute_term for selected attribute for filter menu
  @override
  Future<List<SubAttribute>> getSubAttributes({
    required int id,
    int page = 1,
    int perPage = 10,
  }) async {
    try {
      var listAttributes = <SubAttribute>[];

      var url = 'products/attributes/$id/terms?page=$page&per_page=$perPage';
      url = buildUrlByLang(url);

      var response = await wcApi.getAsync(url);

      if (response is Map && isNotBlank(response['message'])) {
        throw Exception(response['message']);
      } else {
        for (var item in response) {
          if (item['count'] > 0) {
            listAttributes.add(SubAttribute.fromJson(item));
          }
        }
        return listAttributes;
      }
    } catch (e) {
      rethrow;
    }
  }

  //get all attributes for filter menu
  @override
  Future<List<FilterAttribute>>? getFilterAttributes({
    String? categoryIds,
    String? tagIds,
    String? brandIds,
  }) async {
    var list = <FilterAttribute>[];
    try {
      var endPoint = 'products/attributes';
      endPoint = buildUrlByLang(endPoint);

      if (categoryIds != null) {
        endPoint += '&category=$categoryIds';
      }
      if (tagIds != null) {
        endPoint += '&tag=$tagIds';
      }
      if (brandIds != null) {
        endPoint += '&brand=$brandIds';
      }

      var response = await wcApi.getAsync(endPoint);

      if (response is Map && isNotBlank(response['message'])) {
        throw Exception(response['message']);
      } else {
        for (var item in response) {
          list.add(FilterAttribute.fromJson(item));
        }
      }

      return list;
    } catch (err, trace) {
      printError(err, trace);
    }
    return list;
  }

  @override
  Future<List<Product>?> fetchProductsByCategory({
    String? categoryId,
    String? tagId,
    page = 1,
    minPrice,
    maxPrice,
    orderBy,
    lang,
    order,
    featured,
    onSale,
    listingLocation,
    userId,
    String? include,
    String? search,
    bool? productType,
    nextCursor,
    bool? boostEngine,
    List<String>? brandIds,
    Map? attributes,
  }) async {
    try {
      final enableBoostEngine =
          boostEngine ?? kBoostEngineConfig.isOptimizeEnable;
      if (enableBoostEngine) {
        try {
          return await boostProductsByCategory(
            categoryId: categoryId,
            tagId: tagId,
            minPrice: minPrice,
            maxPrice: maxPrice,
            orderBy: orderBy,
            order: order,
            page: page,
            featured: featured,
            onSale: onSale,
            attributes: attributes,
            include: include,
            search: search,
            brandIds: brandIds,
          );
        } catch (e, trace) {
          printError(e, trace);
        }
      }
      // If user use ajax search, it can't apply filter when loading product
      if (kAdvanceConfig.ajaxSearchURL.isNotEmpty &&
          search != null &&
          search.isNotEmpty) {
        var result = await ajaxSearch(search);
        return result.data;
      }
      var list = <Product>[];

      /// this cause a bug on Profile List
      /// we just allow cache if the totalItem = perPageItem otherwise, should reload
      if ((page == 0 || page == 1) &&
          categoryCache['$categoryId'] != null &&
          categoryCache['$categoryId']!.isNotEmpty &&
          featured == null &&
          onSale == null &&
          attributes == null) {
        if (categoryCache['$categoryId']!.length == apiPageSize) {
          return categoryCache['$categoryId'];
        }
      }

      var query = ProductQuery.parse(
        category: categoryId,
        tag: tagId,
        page: page,
        minPrice: minPrice,
        maxPrice: maxPrice,
        orderBy: orderBy,
        order: order,
        attributes: attributes,
        featured: featured,
        onSale: onSale,
        userId: userId,
        include: include,
        search: search,
        perPage: apiPageSize,
        brandIds: brandIds,
      );
      var params = '?status=publish&skip_cache=1';
      params += query.toParams(apiVersion: 3);
      params = buildUrlByLang(params);

      params = buildUrlToGetProducts(params);
      printLog('-- fetchProductsByCategory --');
      printLog(params);
      var response = await getWooProductsResponse(params: params, version: 3);

      if (response is Map && isNotBlank(response['message'])) {
        throw Exception(response['message']);
      } else {
        if (response == null) {
          return list;
        }
        for (var item in response) {
          var product = Product.jsonParser(item);

          /// ignore the hidden catalog
          if (item['catalog_visibility'] == 'hidden') {
            continue;
          }

          if ((kAdvanceConfig.hideOutOfStock) &&
              !product.inStock! &&
              !product.backordersAllowed) {
            /// hideOutOfStock product
            continue;
          }

          if (categoryId != null) {
            product.categoryId = categoryId;
          }
          list.add(product);
        }

        /// Search by SKU.
        if (kAdvanceConfig.enableSkuSearch &&
            search != null &&
            search.isNotEmpty) {
          final skuList = await _searchBySku(
            categoryId: categoryId,
            tagId: tagId,
            minPrice: minPrice,
            maxPrice: maxPrice,
            orderBy: orderBy,
            order: order,
            page: page,
            featured: featured,
            onSale: onSale,
            attributes: attributes,
            include: include,
            sku: search,
            brandIds: brandIds,
            userId: userId,
          );

          if (skuList.isNotEmpty) {
            /// Merge results. Let SKU results on top.
            skuList.addAll(list);
            return skuList;
          }
        }
        return list;
      }
    } catch (e, trace) {
      printError(e, trace);
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  Future<List<Product>> _searchBySku({
    String? categoryId,
    String? tagId,
    page = 1,
    minPrice,
    maxPrice,
    orderBy,
    order,
    featured,
    onSale,
    userId,
    String? include,
    String? sku,
    List<String>? brandIds,
    Map? attributes,
  }) async {
    var skuList = <Product>[];
    var query = ProductQuery.parse(
      category: categoryId,
      tag: tagId,
      page: page,
      minPrice: minPrice,
      maxPrice: maxPrice,
      orderBy: orderBy,
      order: order,
      attributes: attributes,
      featured: featured,
      onSale: onSale,
      userId: userId,
      include: include,
      sku: sku,
      perPage: apiPageSize,
      brandIds: brandIds,
    );
    var params = '?status=publish&skip_cache=1';
    params += query.toParams(apiVersion: 3);
    params = buildUrlByLang(params);
    params = buildUrlToGetProducts(params);
    final response = await getWooProductsResponse(params: params, version: 3);
    if (response is List) {
      for (var item in response) {
        final product = Product.jsonParser(item);

        if ((kAdvanceConfig.hideOutOfStock) &&
            !product.inStock! &&
            !product.backordersAllowed) {
          continue;
        }

        skuList.add(product);
      }
    }
    return skuList;
  }

  Future<List<Product>?> boostProductsByCategory({
    categoryId,
    tagId,
    page = 1,
    minPrice,
    maxPrice,
    orderBy,
    order,
    featured,
    onSale,
    String? include,
    String? search,
    List<String>? brandIds,
    Map? attributes,
  }) async {
    return boostProducts(
      category: categoryId,
      tag: tagId,
      featured: featured is bool ? featured : null,
      onSale: onSale is bool ? onSale : null,
      maxPrice: double.tryParse('$maxPrice'),
      minPrice: double.tryParse('$minPrice'),
      attributes: attributes,
      orderBy: orderBy is String ? orderBy : null,
      order: order is String ? order : null,
      offset: page,
      include: include,
      search: search,
      brandIds: brandIds,
    );
  }

  @override
  Future<User?> loginFacebook({String? token}) async {
    const cookieLifeTime = 120960000000;

    try {
      var endPoint =
          '$domain/wp-json/api/flutter_user/fb_connect/?second=$cookieLifeTime'
          // ignore: prefer_single_quotes
          "&access_token=$token$isSecure";

      var response = await httpCache(endPoint.toUri()!);

      var jsonDecode = convert.jsonDecode(response.body);

      if (jsonDecode['wp_user_id'] == null ||
          jsonDecode['cookie'] == null ||
          jsonDecode['user'] == null) {
        throw Exception(jsonDecode['message']);
      }

      return User.fromWooJson(jsonDecode['user'], jsonDecode['cookie'],
          isSocial: true);
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<User> loginSMS({String? token}) async {
    try {
      var idToken = await Services().firebase.getIdToken();
      var endPoint = '$domain/wp-json/api/flutter_user/firebase_sms';
      if (kAdvanceConfig.enableNewSMSLogin) {
        endPoint = '$domain/wp-json/api/flutter_user/firebase_sms_v2';
      }

      var response = await httpPost(endPoint.toUri()!,
          body: convert.jsonEncode({
            'id_token': idToken,
          }),
          headers: {'Content-Type': 'application/json'});

      var jsonDecode = convert.jsonDecode(response.body);

      if (jsonDecode['wp_user_id'] == null ||
          jsonDecode['cookie'] == null ||
          jsonDecode['user'] == null) {
        throw Exception(jsonDecode['message']);
      }

      return User.fromWooJson(jsonDecode['user'], jsonDecode['cookie'],
          isSocial: true);
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<User?> loginApple(
      {String? token, String? firstName, String? lastName}) async {
    try {
      var endPoint = '$domain/wp-json/api/flutter_user/apple_login_2';

      var response = await httpPost(endPoint.toUri()!,
          body: convert.jsonEncode({
            'authorization_code': token,
            'first_name': firstName,
            'last_name': lastName,
            'team_id': kLoginSetting.appleLoginSetting?.appleAccountTeamID,
            'bundle_id': kLoginSetting.appleLoginSetting?.iOSBundleId,
          }),
          headers: {'Content-Type': 'application/json'});

      var jsonDecode = convert.jsonDecode(response.body);

      if (jsonDecode['wp_user_id'] == null ||
          jsonDecode['cookie'] == null ||
          jsonDecode['user'] == null) {
        throw Exception(isNotBlank(jsonDecode['message'])
            ? jsonDecode['message']
            : jsonDecode['code']);
      }

      return User.fromWooJson(jsonDecode['user'], jsonDecode['cookie'],
          isSocial: true);
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<PagingResponse<Review>> getReviews(productId,
      {int page = 1, int perPage = 10}) async {
    return reviewService.getReviews(productId, page: page, perPage: perPage);
  }

  @override
  Future createReview(ReviewPayload payload) async {
    await reviewService.createReview(payload);
  }

  @override
  Future<List<ProductVariation>> getProductVariations(Product product,
      {String? lang = 'en'}) async {
    try {
      final list = <ProductVariation>[];
      var page = 1;

      while (true) {
        var endPoint =
            'products/${product.id}/variations?per_page=100&page=$page';
        endPoint = buildUrlByLang(endPoint);
        endPoint = buildUrlToGetProducts(endPoint);
        var response = await wcApi.getAsync(endPoint);
        if (response is Map && isNotBlank(response['message'])) {
          throw Exception(response['message']);
        } else {
          for (var item in response) {
            if (item['visible']) {
              list.add(ProductVariation.fromJson(item));
            }
          }

          if (response is List && response.length < 100) {
            /// No more data.
            break;
          }

          /// Fetch next page.
          page++;
        }
      }

      return list;
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<List<ShippingMethod>> getShippingMethods({
    CartModel? cartModel,
    String? token,
    String? checkoutId,
    Store? store,
  }) async {
    try {
      // if (!isBookingProduct(cartModel!)) {
      //   return getShippingMethodsByWooApi();
      // }
      var params = Order().toJson(cartModel!, null, false);
      if (!kVendorConfig.disableVendorShipping &&
          ServerConfig().isVendorType()) {
        List lineItems = params['line_items'];
        for (var element in lineItems) {
          final product = cartModel.item[element['product_id']];
          if ((store == null && product!.store == null) ||
              (store != null &&
                  product!.store != null &&
                  product.store!.id == store.id)) {
            params['line_items'] = [element];
          }
        }
      }
      var list = <ShippingMethod>[];
      final response = await httpPost(
          buildUrlByLang(
            '$domain/wp-json/api/flutter_woo/shipping_methods',
          ).toUri()!,
          body: convert.jsonEncode(params),
          headers: {'Content-Type': 'application/json'});

      if (response.statusCode == 502) {
        return getShippingMethodsByWooApi();
      }

      final body = convert.jsonDecode(response.body);
      checkExpiredCookie(response);
      if (response.statusCode == 200) {
        for (var item in body) {
          list.add(ShippingMethod.fromJson(item));
        }
      } else if (body['data'] != null &&
          body['data']['required_shipping'] != null) {
        if (body['data']['required_shipping'] == false) {
          return list;
        } else {
          throw Exception(S.current.emptyShippingMsg);
        }
      } else if (body['message'] != null) {
        throw Exception(body['message']);
      }
      if (list.isEmpty) {
        throw Exception(S.current.emptyShippingMsg);
      }
      return list;
    } catch (err) {
      rethrow;
    }
  }

  bool isBookingProduct(CartModel cartModel) {
    var isBooking = false;
    for (var key in cartModel.productsInCart.keys) {
      var productId = Product.cleanProductID(key);
      var product = cartModel.item[productId]!;
      if (product.bookingInfo != null) {
        isBooking = true;
      }
    }
    return isBooking;
  }

  Future<List<ShippingMethod>> getShippingMethodsByWooApi() async {
    try {
      var list = <ShippingMethod>[];
      var res = await wcApi.getAsync('shipping/zones');
      if (res is Map && isNotBlank(res['message'])) {
        throw Exception(res['message']);
      } else if (res is List && res.isNotEmpty) {
        await Future.forEach(res, (zone) async {
          final zoneId = zone is Map ? zone['id'] : 0;
          var response = await wcApi.getAsync('shipping/zones/$zoneId/methods');
          if (response is Map && isNotBlank(response['message'])) {
            throw Exception(response['message']);
          } else {
            for (var item in response) {
              var methodItem = {
                'id': item['instance_id'],
                'method_id': item['method_id'],
                'instance_id': item['instance_id'],
                'label': item['title'],
                'cost': item['settings']['cost'] != null &&
                        item['settings']['cost']['value'] != null
                    ? item['settings']['cost']['value']
                    : 0,
                'shipping_tax': 0
              };
              list.add(ShippingMethod.fromJson(methodItem));
            }
          }
        });
      }

      if (list.isEmpty) {
        throw Exception(S.current.emptyShippingMsg);
      }
      return list;
    } catch (err) {
      rethrow;
    }
  }

  @override
  Future<List<PaymentMethod>> getPaymentMethods({
    CartModel? cartModel,
    ShippingMethod? shippingMethod,
    String? token,
  }) async {
    try {
      // if (isBookingProduct(cartModel!)) {
      //   return getPaymentMethodsByWooApi();
      // }
      final params = Order().toJson(cartModel!, null, false);

      var list = <PaymentMethod>[];
      final response = await httpPost(
          buildUrlByLang(
            '$domain/wp-json/api/flutter_woo/payment_methods',
          ).toUri()!,
          body: convert.jsonEncode(params),
          headers: {
            'Content-Type': 'application/json',
            'User-Cookie': token ?? '',
          });

      if (response.statusCode == 502) {
        return getPaymentMethodsByWooApi();
      }

      final body = convert.jsonDecode(response.body);
      checkExpiredCookie(response);
      if (response.statusCode == 200) {
        for (var item in body) {
          list.add(PaymentMethod.fromJson(item));
          if (item['id'] == kExpressPayConfig['paymentMethodId'] && isIos) {
            list.add(PaymentMethod(
                id: 'expresspay_apple_pay',
                title: 'ExpressPay Apple Pay',
                enabled: true));
          }
        }
        if (kFIBConfig['enabled'] ?? false) {
          list.add(PaymentMethod(
              id: 'fib', title: 'FIRST IRAQI BANK', enabled: true));
        }
      } else if (body['message'] != null) {
        throw Exception(body['message']);
      }
      return list;
    } catch (err) {
      rethrow;
    }
  }

  Future<List<PaymentMethod>> getPaymentMethodsByWooApi() async {
    try {
      var list = <PaymentMethod>[];
      var response = await wcApi.getAsync('payment_gateways');
      if (response is Map && isNotBlank(response['message'])) {
        throw Exception(response['message']);
      } else {
        for (var item in response) {
          if (item['enabled'] == true &&
              item['id'] != 'wc-appointment-gateway') {
            var methodItem = {
              'id': item['id'],
              'title': item['method_title'],
              'method_title': item['instance_id'],
              'description': item['description']
            };
            list.add(PaymentMethod.fromJson(methodItem));
          }
        }
      }
      return list;
    } catch (err) {
      rethrow;
    }
  }

  @override
  Future<PagingResponse<Order>> getMyOrders({
    User? user,
    dynamic cursor,
    String? cartId,
    String? orderStatus,
  }) async {
    try {
      var endPoint =
          'orders?&customer=${user!.id}&per_page=20&page=$cursor&order=desc&orderby=id&dummy=${DateTime.now().millisecondsSinceEpoch}';
      if (orderStatus?.isNotEmpty ?? false) {
        endPoint += '&status=$orderStatus';
      }
      var response = await wcApi.getAsync(endPoint, version: 3);
      var list = <Order>[];
      if (response is Map && isNotBlank(response['message'])) {
        throw Exception(response['message']);
      } else {
        for (var item in response) {
          list.add(Order.fromJson(item));
        }
        return PagingResponse(data: list);
      }
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<List<OrderNote>> getOrderNote(
      {String? userId, String? orderId}) async {
    try {
      var response = await wcApi.getAsync(
          'orders/$orderId/notes?customer=$userId&per_page=20&type=${kAdvanceConfig.orderNotesWithPrivateNote == true ? 'any' : 'customer'}');
      var list = <OrderNote>[];
      if (response is Map && isNotBlank(response['message'])) {
        throw Exception(response['message']);
      } else {
        for (var item in response) {
//          if (item.type == 'any') {
          /// it is possible to update to `any` note
          /// ref: https://woocommerce.github.io/woocommerce-rest-api-docs/#list-all-order-notes
          list.add(OrderNote.fromJson(item));
//          }
        }
        return list;
      }
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<Order> createOrder({
    CartModel? cartModel,
    UserModel? user,
    bool? paid,
    AdditionalPaymentInfo? additionalPaymentInfo,
  }) async {
    try {
      final params = Order()
          .toJson(cartModel!, user!.user != null ? user.user!.id : null, paid);
      if (additionalPaymentInfo?.transactionId != null) {
        params['transaction_id'] = additionalPaymentInfo?.transactionId;
      }

      final response = await httpPost(
          '$domain/wp-json/api/flutter_order/create'.toUri()!,
          body: convert.jsonEncode(params),
          headers: {
            'User-Cookie': user.user != null ? user.user!.cookie! : '',
            'Content-Type': 'application/json'
          });
      var body = convert.jsonDecode(response.body);
      checkExpiredCookie(response);
      if ((response.statusCode == 201 || response.statusCode == 200) &&
          body['message'] == null) {
        if (cartModel.shippingMethod == null &&
            kPaymentConfig.enableShipping &&
            body['shipping_lines'].length > 0) {
          body['shipping_lines'][0]['method_title'] = null;
        }
        return Order.fromJson(body);
      } else {
        if (body['data']?['params'] is Map &&
            body['data']?['params'].isNotEmpty) {
          throw Exception(body['data']?['params'].values.join(' '));
        }
        throw Exception(body['message']);
      }
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future updateOrder(orderId, {status, token}) async {
    try {
      final response = await httpPost(
          '$domain/wp-json/api/flutter_order/update/$orderId'.toUri()!,
          body: convert.jsonEncode({'status': status}),
          headers: token != null
              ? {
                  'User-Cookie': token,
                  'Content-Type': 'application/json',
                }
              : {});

      var body = convert.jsonDecode(response.body);
      checkExpiredCookie(response);
      if (body['message'] != null) {
        throw Exception(body['message']);
      } else {
        return Order.fromJson(body);
      }
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future? deleteOrder(orderId, {required token}) async {
    try {
      final response = await httpPost(
          '$domain/wp-json/api/flutter_order/delete/$orderId'.toUri()!,
          headers: token != null
              ? {
                  'User-Cookie': token,
                  'Content-Type': 'application/json',
                }
              : {});

      var body = convert.jsonDecode(response.body);
      checkExpiredCookie(response);
      if (body['message'] != null) {
        throw Exception(body['message']);
      } else {
        return true;
      }
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<Order?> cancelOrder({Order? order, String? userCookie}) async {
    final newOrder = await Services()
        .api
        .updateOrder(order!.id, status: 'cancelled', token: userCookie);
    return newOrder;
  }

  Future<PagingResponse<Product>> ajaxSearch(String name) async {
    var list = <Product>[];

    printLog('${kAdvanceConfig.ajaxSearchURL}$name');

    final response =
        await httpPost('${kAdvanceConfig.ajaxSearchURL}$name'.toUri()!);
    final body = convert.jsonDecode(response.body);

    if (body is List) {
      for (var item in body) {
        var product = Product.fromAjaxSearch(item['asp_data']);
        list.add(product);
      }
    }
    return PagingResponse(data: list);
  }

  @override
  Future<PagingResponse<Product>> searchProducts({
    String? name,
    String? categoryId,
    String? tag,
    String attribute = '',
    String attributeId = '',
    int? page,
    String? cursor,
    String listingLocation = '',
    String? userId,
  }) async {
    try {
      if (kAdvanceConfig.ajaxSearchURL.isNotEmpty) {
        return ajaxSearch(name ?? '');
      }

      if (kBoostEngineConfig.isOptimizeEnable) {
        try {
          final products = await boostProducts(
            category: categoryId,
            tag: tag,
            attributes: {attribute: attributeId},
            offset: page,
            search: name,
          );
          return PagingResponse(data: products);
        } catch (e, trace) {
          printError(e, trace);
        }
      }

      var params = '?status=publish';
      params = buildUrlByLang(params);
      var query = ProductQuery(
        category: categoryId,
        attributes: {attribute: attributeId},
        tag: tag,
        userId: userId,
        page: page,
        perPage: apiPageSize,
        search: name,
      );
      params += query.toParams(apiVersion: 3);
      params = buildUrlToGetProducts(params);
      final response = await getWooProductsResponse(
        params: params,
        version: 3,
      );
      if (response is Map && isNotBlank(response['message'])) {
        throw Exception(response['message']);
      } else {
        var list = <Product>[];
        for (var item in response) {
          /// ignore the hidden catalog
          if (item['catalog_visibility'] == 'hidden') {
            continue;
          }

          final product = Product.jsonParser(item);

          if ((kAdvanceConfig.hideOutOfStock) &&
              !product.inStock! &&
              !product.backordersAllowed) {
            continue;
          }

          list.add(product);
        }

        /// Search by SKU.
        if (kAdvanceConfig.enableSkuSearch && name != null && name.isNotEmpty) {
          final skuList = await _searchBySku(
            sku: name,
            categoryId: categoryId,
            tagId: tag,
            attributes: {attribute: attributeId},
            page: page,
            userId: userId,
          );

          if (skuList.isNotEmpty) {
            /// Merge results. Let SKU results on top.
            skuList.addAll(list);
            return PagingResponse(data: skuList);
          }
        }
        return PagingResponse(data: list);
      }
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  /// Auth
  @override
  Future<User?> getUserInfo(cookie) async {
    try {
      var base64Str = EncodeUtils.encodeCookie(cookie);
      final response = await httpGet(
        '$domain/wp-json/api/flutter_user/get_currentuserinfo?token=$base64Str&$isSecure'
            .toUri()!,
        refreshCache: true,
      );
      final body = convert.jsonDecode(response.body);
      checkExpiredCookie(response);
      if (body['user'] != null) {
        var user = body['user'];
        return User.fromWooJson(user, cookie);
      } else {
        if (body['message'] != 'Invalid cookie') {
          throw Exception(body['message']);
        }
        return null;

        /// we may handle if Invalid cookie here
      }
    } catch (err) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<Map<String, dynamic>> updateUserInfo(
      Map<String, dynamic> json, String? token) async {
    try {
      final body = convert.jsonEncode({...json, 'cookie': token});

      final response = await httpPost(
          '$domain/wp-json/api/flutter_user/update_user_profile'.toUri()!,
          body: body,
          headers: {'Content-Type': 'application/json'});
      final data = jsonDecode(response.body);
      checkExpiredCookie(response);

      if (response.statusCode == 200) {
        data['cookie'] = token;
        return data;
      } else if (data['message'] != null) {
        throw Exception(data['message']);
      } else {
        throw Exception(S.current.canNotUpdateInfo);
      }
    } catch (err) {
      rethrow;
    }
  }

  /// Create a New User
  @override
  Future<User?> createUser({
    String? firstName,
    String? lastName,
    String? username,
    String? email,
    String? password,
    String? phoneNumber,
    bool isVendor = false,
  }) async {
    try {
      var niceName = '${firstName!} ${lastName!}';
      var endpoint =
          '$domain/wp-json/api/flutter_user/sign_up/?insecure=cool&$isSecure'
              .toUri()!;
      final response = await httpPost(endpoint,
          body: convert.jsonEncode({
            'user_email': email ?? username,
            'user_login': username ?? email,
            'username': username ?? email,
            'user_pass': password,
            'email': email ?? username,
            'user_nicename': niceName,
            'display_name': niceName,
            'phone': phoneNumber,
            'first_name': firstName,
            'last_name': lastName,
          }),
          headers: {'Content-Type': 'application/json'});
      var body = convert.jsonDecode(response.body);
      if (response.statusCode == 200 && body['message'] == null) {
        var cookie = body['cookie'];
        return await getUserInfo(cookie);
      } else {
        var message = body['message'];
        throw Exception(message ?? S.current.canNotCreateUser);
      }
    } catch (err) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  /// login
  @override
  Future<User?> login({username, password}) async {
    var cookieLifeTime = 120960000000;
    try {
      final response = await httpPost(
          '$domain/wp-json/api/flutter_user/generate_auth_cookie/?insecure=cool&$isSecure'
              .toUri()!,
          body: convert.jsonEncode({'seconds': cookieLifeTime.toString(), 'username': username, 'password': password}),
          headers: {'Content-Type': 'application/json'});

      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 200 && isNotBlank(body['cookie'])) {
        return await getUserInfo(body['cookie']);
      } else if (body['code'] == 'pending_approval') {
        throw (S.current.accountIsPendingApproval);
      } else if (body['code'] == 'too_many_retries') {
        // For plugin https://wordpress.org/plugins/limit-login-attempts-reloaded/
        throw (S.current.tooManyFailedLogin);
      } else if (body['message'] != null) {
        throw body['message'];
      } else {
        throw (S.current.userNameInCorrect);
      }
    } catch (err, trace) {
      printError(err, trace, '🔥 Integration error:');
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  Future<Stream<Product>> streamProductsLayout({required config}) async {
    try {
      var endPoint = 'products?per_page=$apiPageSize';
      if (config['category'] != null &&
          config['category'].toString().isNotEmpty &&
          config['category'] != kEmptyCategoryID) {
        endPoint += "&category=${config["category"]}";
      }
      if (config['tag'] != null && config['tag'].toString().isNotEmpty) {
        endPoint += "&tag=${config["tag"]}";
      }
      endPoint = buildUrlToGetProducts(endPoint);
      var response = await wcApi.getStream(endPoint);

      return response.stream
          .transform(utf8.decoder)
          .transform(json.decoder)
          .expand((data) => (data as List))
          .map(Product.jsonParser);
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<Product?> getProduct(id) async {
    try {
      var endpoint = 'products/$id';
      endpoint = buildUrlByLang(endpoint);
      endpoint = buildUrlToGetProducts(endpoint);
      var response = await wcApi.getAsync(endpoint);

      if (response is Map && isNotBlank(response['message'])) {
        printLog('GetProduct Error: ${response['message']}');
        return null;
      }

      var product = Product.jsonParser(response ?? {});
      if (product.isCompositeProduct) {
        var components = await Services().api.getProductComponents(product.id);
        product.components = components;
      }
      return product;
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<ProductVariation?> getVariationProduct(String productId, variationId,
      {lang}) async {
    try {
      var endpoint = 'products/$productId/variations/$variationId';
      endpoint = buildUrlByLang(endpoint);
      endpoint = buildUrlToGetProducts(endpoint);
      var response = await wcApi.getAsync(endpoint);

      if (response is Map && isNotBlank(response['message'])) {
        printLog('GetProduct Error: ${response['message']}');
        return null;
      }

      return ProductVariation.fromJson(response);
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<Coupons> getCoupons({int page = 1, String search = ''}) async {
    try {
      var response = await wcApi.getAsync(
          'coupons?page=$page${search.isNotEmpty ? '&search=$search' : ''}');
      //printLog(response.toString());
      return Coupons.getListCoupons(response);
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<Map<String, dynamic>?> getHomeCache(String? lang) async {
    try {
      var endpoint = 'flutter/cache';
      endpoint = buildUrlByLang(endpoint, isForceUseLang: true);
      endpoint = buildUrlToGetProducts(endpoint);

      final data = await wcApi.getAsync(endpoint);
      if (data == null || data is! Map) {
        throw Exception("Can't get home cache");
      }
      if (data['message'] != null) {
        throw Exception(data['message']);
      }
      var config = Map<String, dynamic>.from(data);
      if (config['HorizonLayout'] != null) {
        var horizontalLayout = config['HorizonLayout'] as List;
        for (var i = 0; i < horizontalLayout.length; i++) {
          if (horizontalLayout[i]['radius'] != null) {
            horizontalLayout[i]['radius'] =
                double.parse("${horizontalLayout[i]["radius"]}");
          }
          if (horizontalLayout[i]['size'] != null) {
            horizontalLayout[i]['size'] =
                double.parse("${horizontalLayout[i]["size"]}");
          }
          if (horizontalLayout[i]['padding'] != null) {
            horizontalLayout[i]['padding'] =
                double.parse("${horizontalLayout[i]["padding"]}");
          }
        }
        return config;
      }
      return null;
    } catch (e, trace) {
      printError(e, trace);
      return null;
    }
  }

  @override
  Future<User?> loginGoogle({String? token}) async {
    const cookieLifeTime = 120960000000;

    try {
      var endPoint =
          '$domain/wp-json/api/flutter_user/google_login/?second=$cookieLifeTime'
                  '&access_token=$token$isSecure'
              .toUri()!;

      var response = await httpGet(endPoint);

      var jsonDecode = convert.jsonDecode(response.body);

      if (jsonDecode['wp_user_id'] == null ||
          jsonDecode['cookie'] == null ||
          jsonDecode['user'] == null) {
        throw Exception(jsonDecode['message']);
      }
      return User.fromWooJson(jsonDecode['user'], jsonDecode['cookie'],
          isSocial: true);
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  /// This layout only suitable for the small Categories items
  @override
  Future getCategoryWithCache() async {
    List<Category> getSubCategories(id) {
      return categories.where((o) => o.parent == id).toList();
    }

    bool hasChildren(id) {
      return categories.where((o) => o.parent == id).toList().isNotEmpty;
    }

    List<Category> getParentCategory() {
      return categories.where((item) => item.parent == '0').toList();
    }

    var categoryIds = <String>[];
    var parentCategories = getParentCategory();
    for (var item in parentCategories) {
      if (hasChildren(item.id)) {
        var subCategories = getSubCategories(item.id);
        for (var item in subCategories) {
          categoryIds.add(item.id.toString());
        }
      } else {
        categoryIds.add(item.id.toString());
      }
    }

    return await getCategoryCache(categoryIds);
  }

  Future<Map<String, dynamic>> getCategoryCache(categoryIds) async {
    try {
      final data = await wcApi.getAsync(
          'flutter/category/cache?categoryIds=${List<String>.from(categoryIds).join(",")}');
      if (data != null) {
        for (var i = 0; i < categoryIds.length; i++) {
          var productsJson = data['${categoryIds[i]}'] as List?;
          var list = <Product>[];
          if (productsJson != null && productsJson.isNotEmpty) {
            for (var item in productsJson) {
              var product = Product.jsonParser(item);
              product.categoryId = categoryIds[i];
              list.add(product);
            }
          }
          categoryCache['${categoryIds[i]}'] = list;
        }
      }

      return categoryCache;
    } catch (e, trace) {
      printLog(trace.toString());
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<List<Tag>> getFilterTags() async {
    try {
      var list = <Tag>[];
      var url = 'products/tags';

      url = buildUrlByLang(url);

      var response = await wcApi.getAsync(url);

      if (response is Map && isNotBlank(response['message'])) {
        throw Exception(response['message']);
      } else {
        for (var item in response) {
          list.add(Tag.fromJson(item));
        }
      }

      return list;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> getCheckoutUrl(
      Map<String, dynamic> params, String? lang) async {
    try {
      var str = convert.jsonEncode(params);
      var bytes = convert.utf8.encode(str);
      var base64Str = convert.base64.encode(bytes);

      final response =
          await httpPost('$domain/wp-json/api/flutter_user/checkout'.toUri()!,
              body: convert.jsonEncode({
                'order': base64Str,
              }),
              headers: {'Content-Type': 'application/json'});
      var body = convert.jsonDecode(response.body);
      checkExpiredCookie(response);
      if (response.statusCode == 200 && body is String) {
        var endpoint = '$domain/mstore-checkout?code=$body&mobile=true';
        if (kPaymentConfig.enableOnePageCheckout ||
            kPaymentConfig.nativeOnePageCheckout ||
            kPaymentConfig.guestCheckout ||
            params['token'] == null) {
          var checkoutPageSlug =
              Map<String, dynamic>.from(kPaymentConfig.checkoutPageSlug);
          String? slug = checkoutPageSlug[lang!];
          slug ??= checkoutPageSlug.values.toList().first;
          slug ??= 'checkout';
          slug = slug.contains('?') ? '$slug&' : '$slug?';
          endpoint = '$domain/${slug}code=$body&mobile=true';
        }
        if (UniversalPlatform.isWeb) {
          endpoint += '&platform=web';
        }
        if (kBranchConfig.enable) {
          endpoint = Uri.parse(endpoint).withCurrentBranch().toString();
        }
        printLog(endpoint);
        return endpoint;
      } else {
        var message = body['message'];
        throw Exception(message ?? S.current.canNotSaveOrder);
      }
    } catch (err) {
      rethrow;
    }
  }

  @override
  Future<String> submitForgotPassword(
      {String? forgotPwLink, Map<String, dynamic>? data}) async {
    try {
      var endpoint = '$domain/wp-json/api/flutter_user/reset-password';
      if (kAdvanceConfig.isMultiLanguages) {
        endpoint += '?lang=$languageCode';
      }
      var response = await httpPost(endpoint.toUri()!,
          body: convert.jsonEncode(data),
          headers: {'Content-Type': 'application/json'});
      var result = convert.jsonDecode(response.body);
      if (response.statusCode == 200) {
        return '';
      } else {
        return result['message'];
      }
    } catch (e) {
      printLog(e);
      return 'Unknown Error: $e';
    }
  }

  @override
  Future<Map<String, dynamic>?> getCurrencyRate() async {
    try {
      final url = kAdvanceConfig.enableWOOCSCurrencySwitcher
          ? '$domain/wp-json/woocs/v3/currency'
          : '$domain/wp-json/api/flutter_user/get_currency_rates';
      final response = await httpCache(url.toUri()!);
      var body = convert.jsonDecode(response.body);
      if (response.statusCode == 200 && body != null && body is Map) {
        var data = Map<String, dynamic>.from(body);
        var currency = <String, dynamic>{};
        for (var key in data.keys) {
          currency[key.toUpperCase()] =
              double.parse("${data[key]['rate'] == 0 ? 1 : data[key]['rate']}");
        }
        return currency;
      } else {
        return null;
      }
    } catch (err) {
      return null;
    }
  }

  @override
  Future getCountries() async {
    try {
      var url = '$domain/wp-json/api/flutter_user/get_countries';
      url = buildUrlByLang(url);
      final response = await httpCache(url.toUri()!);
      var body = convert.jsonDecode(response.body);
      return body;
    } catch (err) {
      rethrow;
    }
  }

  @override
  Future getStatesByCountryId(countryId) async {
    try {
      var url =
          '$domain/wp-json/api/flutter_user/get_states?country_code=$countryId';
      url = buildUrlByLang(url);
      final response = await httpGet(url.toUri()!);
      var body = convert.jsonDecode(response.body);
      return body;
    } catch (err) {
      rethrow;
    }
  }

  @override
  Future<List<dynamic>?>? getCartInfo(String? token) async {
    try {
      var base64Str = EncodeUtils.encodeCookie(token!);
      final response = await httpGet(
          '$domain/wp-json/api/flutter_woo/cart?token=$base64Str'.toUri()!);
      final body = convert.jsonDecode(response.body);
      checkExpiredCookie(response);
      if (response.statusCode == 200) {
        return body;
      } else if (body['message'] != null) {
        throw Exception(body['message']);
      }
      return null;
    } catch (err) {
      rethrow;
    }
  }

  @override
  Future syncCartToWebsite(CartModel cartModel, User? user) async {
    try {
      final params = Order()
          .toJson(cartModel, cartModel.user != null ? user!.id : null, false);

      final response = await httpPost(
          '$domain/wp-json/api/flutter_woo/cart'.toUri()!,
          body: convert.jsonEncode(params),
          headers: {
            'Content-Type': 'application/json',
            'User-Cookie': cartModel.user?.cookie ?? '',
          });
      final body = convert.jsonDecode(response.body);
      checkExpiredCookie(response);
      if (response.statusCode == 200) {
        return body;
      } else if (body['message'] != null) {
        throw Exception(body['message']);
      }
      return null;
    } catch (err) {
      rethrow;
    }
  }

  @override
  Future<Map<String, dynamic>> getCustomerInfo(String? id) async {
    try {
      final response = await wcApi.getAsync('customers/$id');
      if (response['message'] != null) {
        throw Exception(response['message']);
      }
      if (response['billing'] != null) {
        final address = Address.fromJson(response);
        final billing = Address.fromJson(response['billing']);
        billing.firstName =
            billing.firstName!.isEmpty ? address.firstName : billing.firstName;
        billing.lastName =
            billing.lastName!.isEmpty ? address.lastName : billing.lastName;
        billing.email = billing.email!.isEmpty ? address.email : billing.email;
        if (billing.country!.isEmpty) {
          billing.country = kPaymentConfig.defaultCountryISOCode;
        }
        if (billing.state!.isEmpty) {
          billing.state = kPaymentConfig.defaultStateISOCode;
        }
        response['billing'] = billing;
      }
      return response;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<CartTax?> getTaxes(CartModel cartModel, String? token) async {
    try {
      if (isBookingProduct(cartModel)) return null;
      final params = Order().toJson(cartModel, cartModel.user?.id, false);

      final response = await httpPost(
          '$domain/wp-json/api/flutter_woo/taxes'.toUri()!,
          body: convert.jsonEncode(params),
          headers: {'Content-Type': 'application/json'});
      final body = convert.jsonDecode(response.body);
      checkExpiredCookie(response);
      if (response.statusCode == 200) {
        var taxes = <Tax>[];
        body['items'].forEach((item) {
          taxes.add(Tax.fromJson(item));
        });
        return CartTax(
            items: taxes,
            total: double.parse("${body['taxes_total']}"),
            isIncludingTax: body['is_including_tax']);
      } else if (body['message'] != null) {
        throw Exception(body['message']);
      }
      return null;
    } catch (err) {
      rethrow;
    }
  }

  @override
  Future<PagingResponse<Tag>> getTagsByPage({
    int? page,
    required int limit,
    String? categoryIds,
    String? brandIds,
  }) async {
    try {
      var url =
          'products/tags?per_page=$limit&page=$page&hide_empty=${kAdvanceConfig.hideEmptyTags}';
      url = buildUrlByLang(url);
      if (isNotBlank(categoryIds)) {
        url += '&category=$categoryIds';
      }
      if (isNotBlank(brandIds)) {
        url += '&brand=$brandIds';
      }

      var response = await wcApi.getAsync(url);

      final listTags = Tag.parseTagList(response);
      return PagingResponse(data: listTags);
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<Tag> getTagById({required tagId}) async {
    try {
      var url = 'products/tags/$tagId';
      var response = await wcApi.getAsync(url);
      if (response is Map && isNotBlank(response['message'])) {
        throw Exception(response['message']);
      } else {
        return Tag.fromJson(response);
      }
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<Tag?> getTagBySlug(String slug) async {
    try {
      var url = 'products/tags?slug=$slug';
      var response = await wcApi.getAsync(url);
      if (response is Map && isNotBlank(response['message'])) {
        throw Exception(response['message']);
      } else {
        final tagItem = List.from(response).firstOrNull;
        if (tagItem == null) throw S.current.tagNotExist;
        return Tag.fromJson(tagItem);
      }
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<bool> pushNotification(cookie,
      {receiverEmail, senderName, message}) async {
    try {
      var base64Str = EncodeUtils.encodeCookie(cookie);
      final endpoint = '$domain/wp-json/api/flutter_user/notification';
      final res = await httpPost(endpoint.toUri()!, body: {
        'token': base64Str,
        'receiver': receiverEmail,
        'sender': senderName,
        'message': message,
      });
      if (res.statusCode == 200) {
        return true;
      } else {
        throw Exception(res.statusCode);
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<PagingResponse<Order>> getVendorOrders(
      {required User user, dynamic cursor = 1}) async {
    try {
      var base64Str = EncodeUtils.encodeCookie(user.cookie!);
      final response = await httpGet(
          '$domain/wp-json/wc/v2/flutter/vendor-orders?page=$cursor&per_page=25&token=$base64Str'
              .toUri()!);
      printLog(
          '$domain/wp-json/wc/v2/flutter/vendor-orders?page=$cursor&token=$base64Str'
              .toUri());
      var body = convert.jsonDecode(response.body);
      var list = <Order>[];
      if (body is Map && isNotBlank(body['message'])) {
        throw Exception(body['message']);
      } else {
        for (var item in body) {
          list.add(Order.fromJson(item));
        }
        return PagingResponse(data: list);
      }
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<Product> createProduct(
      String? cookie, Map<String, dynamic> data) async {
    try {
      final response = await httpPost(
          '$domain/wp-json/api/flutter_multi_vendor/product'.toUri()!,
          body: convert.jsonEncode(data),
          headers: {
            'User-Cookie': cookie!,
            'Content-Type': 'application/json'
          });
      var body = convert.jsonDecode(response.body);
      checkExpiredCookie(response);
      if (body['message'] == null) {
        return Product.jsonParser(body);
      } else {
        throw Exception(body['message']);
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Product>> getOwnProducts(String? cookie,
      {int? page, int? perPage}) async {
    try {
      var endPoint = '$domain/wp-json/api/flutter_multi_vendor/products/owner';

      endPoint = endPoint
          .addUrlQuery('is_all_data=${kAdvanceConfig.enableIsAllData == true}');

      endPoint = buildUrlToGetProducts(endPoint);
      final response = await httpPost(endPoint.toUri()!,
          body: convert.jsonEncode({'cookie': cookie, 'page': page}),
          headers: {
            'User-Cookie': cookie!,
            'Content-Type': 'application/json'
          });
      var body = convert.jsonDecode(response.body);
      checkExpiredCookie(response);
      if (body is Map && isNotBlank(body['message'])) {
        throw Exception(body['message']);
      } else {
        var list = <Product>[];
        for (var item in body) {
          list.add(Product.jsonParser(item));
        }
        return list;
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<dynamic> uploadImage(dynamic data, String? token) async {
    try {
      final response = await httpPost(
          '$domain/wp-json/api/flutter_multi_vendor/media'.toUri()!,
          body: convert.jsonEncode(data),
          headers: {'User-Cookie': token!, 'Content-Type': 'application/json'});
      var body = convert.jsonDecode(response.body);
      checkExpiredCookie(response);
      if (body['message'] == null) {
        return body;
      } else {
        throw Exception(body['message']);
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Point?> getMyPoint(String? token) async {
    try {
      var base64Str = EncodeUtils.encodeCookie(token!);
      final response = await httpGet(
          '$domain/wp-json/api/flutter_woo/points?token=$base64Str'.toUri()!);
      final body = convert.jsonDecode(response.body);
      checkExpiredCookie(response);
      if (response.statusCode == 200) {
        return Point.fromJson(body);
      } else if (body['message'] != null) {
        throw Exception(body['message']);
      }
      return null;
    } catch (err) {
      rethrow;
    }
  }

  @override
  Future updatePoints(String? token, Order? order) async {
    try {
      final response = await httpPatch(
          '$domain/wp-json/api/flutter_woo/points'.toUri()!,
          body: convert.jsonEncode({'cookie': token, 'order_id': order!.id}));
      final body = convert.jsonDecode(response.body);
      checkExpiredCookie(response);
      if (response.statusCode == 200) {
        return body;
      } else if (body['message'] != null) {
        throw Exception(body['message']);
      }
      return null;
    } catch (err) {
      rethrow;
    }
  }

  @override
  Future<BookStatus>? bookService({userId, value, message}) => null;

  @override
  Future<List<Product>> getProductNearest(location) async {
    try {
      var list = <Product>[];
      var lat = location.latitude;
      var long = location.longitude;
      var urlReq =
          '$domain/wp-json/wp/v2/${DataMapping().kProductPath}?status=publish&_embed=true';
      if (lat != 0 || long != 0) {
        urlReq += '&isGetLocate=true&lat=$lat&long=$long';
      }
      final response = await httpGet(urlReq.toUri()!);
      if (response.statusCode == 200) {
        for (var item in convert.jsonDecode(response.body)) {
          var product = Product.fromListingJson(item);
          var gallery = <String>[];
          for (var item in product.images) {
            if (!item.contains('http')) {
              var res =
                  await httpGet('$domain/wp-json/wp/v2/media/$item'.toUri()!);
              gallery.add(convert.jsonDecode(res.body)['source_url']);
            } else {
              gallery.add(item);
            }
          }
          product.images = gallery;
          list.add(product);
        }
      }
      printLog('getProductNearest');
      return list;
    } catch (err) {
      printLog('err at getProduct Recents func ${err.toString()}');
      rethrow;
    }
  }

  @override
  Future<List<ListingBooking>> getBooking({userId, page, perPage}) {
    throw UnimplementedError();
  }

  @override
  Future<bool> createBooking(dynamic bookingInfo) async {
    if (bookingInfo.isAvaliableOrder && bookingInfo.isEmpty == false) {
      final response = await httpPost(
          '$domain/wp-json/api/flutter_booking/checkout'.toUri()!,
          body: convert.jsonEncode(bookingInfo.toJsonAPI()),
          headers: {'Content-Type': 'application/json'});

      var body = convert.jsonDecode(response.body);
      checkExpiredCookie(response);
      if (response.statusCode == 200 && body['appointment'] != null) {
        return true;
      } else {
        return false;
      }
    }
    return false;
  }

  @override
  Future<List<StaffBookingModel>> getListStaff(String? idProduct) async {
    final urlAPI = wcApi.getOAuthURLExternal(
        '$domain/wp-json/api/flutter_booking/get_staffs?product_id=$idProduct');

    final response = await httpCache(urlAPI.toUri()!, refreshCache: true);

    var body = convert.jsonDecode(response.body);
    if (response.statusCode == 200) {
      final listStaff = <StaffBookingModel>[];
      if (body is List) {
        if (body.isNotEmpty) {
          for (var staff in body) {
            if (staff != null) {
              listStaff.add(StaffBookingModel.fromJson(staff));
            }
          }
        }
      }
      return listStaff;
    } else {
      return [];
    }
  }

  @override
  Future<List<String>> getSlotBooking(
      String? idProduct, String idStaff, String date) async {
    var urlAPI =
        '$domain/wp-json/api/flutter_booking/get_slots?product_id=$idProduct&date=$date';

    if ((idStaff.isNotEmpty) && idStaff != 'null') {
      urlAPI += '&staff_ids=$idStaff';
    }

    final response = await httpGet(urlAPI.toUri()!);
    if (response.body.isNotEmpty) {
      final listSlot = <String>[];
      final result = convert.jsonDecode(response.body);
      if (result is List) {
        for (var item in result) {
          if (item?.isNotEmpty ?? false) {
            listSlot.add('$item');
          }
        }
      }
      return listSlot;
    }
    return <String>[];
  }

  @override
  Future<Map<String, dynamic>>? checkBookingAvailability({data}) => null;

  @override
  Future<List<dynamic>>? getLocations() => null;

  @override
  Future<Product?> getProductByPermalink(String productPermalink) async {
    try {
      final response = await httpGet(
          '$domain/wp-json/api/flutter_woo/products/dynamic?url=$productPermalink'
              .toUri()!);

      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 200) {
        return Product.jsonParser(body[0]);
      } else if (body['message'] != null) {
        throw Exception(body['message']);
      }
      return null;
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<Category?> getProductCategoryByPermalink(
      String productCategoryPermalink) async {
    try {
      final response = await httpGet(
          '$domain/wp-json/api/flutter_woo/product-category/dynamic?url=$productCategoryPermalink'
              .toUri()!);

      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 200) {
        return Category.fromJson(body[0]);
      } else if (body['message'] != null) {
        throw Exception(body['message']);
      }
      return null;
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<Blog?> getBlogByPermalink(String blogPermaLink) async {
    try {
      final response = await httpGet(
          '$domain/wp-json/api/flutter_blog/blog/dynamic?url=$blogPermaLink'
              .toUri()!);
      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 200) {
        return Blog.fromWooJson(body);
      } else if (body['message'] != null) {
        throw Exception(body['message']);
      }
      return null;
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<List<Brand>?> getBrands({
    int page = 1,
    int perPage = 10,
    List<String>? categoryIds,
  }) async {
    try {
      var endpoint =
          'products/brands?per_page=$perPage&page=$page&hide_empty=true';
      endpoint = buildUrlByLang(endpoint);
      if (categoryIds != null) {
        endpoint = endpoint.addUrlQuery('category=${categoryIds.join(',')}');
      }
      var response = await wcApi.getAsync(endpoint);
      var list = <Brand>[];
      if (response is Map && isNotBlank(response['message'])) {
        throw Exception(response['message']);
      } else {
        if (response != null) {
          for (var item in response) {
            list.add(Brand.fromJson(item));
          }
        }
        return list;
      }
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<List<Product>?> fetchProductsByBrand({page, brandId}) async {
    try {
      var endpoint = 'products?brand=$brandId&page=$page&per_page=10';
      endpoint = buildUrlByLang(endpoint);
      endpoint = buildUrlToGetProducts(endpoint);
      var response = await wcApi.getAsync(endpoint);
      var list = <Product>[];
      if (response is Map && isNotBlank(response['message'])) {
        throw Exception(response['message']);
      } else {
        for (var item in response) {
          final product = Product.jsonParser(item);
          if ((kAdvanceConfig.hideOutOfStock) && !product.inStock!) {
            /// hideOutOfStock product
            continue;
          }
          list.add(product);
        }
        return list;
      }
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<List<OrderDeliveryDate>> getListDeliveryDates({storeId}) async {
    var list = <OrderDeliveryDate>[];
    try {
      var endpoint = '$domain/wp-json/api/flutter_woo/ddates';
      if (storeId != null) {
        endpoint += '?id=$storeId';
      }
      var response = await httpGet(endpoint.toUri()!);
      if (response.statusCode == 200) {
        var result = convert.jsonDecode(response.body);
        for (var item in result) {
          list.add(OrderDeliveryDate.fromJson(item));
        }
      }
    } catch (e, trace) {
      printLog(e);
      printLog(trace);
    }
    return list;
  }

  @override
  Future<bool> isUserExisted({String? phone, String? username}) async {
    try {
      var endpoint = '$domain/wp-json/api/flutter_user/check-user?';
      if (phone != null) {
        final mobile = phone.replaceAll('+', '').replaceAll(' ', '');
        endpoint += '&phone=$mobile';
      }
      if (username != null) {
        endpoint += '&username=$username';
      }
      final response = await httpGet(endpoint.toUri()!, refreshCache: true);
      if (response.statusCode == 200) {
        /// Need to trim. It returns "									true" for some reason 😂.
        return response.body.trim() == 'true';
      }
    } catch (e) {
      printLog('isPhoneNumberExisted $e');
    }
    return false;
  }

  @override
  Future<Category?> getProductCategoryById({required categoryId}) async {
    try {
      var url = 'products/categories/$categoryId';
      var response = await wcApi.getAsync(url);
      if (response is Map && isNotBlank(response['message'])) {
        throw Exception(response['message']);
      } else {
        return Category.fromJson(response);
      }
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<Brand?> getBrandById(brandId) async {
    try {
      var url = 'products/brands/$brandId';
      var response = await wcApi.getAsync(url);
      if (response is Map && isNotBlank(response['message'])) {
        throw Exception(response['message']);
      } else {
        return Brand.fromJson(response);
      }
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<Brand?> getBrandBySlug(String slug) async {
    try {
      var url = 'products/brands?slug=$slug';
      var response = await wcApi.getAsync(url);
      if (response is Map && isNotBlank(response['message'])) {
        throw Exception(response['message']);
      } else {
        final brandItem = List.from(response).firstOrNull;
        if (brandItem == null) throw 'This brand does not exist';
        return Brand.fromJson(brandItem);
      }
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<void> deleteProduct(
      {required String? productId, required String? cookie}) async {
    try {
      final response = await httpDelete(
          '$domain/wp-json/api/flutter_multi_vendor/product/$productId'
              .toUri()!,
          headers: {'User-Cookie': cookie!, 'Content-Type': 'application/json'},
          enableDio: true);
      var body = convert.jsonDecode(response.body);
      checkExpiredCookie(response);
      if (body['message'] == null) {
        return;
      } else {
        throw Exception(body['message']);
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<dynamic>? getDataFromScanner(String data, {String? cookie}) async {
    try {
      var endpoint = '$domain/wp-json/api/flutter_woo/scanner?data=$data';
      if (cookie != null) {
        var base64Str = EncodeUtils.encodeCookie(cookie);
        endpoint += '&token=$base64Str';
      }
      final response = await httpGet(endpoint.toUri()!, enableDio: true);
      var body = convert.jsonDecode(response.body);
      checkExpiredCookie(response);
      if (body['code'] == null) {
        if (body['type'] == 'product') {
          return Product.jsonParser(body['data'].first);
        }
        if (body['type'] == 'shop_order') {
          return Order.fromJson(body['data'].first);
        }
        return null;
      } else {
        throw body['code'];
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<PagingResponse<Category>> getSubCategories({
    dynamic page = 1,
    int limit = 25,
    required String? parentId,
  }) async {
    try {
      var url =
          'products/categories?parent=${parentId ?? _rootCategoryId}&per_page=$limit&page=$page&hide_empty=${kAdvanceConfig.hideEmptyCategories}';

      if (kExcludedCategoryIDs?.isNotEmpty ?? false) {
        url = url.addUrlQuery('exclude=$kExcludedCategoryIDs');
      }
      url = buildUrlByLang(url);
      var response = await wcApi.getAsync(url);
      return PagingResponse<Category>(
        data: Category.parseCategoryList(response),
      );
    } catch (e) {
      //This error exception is about your RegetHomeCache(st API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<bool> checkProductPermission(String productId, String? cookie) async {
    try {
      var endpoint =
          '$domain/wp-json/api/flutter_woo/products/$productId/check';
      if (cookie != null) {
        var base64Str = EncodeUtils.encodeCookie(cookie);
        endpoint += '?token=$base64Str';
      }
      final response = await httpGet(endpoint.toUri()!, enableDio: true);
      var body = convert.jsonDecode(response.body);
      checkExpiredCookie(response);
      if (body is Map && isNotBlank(body['code'])) {
        throw body['code'];
      }
      if (body is Map && isNotBlank(body['message'])) {
        throw body['message'];
      }
      return body == true;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> deleteAccount(String token) async {
    try {
      final response = await httpPost(
          '$domain/wp-json/api/flutter_customer/delete_account'.toUri()!,
          headers: {
            'User-Cookie': token,
            'X-HTTP-Method-Override': 'DELETE', //fix 403 error on some website
            'Content-Type': 'application/json',
          });
      var body = convert.jsonDecode(response.body);
      checkExpiredCookie(response);
      if (body is Map && body['message'] != null) {
        if (body['code'] == 'invalid_account') {
          throw Exception(S.current.cannotDeleteAccount);
        }
        throw body['message'];
      }
      return true;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<PagingResponse<Product>> getProductsByCategoryId(
    String categoryId, {
    String? langCode,
    dynamic page = 1,
    int limit = 25,
    String? orderBy,
    String? order,
  }) async {
    try {
      var url =
          'products?category=$categoryId&per_page=$limit&page=$page&status=publish';
      url = buildUrlByLang(url);

      if (orderBy != null) {
        url += '&orderby=$orderBy';
      }
      if (order != null) {
        url += '&order=$order';
      }
      final response = await wcApi.getAsync(url, version: 3);
      var list = <Product>[];
      if (response is Map && isNotBlank(response['message'])) {
        throw Exception(response['message']);
      } else {
        for (var item in response) {
          list.add(Product.jsonParser(item));
        }
        return PagingResponse(data: list);
      }
    } catch (e) {
      return const PagingResponse(data: []);
    }
  }

  @override
  Future<Order>? createIAPOrder(Map<String, dynamic> params, User? user) async {
    try {
      final response = await httpPost(
          '$domain/wp-json/api/flutter_order/create'.toUri()!,
          body: convert.jsonEncode(params),
          headers: {
            'User-Cookie': user != null ? user.cookie! : '',
            'Content-Type': 'application/json'
          });
      var body = convert.jsonDecode(response.body);
      if (response.statusCode == 201 && body['message'] == null) {
        return Order.fromJson(body);
      } else {
        throw Exception(body['message']);
      }
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<RatingCount?>? getProductRatingCount(String productId) async {
    return reviewService.getProductRatingCount(productId);
  }

  @override
  Future<List<Product>> getVideoProducts(
      {required int page, int perPage = 10, String lang = ''}) async {
    try {
      var endPoint =
          '$domain/wp-json/api/flutter_woo/products/video?per_page=$perPage&page=$page';
      endPoint = buildUrlToGetProducts(endPoint);
      final response = await httpGet(endPoint.toUri()!);
      var body = convert.jsonDecode(response.body);
      if (body is Map && isNotBlank(body['message'])) {
        throw Exception(body['message']);
      } else {
        var list = <Product>[];
        for (var item in body) {
          list.add(Product.jsonParser(item));
        }
        return list;
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String?> createPaymentIntentStripe({
    required String totalPrice,
    String? currencyCode,
    String? emailAddress,
    String? name,
    required String paymentMethodId,
  }) async {
    if (isNotEmpty(kStripeConfig['serverEndpoint'])) {
      return super.createPaymentIntentStripe(
        totalPrice: totalPrice,
        currencyCode: currencyCode,
        emailAddress: emailAddress,
        name: name,
        paymentMethodId: paymentMethodId,
      );
    }
    try {
      final urlReq = '$domain/wp-json/api/flutter_stripe/payment_intent';
      final result = await httpPost(
        urlReq.toUri()!,
        body: jsonEncode(
          {
            'payment_method_id': paymentMethodId,
            'email': emailAddress,
            'amount': totalPrice,
            'currencyCode': currencyCode,
            'returnUrl': kStripeConfig['returnUrl'],
            'captureMethod': (kStripeConfig['enableManualCapture'] ?? false)
                ? 'manual'
                : 'automatic',
          },
        ),
        headers: {'content-type': 'application/json'},
      );

      var response = json.decode(result.body);
      if (response['message'] != null) {
        throw Exception(response['message']);
      }
      if (result.statusCode == 200) {
        return response['client_secret'];
      }
    } catch (e) {
      rethrow;
    }
    return null;
  }

  @override
  Future<StripePaymentIntent?> createPaymentIntentStripeV3(
      {String? orderId,
      required String totalPrice,
      String? currencyCode,
      String? emailAddress,
      String? name,
      String? cookie}) async {
    if (isNotEmpty(kStripeConfig['serverEndpoint'])) {
      return super.createPaymentIntentStripeV3(
        orderId: orderId,
        totalPrice: totalPrice,
        currencyCode: currencyCode,
        emailAddress: emailAddress,
        name: name,
        cookie: cookie,
      );
    }
    try {
      final urlReq = '$domain/wp-json/api/flutter_stripe/payment_intent';
      final result = await httpPost(
        urlReq.toUri()!,
        body: jsonEncode(
          {
            'email': emailAddress,
            'amount': totalPrice,
            'currencyCode': currencyCode,
            'returnUrl': kStripeConfig['returnUrl'],
            'captureMethod': (kStripeConfig['enableManualCapture'] ?? false)
                ? 'manual'
                : 'automatic',
            'request3dSecure': 'any',
            'orderId': orderId,
          },
        ),
        headers: {'content-type': 'application/json'},
      );

      var response = json.decode(result.body);
      if (response['message'] != null) {
        throw Exception(response['message']);
      }
      if (result.statusCode == 200) {
        return StripePaymentIntent(
          id: response['id'],
          clientSecret: response['client_secret'],
        );
      }

      throw Exception('Unknown error. Please try again.');
    } catch (e, trace) {
      printError(e, trace);
      rethrow;
    }
  }

  @override
  Future<StripePaymentIntent?> getPaymentIntentStripeV3(String id) async {
    if (isNotEmpty(kStripeConfig['serverEndpoint'])) {
      return super.getPaymentIntentStripeV3(id);
    }
    try {
      final urlReq = '$domain/wp-json/api/flutter_stripe/payment_intent/$id';
      final result = await httpGet(urlReq.toUri()!);

      var response = json.decode(result.body);
      if (result.statusCode == 200) {
        if (response['message'] != null) {
          throw Exception(response['message']);
        }
        return StripePaymentIntent(
          id: response['id'],
          clientSecret: response['client_secret'],
          status: response['status'],
        );
      }

      throw Exception('Unknown error. Please try again.');
    } catch (e, trace) {
      printError(e, trace);
      rethrow;
    }
  }

  @override
  Future<bool> enableNotification(
      {String? cookie, required bool enabled}) async {
    try {
      if (cookie == null) return enabled;

      final response = await httpPut(
          '$domain/wp-json/api/flutter_notification/settings'.toUri()!,
          body: convert.jsonEncode({'is_on': enabled}),
          headers: {
            'User-Cookie': cookie,
            'Content-Type': 'application/json',
          });

      var body = convert.jsonDecode(response.body);
      checkExpiredCookie(response);
      if (body['message'] != null) {
        throw Exception(body['message']);
      } else {
        return body['is_on'] == true;
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Order?> getOrderByOrderId({required String orderId}) async {
    try {
      var url = 'orders/$orderId';
      var response = await wcApi.getAsync(url);
      if (response is Map && isNotBlank(response['message'])) {
        throw Exception(response['message']);
      } else {
        return Order.fromJson(response);
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<ProductComponent>?>? getProductComponents(
      String productId) async {
    var list = <ProductComponent>[];
    try {
      var endpoint =
          '$domain/wp-json/api/flutter_composite_products/product/$productId/components';
      var response = await httpGet(endpoint.toUri()!);
      if (response.statusCode == 200) {
        var result = convert.jsonDecode(response.body);
        for (var item in result) {
          list.add(ProductComponent.fromJson(item));
        }
      }
    } catch (e, trace) {
      printLog(e);
      printLog(trace);
    }
    return list;
  }

  @override
  List<Product>? productsFromJsonData(dynamic json) {
    try {
      var products = <Product>[];
      if (json is List) {
        for (var item in json) {
          Product? product;
          if (item is Product) {
            product = item;
          }
          if (item is Map) {
            product = Product.jsonParser(item);
          }
          if (product == null) {
            continue;
          }
          if (kAdvanceConfig.hideOutOfStock &&
              !(product.inStock ?? false) &&
              !product.backordersAllowed) {
            continue;
          }
          products.add(product);
        }
      }
      if (products.isNotEmpty) {
        return products;
      }
      return null;
    } catch (e) {
      printLog(e);
      return null;
    }
  }

  @override
  Future<List<Branch>> getAllBranches() async {
    try {
      var response = await httpGet(Uri.parse('$domain/wp-json/wp/v2/branches'));
      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        if (body is List) {
          var branches = <Branch>[];
          for (var item in body) {
            branches.add(Branch.fromJson(item));
          }
          return branches;
        }
      }
      return <Branch>[];
    } catch (e) {
      return <Branch>[];
    }
  }

  @override
  Future<(double?, double?)> getMinMaxPrices() async {
    try {
      var endPoint = '$domain/wp-json/api/flutter_woo/products/min-max-prices';
      final response = await httpGet(endPoint.toUri()!);
      var body = convert.jsonDecode(response.body);
      if (body is Map && isNotBlank(body['message'])) {
        throw Exception(body['message']);
      } else {
        final minPrice = double.tryParse(body['min_price']);
        final maxPrice = double.tryParse(body['max_price']);
        return (minPrice, maxPrice);
      }
    } catch (e, trace) {
      printError(e, trace);
      return (null, null);
    }
  }

  @override
  Future<String?> getSizeGuide(String productId) async {
    try {
      var endPoint =
          '$domain/wp-json/api/flutter_woo/products/size-guide/$productId';
      final response = await httpGet(endPoint.toUri()!);

      final body = convert.jsonDecode(response.body);
      if (body is Map && isNotBlank(body['message'])) {
        throw Exception(body['message']);
      }
      if (response.statusCode == 200) {
        return body['data'];
      }
    } catch (e, trace) {
      printError(e, trace);
    }
    return null;
  }
}
