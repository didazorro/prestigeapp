import 'package:freezed_annotation/freezed_annotation.dart';

import 'seo_config.dart';

part 'meta_seo_route.freezed.dart';
part 'meta_seo_route.g.dart';

@freezed
class MetaSeoRoute with _$MetaSeoRoute {
  const MetaSeoRoute._();

  @JsonSerializable(explicitToJson: true)
  const factory MetaSeoRoute({
    required String route,
    required SeoConfig config,
  }) = _MetaSeoRoute;

  factory MetaSeoRoute.fromJson(Map<String, dynamic> json) =>
      _$MetaSeoRouteFromJson(json);
}
