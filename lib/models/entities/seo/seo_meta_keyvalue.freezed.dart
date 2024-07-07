// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seo_meta_keyvalue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SeoMetaKeyValue _$SeoMetaKeyValueFromJson(Map<String, dynamic> json) {
  return _SeoMetaKeyValue.fromJson(json);
}

/// @nodoc
mixin _$SeoMetaKeyValue {
  String get key => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeoMetaKeyValueCopyWith<SeoMetaKeyValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeoMetaKeyValueCopyWith<$Res> {
  factory $SeoMetaKeyValueCopyWith(
          SeoMetaKeyValue value, $Res Function(SeoMetaKeyValue) then) =
      _$SeoMetaKeyValueCopyWithImpl<$Res, SeoMetaKeyValue>;
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class _$SeoMetaKeyValueCopyWithImpl<$Res, $Val extends SeoMetaKeyValue>
    implements $SeoMetaKeyValueCopyWith<$Res> {
  _$SeoMetaKeyValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeoMetaKeyValueImplCopyWith<$Res>
    implements $SeoMetaKeyValueCopyWith<$Res> {
  factory _$$SeoMetaKeyValueImplCopyWith(_$SeoMetaKeyValueImpl value,
          $Res Function(_$SeoMetaKeyValueImpl) then) =
      __$$SeoMetaKeyValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class __$$SeoMetaKeyValueImplCopyWithImpl<$Res>
    extends _$SeoMetaKeyValueCopyWithImpl<$Res, _$SeoMetaKeyValueImpl>
    implements _$$SeoMetaKeyValueImplCopyWith<$Res> {
  __$$SeoMetaKeyValueImplCopyWithImpl(
      _$SeoMetaKeyValueImpl _value, $Res Function(_$SeoMetaKeyValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_$SeoMetaKeyValueImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeoMetaKeyValueImpl extends _SeoMetaKeyValue {
  const _$SeoMetaKeyValueImpl({required this.key, required this.value})
      : super._();

  factory _$SeoMetaKeyValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeoMetaKeyValueImplFromJson(json);

  @override
  final String key;
  @override
  final String value;

  @override
  String toString() {
    return 'SeoMetaKeyValue(key: $key, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeoMetaKeyValueImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeoMetaKeyValueImplCopyWith<_$SeoMetaKeyValueImpl> get copyWith =>
      __$$SeoMetaKeyValueImplCopyWithImpl<_$SeoMetaKeyValueImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeoMetaKeyValueImplToJson(
      this,
    );
  }
}

abstract class _SeoMetaKeyValue extends SeoMetaKeyValue {
  const factory _SeoMetaKeyValue(
      {required final String key,
      required final String value}) = _$SeoMetaKeyValueImpl;
  const _SeoMetaKeyValue._() : super._();

  factory _SeoMetaKeyValue.fromJson(Map<String, dynamic> json) =
      _$SeoMetaKeyValueImpl.fromJson;

  @override
  String get key;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$SeoMetaKeyValueImplCopyWith<_$SeoMetaKeyValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
