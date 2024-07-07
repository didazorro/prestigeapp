import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../modules/meta_seo/meta_seo_service.dart';
import 'meta_seo_app.dart';
import 'meta_seo_route.dart';
import 'seo_config.dart';

part 'meta_seo.freezed.dart';
part 'meta_seo.g.dart';

@freezed
class MetaSeoConfig with _$MetaSeoConfig {
  const MetaSeoConfig._();

  @JsonSerializable(explicitToJson: true)
  const factory MetaSeoConfig({
    MetaSeoApp? app,
    List<MetaSeoRoute>? routes,
  }) = _MetaSeoConfig;

  factory MetaSeoConfig.fromJson(Map<String, dynamic> json) =>
      _$MetaSeoConfigFromJson(json);
}

extension SeoConfigMetaExt on MetaSeoConfig {
  void addMeta(MetaSeoService meta, String routeName) {
    final appConfig = app;
    final routesConfig = routes;
    final listRouteUseMeta = routesConfig?.map((e) => e.route).toList();
    final isActiveMetaForRoute = (listRouteUseMeta ?? []).contains(routeName);

    if (appConfig != null && isActiveMetaForRoute == false) {
      if ((appConfig.excludes ?? []).contains(routeName) == false) {
        appConfig.config.addMeta(meta);
      }
    } else if (isActiveMetaForRoute && routesConfig != null) {
      final route = routesConfig
          .firstWhereOrNull((element) => element.route == routeName);
      if (route != null) {
        route.config.addMeta(meta);
      }
    }
  }
}
