import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum ImageSize {
  @JsonValue('256x256')
  small,
  @JsonValue('512x512')
  medium,
  @JsonValue('1024x1024')
  large;

  String get displayValue {
    switch (this) {
      case ImageSize.small:
        return '256x256';
      case ImageSize.medium:
        return '512x512';
      case ImageSize.large:
        return '1024x1024';
    }
  }
}
