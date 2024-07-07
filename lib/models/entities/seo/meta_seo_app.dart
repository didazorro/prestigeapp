import 'package:freezed_annotation/freezed_annotation.dart';

import 'seo_config.dart';

part 'meta_seo_app.freezed.dart';
part 'meta_seo_app.g.dart';

@freezed
class MetaSeoApp with _$MetaSeoApp {
  const MetaSeoApp._();

  @JsonSerializable(explicitToJson: true)
  const factory MetaSeoApp({
    List<String>? excludes,
    required SeoConfig config,
  }) = _MetaSeoApp;

  factory MetaSeoApp.fromJson(Map<String, dynamic> json) =>
      _$MetaSeoAppFromJson(json);
}
