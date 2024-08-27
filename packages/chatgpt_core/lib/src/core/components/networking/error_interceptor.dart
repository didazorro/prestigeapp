import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'api_exception.dart';

class ErrorInterceptor extends Interceptor {
  ErrorInterceptor();

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final response = err.response;
    if (kDebugMode) {
      log('[Dio][ErrorInterceptor] error $response');
    }

    final statusCode = response?.statusCode;

    if (400 == statusCode) {
      throw ApiException(message: err.message ?? 'Error');
    } else if (502 == statusCode) {
      throw ApiException(message: err.message ?? 'Error');
    }

    super.onError(err, handler);
  }
}
