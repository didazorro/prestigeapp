import 'package:freezed_annotation/freezed_annotation.dart';

import 'seo_twitter_card.dart';

part 'seo_meta_twitter.freezed.dart';
part 'seo_meta_twitter.g.dart';

@freezed
class SeoMetaTwitter with _$SeoMetaTwitter {
  const SeoMetaTwitter._();

  const factory SeoMetaTwitter({
    required String title,
    required String description,
    required String image,
    @JsonKey(readValue: _readValueSeoTwitterCard) required SeoTwitterCard card,
  }) = _SeoMetaTwitter;

  factory SeoMetaTwitter.fromJson(Map<String, dynamic> json) =>
      _$SeoMetaTwitterFromJson(json);
}

Object? _readValueSeoTwitterCard(Map p1, String p2) {
  final listKey = SeoTwitterCard.values.map((e) => e.name).toList();

  if (listKey.contains(p1[p2])) {
    return p1[p2];
  }

  return SeoTwitterCard.values.first.name;
}
