// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_seo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MetaSeoConfig _$MetaSeoConfigFromJson(Map<String, dynamic> json) {
  return _MetaSeoConfig.fromJson(json);
}

/// @nodoc
mixin _$MetaSeoConfig {
  MetaSeoApp? get app => throw _privateConstructorUsedError;
  List<MetaSeoRoute>? get routes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaSeoConfigCopyWith<MetaSeoConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaSeoConfigCopyWith<$Res> {
  factory $MetaSeoConfigCopyWith(
          MetaSeoConfig value, $Res Function(MetaSeoConfig) then) =
      _$MetaSeoConfigCopyWithImpl<$Res, MetaSeoConfig>;
  @useResult
  $Res call({MetaSeoApp? app, List<MetaSeoRoute>? routes});

  $MetaSeoAppCopyWith<$Res>? get app;
}

/// @nodoc
class _$MetaSeoConfigCopyWithImpl<$Res, $Val extends MetaSeoConfig>
    implements $MetaSeoConfigCopyWith<$Res> {
  _$MetaSeoConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? app = freezed,
    Object? routes = freezed,
  }) {
    return _then(_value.copyWith(
      app: freezed == app
          ? _value.app
          : app // ignore: cast_nullable_to_non_nullable
              as MetaSeoApp?,
      routes: freezed == routes
          ? _value.routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<MetaSeoRoute>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaSeoAppCopyWith<$Res>? get app {
    if (_value.app == null) {
      return null;
    }

    return $MetaSeoAppCopyWith<$Res>(_value.app!, (value) {
      return _then(_value.copyWith(app: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MetaSeoConfigImplCopyWith<$Res>
    implements $MetaSeoConfigCopyWith<$Res> {
  factory _$$MetaSeoConfigImplCopyWith(
          _$MetaSeoConfigImpl value, $Res Function(_$MetaSeoConfigImpl) then) =
      __$$MetaSeoConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MetaSeoApp? app, List<MetaSeoRoute>? routes});

  @override
  $MetaSeoAppCopyWith<$Res>? get app;
}

/// @nodoc
class __$$MetaSeoConfigImplCopyWithImpl<$Res>
    extends _$MetaSeoConfigCopyWithImpl<$Res, _$MetaSeoConfigImpl>
    implements _$$MetaSeoConfigImplCopyWith<$Res> {
  __$$MetaSeoConfigImplCopyWithImpl(
      _$MetaSeoConfigImpl _value, $Res Function(_$MetaSeoConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? app = freezed,
    Object? routes = freezed,
  }) {
    return _then(_$MetaSeoConfigImpl(
      app: freezed == app
          ? _value.app
          : app // ignore: cast_nullable_to_non_nullable
              as MetaSeoApp?,
      routes: freezed == routes
          ? _value._routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<MetaSeoRoute>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$MetaSeoConfigImpl extends _MetaSeoConfig {
  const _$MetaSeoConfigImpl({this.app, final List<MetaSeoRoute>? routes})
      : _routes = routes,
        super._();

  factory _$MetaSeoConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaSeoConfigImplFromJson(json);

  @override
  final MetaSeoApp? app;
  final List<MetaSeoRoute>? _routes;
  @override
  List<MetaSeoRoute>? get routes {
    final value = _routes;
    if (value == null) return null;
    if (_routes is EqualUnmodifiableListView) return _routes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MetaSeoConfig(app: $app, routes: $routes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaSeoConfigImpl &&
            (identical(other.app, app) || other.app == app) &&
            const DeepCollectionEquality().equals(other._routes, _routes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, app, const DeepCollectionEquality().hash(_routes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaSeoConfigImplCopyWith<_$MetaSeoConfigImpl> get copyWith =>
      __$$MetaSeoConfigImplCopyWithImpl<_$MetaSeoConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaSeoConfigImplToJson(
      this,
    );
  }
}

abstract class _MetaSeoConfig extends MetaSeoConfig {
  const factory _MetaSeoConfig(
      {final MetaSeoApp? app,
      final List<MetaSeoRoute>? routes}) = _$MetaSeoConfigImpl;
  const _MetaSeoConfig._() : super._();

  factory _MetaSeoConfig.fromJson(Map<String, dynamic> json) =
      _$MetaSeoConfigImpl.fromJson;

  @override
  MetaSeoApp? get app;
  @override
  List<MetaSeoRoute>? get routes;
  @override
  @JsonKey(ignore: true)
  _$$MetaSeoConfigImplCopyWith<_$MetaSeoConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
