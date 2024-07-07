import 'package:freezed_annotation/freezed_annotation.dart';

part 'seo_meta_property_content.freezed.dart';
part 'seo_meta_property_content.g.dart';

@freezed
class SeoMetaPropertyContent with _$SeoMetaPropertyContent {
  const SeoMetaPropertyContent._();

  const factory SeoMetaPropertyContent({
    required String property,
    required String content,
  }) = _SeoMetaPropertyContent;

  factory SeoMetaPropertyContent.fromJson(Map<String, dynamic> json) =>
      _$SeoMetaPropertyContentFromJson(json);
}
