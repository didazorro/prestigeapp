// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seo_meta_property_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SeoMetaPropertyContent _$SeoMetaPropertyContentFromJson(
    Map<String, dynamic> json) {
  return _SeoMetaPropertyContent.fromJson(json);
}

/// @nodoc
mixin _$SeoMetaPropertyContent {
  String get property => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeoMetaPropertyContentCopyWith<SeoMetaPropertyContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeoMetaPropertyContentCopyWith<$Res> {
  factory $SeoMetaPropertyContentCopyWith(SeoMetaPropertyContent value,
          $Res Function(SeoMetaPropertyContent) then) =
      _$SeoMetaPropertyContentCopyWithImpl<$Res, SeoMetaPropertyContent>;
  @useResult
  $Res call({String property, String content});
}

/// @nodoc
class _$SeoMetaPropertyContentCopyWithImpl<$Res,
        $Val extends SeoMetaPropertyContent>
    implements $SeoMetaPropertyContentCopyWith<$Res> {
  _$SeoMetaPropertyContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? property = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      property: null == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeoMetaPropertyContentImplCopyWith<$Res>
    implements $SeoMetaPropertyContentCopyWith<$Res> {
  factory _$$SeoMetaPropertyContentImplCopyWith(
          _$SeoMetaPropertyContentImpl value,
          $Res Function(_$SeoMetaPropertyContentImpl) then) =
      __$$SeoMetaPropertyContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String property, String content});
}

/// @nodoc
class __$$SeoMetaPropertyContentImplCopyWithImpl<$Res>
    extends _$SeoMetaPropertyContentCopyWithImpl<$Res,
        _$SeoMetaPropertyContentImpl>
    implements _$$SeoMetaPropertyContentImplCopyWith<$Res> {
  __$$SeoMetaPropertyContentImplCopyWithImpl(
      _$SeoMetaPropertyContentImpl _value,
      $Res Function(_$SeoMetaPropertyContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? property = null,
    Object? content = null,
  }) {
    return _then(_$SeoMetaPropertyContentImpl(
      property: null == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeoMetaPropertyContentImpl extends _SeoMetaPropertyContent {
  const _$SeoMetaPropertyContentImpl(
      {required this.property, required this.content})
      : super._();

  factory _$SeoMetaPropertyContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeoMetaPropertyContentImplFromJson(json);

  @override
  final String property;
  @override
  final String content;

  @override
  String toString() {
    return 'SeoMetaPropertyContent(property: $property, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeoMetaPropertyContentImpl &&
            (identical(other.property, property) ||
                other.property == property) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, property, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeoMetaPropertyContentImplCopyWith<_$SeoMetaPropertyContentImpl>
      get copyWith => __$$SeoMetaPropertyContentImplCopyWithImpl<
          _$SeoMetaPropertyContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeoMetaPropertyContentImplToJson(
      this,
    );
  }
}

abstract class _SeoMetaPropertyContent extends SeoMetaPropertyContent {
  const factory _SeoMetaPropertyContent(
      {required final String property,
      required final String content}) = _$SeoMetaPropertyContentImpl;
  const _SeoMetaPropertyContent._() : super._();

  factory _SeoMetaPropertyContent.fromJson(Map<String, dynamic> json) =
      _$SeoMetaPropertyContentImpl.fromJson;

  @override
  String get property;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$SeoMetaPropertyContentImplCopyWith<_$SeoMetaPropertyContentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
