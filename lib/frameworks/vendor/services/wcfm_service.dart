import 'dart:convert' as convert;
import 'dart:core';

import 'package:flutter/foundation.dart' as foundation;
import 'package:quiver/strings.dart';

import '../../../common/config.dart';
import '../../../common/constants.dart';
import '../../../models/entities/prediction.dart';
import '../../../models/entities/vacation_settings.dart';
import '../../../models/index.dart' show Category, Product, Review, User;
import '../../../models/vendor/store_model.dart';
import '../../../services/index.dart';
import '../../../services/location_service.dart';
import '../../woocommerce/services/woo_commerce.dart';
import 'wcfm_api.dart';

class WCFMService extends WooCommerceService {
  final WCFMAPI wcfmApi;

  String? jwtToken;

  WCFMService({
    required super.domain,
    super.blogDomain,
    required super.consumerKey,
    required super.consumerSecret,
  }) : wcfmApi = WCFMAPI(url: domain);

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
      var endPoint =
          '$domain/wp-json/api/flutter_user/sign_up/?insecure=cool&$isSecure'
              .toUri()!;
      if (kAdvanceConfig.enableNewSMSLogin) {
        endPoint =
            '$domain/wp-json/api/flutter_user/sign_up_2/?insecure=cool&$isSecure'
                .toUri()!;
      }

      var data = {
        'user_email': email ?? username,
        'user_login': username,
        'username': username,
        'first_name': firstName,
        'last_name': lastName,
        'user_pass': password,
        'email': email ?? username,
        'user_nicename': niceName,
        'display_name': niceName,
        'phone': phoneNumber,
      };

      var role = 'subscriber';
      if (isVendor) {
        role = 'wcfm_vendor';
        if (!kVendorConfig.enableAutoApplicationApproval) {
          role = 'subscriber';
          data['wcfm_membership_application_status'] = 'pending';
        }
      }

      data['role'] = role;

      final response = await httpPost(endPoint,
          body: convert.jsonEncode(data),
          headers: {'Content-Type': 'application/json'});
      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 200 && body['message'] == null) {
        var cookie = body['cookie'];
        return await getUserInfo(cookie);
      } else {
        var message = body['message'];
        throw Exception(message ?? 'Can not create the user.');
      }
    } catch (err) {
      rethrow;
    }
  }

  @override
  Future<List<Product>>? getProductsByStore({
    storeId,
    int? page,
    int? perPage,
    int? catId,
    bool? onSale,
    String? order,
    String? orderBy,
    String? searchTerm,
  }) async {
    var list = <Product>[];
    try {
      var endpoint =
          '$domain/wp-json/api/flutter_multi_vendor/products/owner?id=$storeId';
      if (page == null || perPage == null) {
        page = 1;
        perPage = 10;
      }
      endpoint += '&page=$page&per_page=$perPage';
      if (catId != null && catId != -1) {
        endpoint += '&category=$catId';
      }
      if (searchTerm != null && searchTerm.trim().isNotEmpty) {
        endpoint += '&search=$searchTerm';
      }
      if (onSale != null && onSale) {
        endpoint += '&on_sale=true';
      }
      if (order != null && orderBy != null) {
        endpoint += '&order=$order&orderby=$orderBy';
      }
      if (kAdvanceConfig.isMultiLanguages) {
        endpoint += '&lang=$languageCode';
      }

      final response = await httpGet(endpoint.toUri()!);
      var result = convert.jsonDecode(response.body);
      for (var item in result) {
        final product = Product.fromJson(item);

        if (item['store'] != null) {
          try {
            product.store = Store.fromWCFMJson(item['store']);
          } catch (e) {
            printLog('parse store: $e');
          }
        }
        list.add(product);
      }
    } catch (e) {
      printLog(e);
    }
    return list;
  }

  @override
  Future<List<Review>> getReviewsStore(
      {storeId, page = 1, perPage = 10}) async {
    var list = <Review>[];
    try {
      var response = await httpGet(
        '$domain/wp-json/api/flutter_multi_vendor/get-reviews?store_id=$storeId&page=$page&per_page=$perPage&status_type=approved'
            .toUri()!,
      );
      var result = convert.jsonDecode(response.body);

      for (var item in result) {
        if (int.parse(item['vendor_id']) == storeId) {
          list.add(Review.fromWCFMJson(item));
        }
      }
    } catch (e) {
      printLog(e);
    }
    return list;
  }

  @override
  Future<Store?> getStoreInfo(storeId) async {
    try {
      var response = await wcApi.getAsync('flutter/wcfm-stores/$storeId');

      if (response is Map && isNotBlank(response['message'])) {
        throw Exception(response['message']);
      } else {
        if (response['settings'] == null) {
          return null;
        }
        return Store.fromWCFMJson(response);
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Store>> searchStores({String? keyword, int? page = 10}) async {
    try {
      var list = <Store>[];
      var endPoint = 'flutter/wcfm-stores?';
      if (keyword?.isNotEmpty ?? false) {
        endPoint += 'search=$keyword';
      }

      endPoint += '&page=$page';
      endPoint += '&per_page=20';

      var response = await wcApi.getAsync(endPoint);

      if (response is Map && isNotBlank(response['message'])) {
        throw Exception(response['message']);
      } else {
        for (var item in response) {
          list.add(Store.fromWCFMJson(item));
          //if (!item['disable_vendor']) list.add(Store.fromWCFMJson(item));
        }
        return list;
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Store>>? getFeaturedStores({
    int? page,
    int? perPage,
  }) async {
    var list = <Store>[];
    try {
      var response = await wcApi.getAsync(
          'flutter/wcfm-stores?page=${page ?? 1}&per_page=${perPage ?? 100}');
      if (response.length == 0) {
        return list;
      }
      if (response is Map && isNotBlank(response['message'])) {
        throw Exception(response['message']);
      } else {
        for (var item in response) {
          if (!item['disable_vendor']) list.add(Store.fromWCFMJson(item));
        }
      }
    } catch (err, stack) {
      printError(err, stack);
    }
    return list;
  }

  @override
  Future<List<Store>> getNearbyStores(
      {Prediction? prediction,
      int page = 1,
      int perPage = 10,
      int radius = 10,
      String? name}) async {
    var list = <Store>[];

    try {
      var endpoint =
          'flutter/wcfm-stores?page=$page&per_page=$perPage&wcfmmp_radius_lat=${prediction?.lat}&wcfmmp_radius_lng=${prediction?.long}&wcfmmp_radius_range=$radius';
      if (name != null && name.trim().isNotEmpty) {
        endpoint += '&search=$name';
      }
      var response = await wcApi.getAsync(endpoint);

      if (response.length == 0) {
        return list;
      }
      if (response is Map && isNotBlank(response['message'])) {
        throw Exception(response['message']);
      } else {
        for (var item in response) {
          if (!item['disable_vendor']) {
            final store = Store.fromWCFMJson(item);
            if (store.lat == null || store.long == null) {
              continue;
            }
            list.add(Store.fromWCFMJson(item));
          }
        }
      }
    } catch (e) {
      printLog(e);
    }
    return list;
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
    var list = <Category>[];
    try {
      var endpoint =
          '$domain/wp-json/api/flutter_multi_vendor/product-categories';
      const perPage = 100;
      page ??= 1;
      endpoint += '?page=$page&limit=$perPage';
      if (storeId != null) {
        endpoint += '&id=$storeId';
      }
      if (kAdvanceConfig.isMultiLanguages) {
        endpoint += '&lang=$languageCode';
      }
      if (kAdvanceConfig.hideEmptyCategories) {
        endpoint += '&hide_empty=true';
      }
      final response = await httpGet(endpoint.toUri()!);
      var result = convert.jsonDecode(response.body);
      for (var item in result) {
        final cat = Category.fromJson(item);
        if (cat.id != null) {
          list.add(cat);
        }
      }
    } catch (e) {
      printLog(e);
    }
    return list;
  }

  @override
  Future<Store?> getStoreByPermalink(String storePermaLink) async {
    try {
      final response = await httpGet(
          '$domain/wp-json/wc/v2/flutter/vendor/dynamic?url=$storePermaLink'
              .toUri()!);

      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 200) {
        return Store.fromWCFMJson(body);
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
  Future<VacationSettings?> getVacationSettings(String storeId) async {
    try {
      final response = await httpGet(
          '$domain/wp-json/wc/v2/flutter/vendor/vacation?store_id=$storeId'
              .toUri()!,
          refreshCache: true);

      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 200) {
        return VacationSettings.fromJson(body);
      }
    } catch (e) {
      printLog(e);
    }
    return null;
  }

  @override
  Future<bool?> setVacationSettings(
      String cookie, VacationSettings vacationSettings) async {
    try {
      var data = vacationSettings.toJson();
      data['cookie'] = cookie;
      final response = await httpPost(
          '$domain/wp-json/wc/v2/flutter/vendor/vacation'.toUri()!,
          body: data);
      if (response.statusCode == 200) {
        return true;
      }
    } catch (e) {
      printLog(e);
    }
    return false;
  }

  @override
  Future getWooProductsResponse({
    String params = '',
    bool refreshCache = false,
    int version = 2,
  }) async {
    // There is a library error on the iOS simulator
    if (foundation.kDebugMode == false &&
        kAdvanceConfig.filterProductsByDistance) {
      var locationService = injector<LocationService>();

      // Need to set timeout because when this event executes,
      // if a problem occurs, it will hang here.
      // This will cause the screen to not be able to
      // load data (display error information).
      await locationService.awaiting(timeout: LocationService.timeOutWating);

      final location = locationService.locationData;
      final enable = location?.longitude != null && location?.latitude != null;
      if (enable) {
        final range = kAdvanceConfig.maxQueryRadiusDistance;
        var advancedParams = params;
        advancedParams += '&wcfmmp_radius_lat=${location?.latitude}';
        advancedParams += '&wcfmmp_radius_lng=${location?.longitude}';
        advancedParams += '&wcfmmp_radius_range=$range';
        final endPoint = 'flutter/wcfm-products$advancedParams';
        var response = await wcApi.getAsync(
          endPoint,
          refreshCache: refreshCache,
          version: version,
        );
        return response;
      }
    }

    return await super.getWooProductsResponse(
      params: params,
      refreshCache: refreshCache,
      version: version,
    );
  }

  @override
  Future<Map<String, dynamic>?> getHomeCache(String? lang) async {
    var endPoint = buildUrlByLang('flutter/cache', isForceUseLang: true);
    var locationService = injector<LocationService>();
    await locationService.awaiting();
    var location = locationService.locationData;
    var enable = location?.longitude != null && location?.latitude != null;
    enable = enable && kAdvanceConfig.filterProductsByDistance;
    if (enable) {
      var range = kAdvanceConfig.maxQueryRadiusDistance;
      endPoint += '&wcfmmp_radius_lat=${location?.latitude}';
      endPoint += '&wcfmmp_radius_lng=${location?.longitude}';
      endPoint += '&wcfmmp_radius_range=$range';
      final data = await wcApi.getAsync(endPoint);
      if (data == null || data is! Map) {
        throw Exception("Can't get home cache");
      }
      if (data['message'] != null) {
        throw Exception(data['message']);
      }
      return Map<String, dynamic>.from(data);
    }
    return super.getHomeCache(lang);
  }
}
