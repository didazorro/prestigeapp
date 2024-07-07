import '../../common/config.dart';
import 'elastic_client.dart';
import 'elastic_query.dart';

class ElasticService {
  static Future<List<Map<String, dynamic>>?> search({
    required Uri uri,
    required int limit,
    IndiesName indiesName = IndiesName.store,
    String? languageCode,
    String status = 'publish',
    int? offset,
    ElasticActionList? mustList,
    ElasticActionList? mustNotList,
    ElasticActionList? shouldList,
    List<Map<String, dynamic>>? sortList,
  }) async {
    var must = mustList ?? ElasticActionList();
    must.addLanguage(languageCode);
    must.addStatus(status);
    final result = await searchElastic(
      uri: uri,
      indiesName: indiesName,
      limit: limit,
      offset: offset,
      mustList: must,
      mustNotList: mustNotList,
      sortList: sortList,
      shouldList: shouldList,
    );
    return result?.docs;
  }

  static Future<ElasticResponse?> searchElastic({
    required Uri uri,
    IndiesName indiesName = IndiesName.store,
    int? offset,
    required int limit,
    ElasticActionList? mustList,
    ElasticActionList? mustNotList,
    ElasticActionList? shouldList,
    List<Map<String, dynamic>>? sortList,
    Map? aggs,
  }) async {
    final result = await ElasticClient.search(
      index: uri.toIndies(indiesName: indiesName),
      limit: limit,
      offset: offset ?? 0,
      sort: sortList,
      query: ElasticQuery.bool(
        must: mustList?.actions,
        mustNot: mustNotList?.actions,
        should: shouldList?.actions,
      ),
      aggs: aggs,
    );
    return result;
  }

  static Future<void> addDoc({
    required Uri uri,
    required Map body,
    IndiesName indiesName = IndiesName.store,
    String? languageCode,
  }) async {
    var value = Map.from(body);
    if (languageCode?.isNotEmpty ?? false) {
      value['_lang'] = languageCode;
    }
    return ElasticClient.addDoc(
      index: uri.toIndies(indiesName: indiesName),
      body: value,
    );
  }

  static Future<bool> updateDoc({
    required Uri uri,
    required Map script,
    IndiesName indiesName = IndiesName.store,
    Map? upsert,
    String? id,
    String? languageCode,
    ElasticActionList? mustList,
    ElasticActionList? mustNotList,
  }) async {
    var must = mustList ?? ElasticActionList();
    must.addLanguage(languageCode);
    return ElasticClient.updateDoc(
      index: uri.toIndies(indiesName: indiesName),
      script: script,
      upsert: upsert,
      id: id,
      query: ElasticQuery.bool(
        must: must.actions,
        mustNot: mustNotList?.actions,
      ),
    );
  }
}

class ElasticActionList {
  final _list = <Map<String, dynamic>>[];

  List<Map<String, dynamic>> get actions => _list;

  void addStatus(String status) {
    _list.add(ElasticQuery.status(status: status));
  }

  void addLanguage(String? languageCode) {
    if (kBoostEngineConfig.isMultiLanguages) {
      String? lang;
      if (kBoostEngineConfig.languages.contains(languageCode)) {
        lang = languageCode;
      }

      lang ??= kBoostEngineConfig.defaultLanguage;
      if (lang?.isNotEmpty ?? false) {
        addMatch(key: '_lang', value: lang);
      }
    }
  }

  void addMatch({
    required String key,
    required dynamic value,
  }) {
    _list.add(ElasticQuery.match(key: key, value: value));
  }

  void addBool({
    List<Map<String, dynamic>>? must,
    List<Map<String, dynamic>>? mustNot,
    List<Map<String, dynamic>>? should,
  }) {
    _list.add(ElasticQuery.bool(
      must: must,
      mustNot: mustNot,
      should: should,
    ));
  }

  void addFilter({
    required String keyFilter,
    required String key,
    required dynamic value,
  }) {
    _list
        .add(ElasticQuery.filter(keyFilter: keyFilter, key: key, value: value));
  }

  void addRange({
    required String key,
    dynamic gteValue,
    dynamic lteValue,
  }) {
    _list.add(
        ElasticQuery.range(key: key, gteValue: gteValue, lteValue: lteValue));
  }

  void addQuery({
    required String query,
    required ElasticQueryOperator queryOperator,
    required dynamic fields,
  }) {
    _list.add(ElasticQuery.queryString(
      query: query,
      queryOperator: queryOperator,
      fields: fields,
    ));
  }

  void addMultiMatch({
    required String query,
    required List<String> fields,
  }) {
    _list.add(ElasticQuery.multiMatch(query: query, fields: fields));
  }
}
