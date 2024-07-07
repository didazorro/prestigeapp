import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'featured_vendor_config.freezed.dart';
part 'featured_vendor_config.g.dart';

@freezed
class FeaturedVendorConfig with _$FeaturedVendorConfig {
  const factory FeaturedVendorConfig({
    /// Label header name
    String? name,
    @Default(3) int columnCount,
    @Default(true) bool showRating,
    @Default(false) bool enableAutoSliding,
    int? durationAutoSliding,
    @Default(false) bool enableBackground,
    @Default(false) bool isSnapping,
    int? limit,
    @Default('cover') String imageBoxfit,
    @Default('centerStart') String alignment,
  }) = _FeaturedVendorConfig;

  factory FeaturedVendorConfig.fromJson(Map<String, dynamic> json) =>
      _$FeaturedVendorConfigFromJson(json);
}
