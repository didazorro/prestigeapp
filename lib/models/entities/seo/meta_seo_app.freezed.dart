// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_seo_app.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MetaSeoApp _$MetaSeoAppFromJson(Map<String, dynamic> json) {
  return _MetaSeoApp.fromJson(json);
}

/// @nodoc
mixin _$MetaSeoApp {
  List<String>? get excludes => throw _privateConstructorUsedError;
  SeoConfig get config => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaSeoAppCopyWith<MetaSeoApp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaSeoAppCopyWith<$Res> {
  factory $MetaSeoAppCopyWith(
          MetaSeoApp value, $Res Function(MetaSeoApp) then) =
      _$MetaSeoAppCopyWithImpl<$Res, MetaSeoApp>;
  @useResult
  $Res call({List<String>? excludes, SeoConfig config});

  $SeoConfigCopyWith<$Res> get config;
}

/// @nodoc
class _$MetaSeoAppCopyWithImpl<$Res, $Val extends MetaSeoApp>
    implements $MetaSeoAppCopyWith<$Res> {
  _$MetaSeoAppCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? excludes = freezed,
    Object? config = null,
  }) {
    return _then(_value.copyWith(
      excludes: freezed == excludes
          ? _value.excludes
          : excludes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      config: null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as SeoConfig,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SeoConfigCopyWith<$Res> get config {
    return $SeoConfigCopyWith<$Res>(_value.config, (value) {
      return _then(_value.copyWith(config: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MetaSeoAppImplCopyWith<$Res>
    implements $MetaSeoAppCopyWith<$Res> {
  factory _$$MetaSeoAppImplCopyWith(
          _$MetaSeoAppImpl value, $Res Function(_$MetaSeoAppImpl) then) =
      __$$MetaSeoAppImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? excludes, SeoConfig config});

  @override
  $SeoConfigCopyWith<$Res> get config;
}

/// @nodoc
class __$$MetaSeoAppImplCopyWithImpl<$Res>
    extends _$MetaSeoAppCopyWithImpl<$Res, _$MetaSeoAppImpl>
    implements _$$MetaSeoAppImplCopyWith<$Res> {
  __$$MetaSeoAppImplCopyWithImpl(
      _$MetaSeoAppImpl _value, $Res Function(_$MetaSeoAppImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? excludes = freezed,
    Object? config = null,
  }) {
    return _then(_$MetaSeoAppImpl(
      excludes: freezed == excludes
          ? _value._excludes
          : excludes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      config: null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as SeoConfig,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$MetaSeoAppImpl extends _MetaSeoApp {
  const _$MetaSeoAppImpl({final List<String>? excludes, required this.config})
      : _excludes = excludes,
        super._();

  factory _$MetaSeoAppImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaSeoAppImplFromJson(json);

  final List<String>? _excludes;
  @override
  List<String>? get excludes {
    final value = _excludes;
    if (value == null) return null;
    if (_excludes is EqualUnmodifiableListView) return _excludes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SeoConfig config;

  @override
  String toString() {
    return 'MetaSeoApp(excludes: $excludes, config: $config)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaSeoAppImpl &&
            const DeepCollectionEquality().equals(other._excludes, _excludes) &&
            (identical(other.config, config) || other.config == config));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_excludes), config);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaSeoAppImplCopyWith<_$MetaSeoAppImpl> get copyWith =>
      __$$MetaSeoAppImplCopyWithImpl<_$MetaSeoAppImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaSeoAppImplToJson(
      this,
    );
  }
}

abstract class _MetaSeoApp extends MetaSeoApp {
  const factory _MetaSeoApp(
      {final List<String>? excludes,
      required final SeoConfig config}) = _$MetaSeoAppImpl;
  const _MetaSeoApp._() : super._();

  factory _MetaSeoApp.fromJson(Map<String, dynamic> json) =
      _$MetaSeoAppImpl.fromJson;

  @override
  List<String>? get excludes;
  @override
  SeoConfig get config;
  @override
  @JsonKey(ignore: true)
  _$$MetaSeoAppImplCopyWith<_$MetaSeoAppImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
