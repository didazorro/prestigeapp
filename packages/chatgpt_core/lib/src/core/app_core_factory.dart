import 'package:dio/dio.dart';

import '../data/datasource/local/app_storage.dart';
import 'components/networking/api_token_interceptor.dart';
import 'components/networking/log_interceptor.dart';

class AppCoreFactory {
  static Dio createDio(
    String baseUrl,
    AppStorage appStorage,
  ) {
    var uri = Uri.tryParse(baseUrl);
    var host = uri?.host;
    BaseOptions? baseOptions;
    baseOptions = host?.isNotEmpty ?? false
        ? BaseOptions(baseUrl: baseUrl)
        : BaseOptions();

    final dio = Dio(baseOptions)
      ..interceptors.add(ApiTokenInterceptor(appStorage))
      ..interceptors.add(LoggerInterceptor());

    return dio;
  }
}
