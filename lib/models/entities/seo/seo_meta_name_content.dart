import 'package:freezed_annotation/freezed_annotation.dart';

part 'seo_meta_name_content.freezed.dart';
part 'seo_meta_name_content.g.dart';

@freezed
class SeoMetaNameContent with _$SeoMetaNameContent {
  const SeoMetaNameContent._();

  const factory SeoMetaNameContent({
    required String name,
    required String content,
  }) = _SeoMetaNameContent;

  factory SeoMetaNameContent.fromJson(Map<String, dynamic> json) =>
      _$SeoMetaNameContentFromJson(json);
}
