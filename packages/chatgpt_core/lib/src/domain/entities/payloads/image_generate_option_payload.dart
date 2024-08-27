// ignore_for_file: invalid_annotation_target

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../image_generate/image_size.dart';
import '../image_generate/image_view_type.dart';

part 'image_generate_option_payload.freezed.dart';

part 'image_generate_option_payload.g.dart';

@freezed
class ImageGenerateOptionPayload with _$ImageGenerateOptionPayload {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ImageGenerateOptionPayload({
    @Default(2) int numberOfImages,
    String? style,
    String? medium,
    String? artist,
    String? mood,
    String? detail,
    @Default(ImageSize.small) ImageSize imageSize,
    // @JsonKey(includeToJson: false)
    @Default(ImageViewType.page) ImageViewType imageViewType,
  }) = _ImageGenerateOptionPayload;

  factory ImageGenerateOptionPayload.fromJson(Map<String, dynamic> json) =>
      _$ImageGenerateOptionPayloadFromJson(json);
}
