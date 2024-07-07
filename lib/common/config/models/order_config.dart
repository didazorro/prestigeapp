import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_config.freezed.dart';
part 'order_config.g.dart';

@freezed
class OrderConfig with _$OrderConfig {
  const factory OrderConfig({
    @Default(1) int version,
  }) = _OrderConfig;

  factory OrderConfig.fromJson(Map<String, dynamic> json) =>
      _$OrderConfigFromJson(json);
}
