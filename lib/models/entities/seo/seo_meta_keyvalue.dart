import 'package:freezed_annotation/freezed_annotation.dart';

part 'seo_meta_keyvalue.freezed.dart';
part 'seo_meta_keyvalue.g.dart';

@freezed
class SeoMetaKeyValue with _$SeoMetaKeyValue {
  const SeoMetaKeyValue._();

  const factory SeoMetaKeyValue({
    required String key,
    required String value,
  }) = _SeoMetaKeyValue;

  factory SeoMetaKeyValue.fromJson(Map<String, dynamic> json) =>
      _$SeoMetaKeyValueFromJson(json);
}
