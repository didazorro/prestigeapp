import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta_seo/meta_seo.dart';

enum SeoTwitterCard {
  /// The card type, which will be one of
  @JsonValue('summary')
  summary,

  /// or will be one of
  @JsonValue('summaryLargeImage')
  summaryLargeImage,

  /// or will be one of
  @JsonValue('app')
  app,

  /// or will be one of
  @JsonValue('player')
  player;

  TwitterCard toConfig() {
    switch (this) {
      case SeoTwitterCard.summary:
        return TwitterCard.summary;
      case SeoTwitterCard.summaryLargeImage:
        return TwitterCard.summaryLargeImage;
      case SeoTwitterCard.app:
        return TwitterCard.app;
      case SeoTwitterCard.player:
        return TwitterCard.player;
    }
  }
}
