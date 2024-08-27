// ignore_for_file: unused_field

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../../data/datasource/local/app_storage.dart';

const keyAuthentication = 'Authorization';
const keyApiKey = 'XApiKey';
const keyBear = 'Bearer';
const keyAcceptLanguage = 'Accept-Language';
const keySavedToken = '_GPTToken';
const keyOpenAiApiKey = 'openApiKey';

class ApiTokenInterceptor extends Interceptor {
  final AppStorage _appStorage;
  final Function? logout;

  ApiTokenInterceptor(this._appStorage, {this.logout});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final accessToken = _appStorage.getString(keySavedToken);

    if (accessToken?.isNotEmpty ?? false) {
      options.headers[keyAuthentication] = '$keyBear $accessToken';
    }

    final openAiApiKey = _appStorage.getString(keyOpenAiApiKey);
    if (openAiApiKey?.isNotEmpty ?? false) {
      options.data['apiKey'] = openAiApiKey;
    }

    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (kDebugMode) {
      log('[Dio][ApiTokenInterceptor] error ${err.response}');
    }

    if (err.response?.data['statusCode'] == 401 ||
        401 == err.response?.statusCode) {
      logout?.call();
    }

    super.onError(err, handler);
  }
}
