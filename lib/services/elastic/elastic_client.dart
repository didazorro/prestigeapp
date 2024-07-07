import 'dart:convert';

import 'package:flutter/foundation.dart' as foundation;
import 'package:http/http.dart' as http;
import 'package:inspireui/utils.dart';

import '../../common/config.dart';
import '../../common/extensions/extensions.dart';
import 'elastic_query.dart';

///
const _baseApiURL =
    'https://my-deployment-5747b7.es.us-central1.gcp.cloud.es.io';
const _baseApiKey =
    'bG5ET2Fvc0J1X2NWM2ZRNkhBeXI6VFp2RGd6dUhUaHl2dGNsb3R5UFM0Zw==';
const _kWebProxy = 'https://cors.mstore.io/';

class ElasticClient {
  static final String _apiURL = kBoostEngineConfig.api ?? _baseApiURL;
  static final String _apiKey = kBoostEngineConfig.key ?? _baseApiKey;

  static String convertProductOrderBy(String orderBy) {
    switch (orderBy) {
      case 'date':
        return 'date_modified';
      case 'title':
        return 'name.keyword';
      case 'rating':
        return 'rating_count';
      case 'popularity':
        return 'total_sales';
      default:
        return orderBy;
    }
  }

  static String convertBlogOrderBy(String orderBy) {
    switch (orderBy) {
      case 'title':
        return 'title.rendered.keyword';
      default:
        return orderBy;
    }
  }

  static Future<ElasticResponse?> search({
    required String index,
    int? limit,
    int? offset,
    Map? query,
    List<Map>? sort,
    Map? aggs,
  }) async {
    int? from;

    if (offset != null && offset > 0 && limit != null) {
      from = (offset - 1) * limit;
    }

    final body = {
      'query': query ?? ElasticQuery.matchAll(),
      if (from != null) 'from': from,
      if (limit != null) 'size': limit,
      if (sort?.isNotEmpty ?? false) 'sort': sort,
      if (aggs?.isNotEmpty ?? false) 'aggs': aggs,
    };
    final url = '$_apiURL/$index/_search';
    var uri = Uri.parse(url);
    if (foundation.kIsWeb) {
      final proxyURL = url.addWebProxy(Configurations.webProxy.isNotEmpty
          ? Configurations.webProxy
          : _kWebProxy);

      uri = Uri.parse(proxyURL);
    }

    var response = await http.post(
      uri,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'ApiKey $_apiKey',
      },
      body: jsonEncode(body),
    );

    var data = jsonDecode(utf8.decode(response.bodyBytes));
    printLog(body);

    if (data?['error'] != null) {
      var message = data?['error'];
      throw Exception(message is Map ? message['reason'] : '$message');
    }

    return ElasticResponse.fromJson(data);
  }

  static Future<void> addDoc({
    required String index,
    required Map body,
  }) async {
    final url = '$_apiURL/$index/_doc';
    var uri = Uri.parse(url);
    if (foundation.kIsWeb) {
      final proxyURL = '$_kWebProxy$url';
      uri = Uri.parse(proxyURL);
    }
    await http.post(
      uri,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'ApiKey $_apiKey',
      },
      body: jsonEncode(body),
    );
  }

  static Future<bool> updateDoc({
    required String index,
    required Map script,
    String? id,
    Map? upsert,
    Map? query,
  }) async {
    var url = '$_apiURL/$index';
    var data = Map<String, dynamic>.from({'script': script});

    if (id?.isNotEmpty ?? false) {
      url += '/_update/$id';
      if (upsert?.isNotEmpty ?? false) {
        data['upsert'] = upsert;
      }
    } else {
      url += '/_update_by_query';
      data['query'] = query ?? ElasticQuery.matchAll();
    }
    var uri = Uri.parse(url);
    if (foundation.kIsWeb) {
      final proxyURL = '$_kWebProxy$url';
      uri = Uri.parse(proxyURL);
    }
    var response = await http.post(
      uri,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'ApiKey $_apiKey',
      },
      body: jsonEncode(data),
    );
    var body = jsonDecode(response.body);
    if (body is Map) {
      var total = int.tryParse('${body['total']}') ?? 0;
      if (total > 0) {
        return true;
      }
      return false;
    } else {
      return false;
    }
  }
}

class ElasticResponse {
  final int total;
  final List<Map> hits;
  final Map? aggregations;

  List<Map<String, dynamic>> get docs =>
      hits.map((e) => Map<String, dynamic>.from(e['_source'])).toList();

  ElasticResponse({
    required this.total,
    required this.hits,
    this.aggregations,
  });

  factory ElasticResponse.fromJson(dynamic json) {
    return ElasticResponse(
      total: json['hits']?['total']?['value'] ?? 0,
      hits: List<Map>.from(json['hits']?['hits'] ?? []),
      aggregations: json['aggregations'],
    );
  }
}
