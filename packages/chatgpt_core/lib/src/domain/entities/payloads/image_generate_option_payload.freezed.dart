// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_generate_option_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageGenerateOptionPayload _$ImageGenerateOptionPayloadFromJson(
    Map<String, dynamic> json) {
  return _ImageGenerateOptionPayload.fromJson(json);
}

/// @nodoc
mixin _$ImageGenerateOptionPayload {
  int get numberOfImages => throw _privateConstructorUsedError;
  String? get style => throw _privateConstructorUsedError;
  String? get medium => throw _privateConstructorUsedError;
  String? get artist => throw _privateConstructorUsedError;
  String? get mood => throw _privateConstructorUsedError;
  String? get detail => throw _privateConstructorUsedError;
  ImageSize get imageSize =>
      throw _privateConstructorUsedError; // @JsonKey(includeToJson: false)
  ImageViewType get imageViewType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageGenerateOptionPayloadCopyWith<ImageGenerateOptionPayload>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageGenerateOptionPayloadCopyWith<$Res> {
  factory $ImageGenerateOptionPayloadCopyWith(ImageGenerateOptionPayload value,
          $Res Function(ImageGenerateOptionPayload) then) =
      _$ImageGenerateOptionPayloadCopyWithImpl<$Res,
          ImageGenerateOptionPayload>;
  @useResult
  $Res call(
      {int numberOfImages,
      String? style,
      String? medium,
      String? artist,
      String? mood,
      String? detail,
      ImageSize imageSize,
      ImageViewType imageViewType});
}

/// @nodoc
class _$ImageGenerateOptionPayloadCopyWithImpl<$Res,
        $Val extends ImageGenerateOptionPayload>
    implements $ImageGenerateOptionPayloadCopyWith<$Res> {
  _$ImageGenerateOptionPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberOfImages = null,
    Object? style = freezed,
    Object? medium = freezed,
    Object? artist = freezed,
    Object? mood = freezed,
    Object? detail = freezed,
    Object? imageSize = null,
    Object? imageViewType = null,
  }) {
    return _then(_value.copyWith(
      numberOfImages: null == numberOfImages
          ? _value.numberOfImages
          : numberOfImages // ignore: cast_nullable_to_non_nullable
              as int,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String?,
      mood: freezed == mood
          ? _value.mood
          : mood // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      imageSize: null == imageSize
          ? _value.imageSize
          : imageSize // ignore: cast_nullable_to_non_nullable
              as ImageSize,
      imageViewType: null == imageViewType
          ? _value.imageViewType
          : imageViewType // ignore: cast_nullable_to_non_nullable
              as ImageViewType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageGenerateOptionPayloadImplCopyWith<$Res>
    implements $ImageGenerateOptionPayloadCopyWith<$Res> {
  factory _$$ImageGenerateOptionPayloadImplCopyWith(
          _$ImageGenerateOptionPayloadImpl value,
          $Res Function(_$ImageGenerateOptionPayloadImpl) then) =
      __$$ImageGenerateOptionPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int numberOfImages,
      String? style,
      String? medium,
      String? artist,
      String? mood,
      String? detail,
      ImageSize imageSize,
      ImageViewType imageViewType});
}

/// @nodoc
class __$$ImageGenerateOptionPayloadImplCopyWithImpl<$Res>
    extends _$ImageGenerateOptionPayloadCopyWithImpl<$Res,
        _$ImageGenerateOptionPayloadImpl>
    implements _$$ImageGenerateOptionPayloadImplCopyWith<$Res> {
  __$$ImageGenerateOptionPayloadImplCopyWithImpl(
      _$ImageGenerateOptionPayloadImpl _value,
      $Res Function(_$ImageGenerateOptionPayloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberOfImages = null,
    Object? style = freezed,
    Object? medium = freezed,
    Object? artist = freezed,
    Object? mood = freezed,
    Object? detail = freezed,
    Object? imageSize = null,
    Object? imageViewType = null,
  }) {
    return _then(_$ImageGenerateOptionPayloadImpl(
      numberOfImages: null == numberOfImages
          ? _value.numberOfImages
          : numberOfImages // ignore: cast_nullable_to_non_nullable
              as int,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String?,
      mood: freezed == mood
          ? _value.mood
          : mood // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      imageSize: null == imageSize
          ? _value.imageSize
          : imageSize // ignore: cast_nullable_to_non_nullable
              as ImageSize,
      imageViewType: null == imageViewType
          ? _value.imageViewType
          : imageViewType // ignore: cast_nullable_to_non_nullable
              as ImageViewType,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ImageGenerateOptionPayloadImpl
    with DiagnosticableTreeMixin
    implements _ImageGenerateOptionPayload {
  const _$ImageGenerateOptionPayloadImpl(
      {this.numberOfImages = 2,
      this.style,
      this.medium,
      this.artist,
      this.mood,
      this.detail,
      this.imageSize = ImageSize.small,
      this.imageViewType = ImageViewType.page});

  factory _$ImageGenerateOptionPayloadImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ImageGenerateOptionPayloadImplFromJson(json);

  @override
  @JsonKey()
  final int numberOfImages;
  @override
  final String? style;
  @override
  final String? medium;
  @override
  final String? artist;
  @override
  final String? mood;
  @override
  final String? detail;
  @override
  @JsonKey()
  final ImageSize imageSize;
// @JsonKey(includeToJson: false)
  @override
  @JsonKey()
  final ImageViewType imageViewType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageGenerateOptionPayload(numberOfImages: $numberOfImages, style: $style, medium: $medium, artist: $artist, mood: $mood, detail: $detail, imageSize: $imageSize, imageViewType: $imageViewType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageGenerateOptionPayload'))
      ..add(DiagnosticsProperty('numberOfImages', numberOfImages))
      ..add(DiagnosticsProperty('style', style))
      ..add(DiagnosticsProperty('medium', medium))
      ..add(DiagnosticsProperty('artist', artist))
      ..add(DiagnosticsProperty('mood', mood))
      ..add(DiagnosticsProperty('detail', detail))
      ..add(DiagnosticsProperty('imageSize', imageSize))
      ..add(DiagnosticsProperty('imageViewType', imageViewType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageGenerateOptionPayloadImpl &&
            (identical(other.numberOfImages, numberOfImages) ||
                other.numberOfImages == numberOfImages) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.mood, mood) || other.mood == mood) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.imageSize, imageSize) ||
                other.imageSize == imageSize) &&
            (identical(other.imageViewType, imageViewType) ||
                other.imageViewType == imageViewType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, numberOfImages, style, medium,
      artist, mood, detail, imageSize, imageViewType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageGenerateOptionPayloadImplCopyWith<_$ImageGenerateOptionPayloadImpl>
      get copyWith => __$$ImageGenerateOptionPayloadImplCopyWithImpl<
          _$ImageGenerateOptionPayloadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageGenerateOptionPayloadImplToJson(
      this,
    );
  }
}

abstract class _ImageGenerateOptionPayload
    implements ImageGenerateOptionPayload {
  const factory _ImageGenerateOptionPayload(
      {final int numberOfImages,
      final String? style,
      final String? medium,
      final String? artist,
      final String? mood,
      final String? detail,
      final ImageSize imageSize,
      final ImageViewType imageViewType}) = _$ImageGenerateOptionPayloadImpl;

  factory _ImageGenerateOptionPayload.fromJson(Map<String, dynamic> json) =
      _$ImageGenerateOptionPayloadImpl.fromJson;

  @override
  int get numberOfImages;
  @override
  String? get style;
  @override
  String? get medium;
  @override
  String? get artist;
  @override
  String? get mood;
  @override
  String? get detail;
  @override
  ImageSize get imageSize;
  @override // @JsonKey(includeToJson: false)
  ImageViewType get imageViewType;
  @override
  @JsonKey(ignore: true)
  _$$ImageGenerateOptionPayloadImplCopyWith<_$ImageGenerateOptionPayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}
