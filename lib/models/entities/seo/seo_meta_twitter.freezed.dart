// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seo_meta_twitter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SeoMetaTwitter _$SeoMetaTwitterFromJson(Map<String, dynamic> json) {
  return _SeoMetaTwitter.fromJson(json);
}

/// @nodoc
mixin _$SeoMetaTwitter {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  @JsonKey(readValue: _readValueSeoTwitterCard)
  SeoTwitterCard get card => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeoMetaTwitterCopyWith<SeoMetaTwitter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeoMetaTwitterCopyWith<$Res> {
  factory $SeoMetaTwitterCopyWith(
          SeoMetaTwitter value, $Res Function(SeoMetaTwitter) then) =
      _$SeoMetaTwitterCopyWithImpl<$Res, SeoMetaTwitter>;
  @useResult
  $Res call(
      {String title,
      String description,
      String image,
      @JsonKey(readValue: _readValueSeoTwitterCard) SeoTwitterCard card});
}

/// @nodoc
class _$SeoMetaTwitterCopyWithImpl<$Res, $Val extends SeoMetaTwitter>
    implements $SeoMetaTwitterCopyWith<$Res> {
  _$SeoMetaTwitterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? image = null,
    Object? card = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      card: null == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as SeoTwitterCard,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeoMetaTwitterImplCopyWith<$Res>
    implements $SeoMetaTwitterCopyWith<$Res> {
  factory _$$SeoMetaTwitterImplCopyWith(_$SeoMetaTwitterImpl value,
          $Res Function(_$SeoMetaTwitterImpl) then) =
      __$$SeoMetaTwitterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      String image,
      @JsonKey(readValue: _readValueSeoTwitterCard) SeoTwitterCard card});
}

/// @nodoc
class __$$SeoMetaTwitterImplCopyWithImpl<$Res>
    extends _$SeoMetaTwitterCopyWithImpl<$Res, _$SeoMetaTwitterImpl>
    implements _$$SeoMetaTwitterImplCopyWith<$Res> {
  __$$SeoMetaTwitterImplCopyWithImpl(
      _$SeoMetaTwitterImpl _value, $Res Function(_$SeoMetaTwitterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? image = null,
    Object? card = null,
  }) {
    return _then(_$SeoMetaTwitterImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      card: null == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as SeoTwitterCard,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeoMetaTwitterImpl extends _SeoMetaTwitter {
  const _$SeoMetaTwitterImpl(
      {required this.title,
      required this.description,
      required this.image,
      @JsonKey(readValue: _readValueSeoTwitterCard) required this.card})
      : super._();

  factory _$SeoMetaTwitterImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeoMetaTwitterImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String image;
  @override
  @JsonKey(readValue: _readValueSeoTwitterCard)
  final SeoTwitterCard card;

  @override
  String toString() {
    return 'SeoMetaTwitter(title: $title, description: $description, image: $image, card: $card)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeoMetaTwitterImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.card, card) || other.card == card));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, image, card);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeoMetaTwitterImplCopyWith<_$SeoMetaTwitterImpl> get copyWith =>
      __$$SeoMetaTwitterImplCopyWithImpl<_$SeoMetaTwitterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeoMetaTwitterImplToJson(
      this,
    );
  }
}

abstract class _SeoMetaTwitter extends SeoMetaTwitter {
  const factory _SeoMetaTwitter(
      {required final String title,
      required final String description,
      required final String image,
      @JsonKey(readValue: _readValueSeoTwitterCard)
      required final SeoTwitterCard card}) = _$SeoMetaTwitterImpl;
  const _SeoMetaTwitter._() : super._();

  factory _SeoMetaTwitter.fromJson(Map<String, dynamic> json) =
      _$SeoMetaTwitterImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  String get image;
  @override
  @JsonKey(readValue: _readValueSeoTwitterCard)
  SeoTwitterCard get card;
  @override
  @JsonKey(ignore: true)
  _$$SeoMetaTwitterImplCopyWith<_$SeoMetaTwitterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
