// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_seo_route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MetaSeoRoute _$MetaSeoRouteFromJson(Map<String, dynamic> json) {
  return _MetaSeoRoute.fromJson(json);
}

/// @nodoc
mixin _$MetaSeoRoute {
  String get route => throw _privateConstructorUsedError;
  SeoConfig get config => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaSeoRouteCopyWith<MetaSeoRoute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaSeoRouteCopyWith<$Res> {
  factory $MetaSeoRouteCopyWith(
          MetaSeoRoute value, $Res Function(MetaSeoRoute) then) =
      _$MetaSeoRouteCopyWithImpl<$Res, MetaSeoRoute>;
  @useResult
  $Res call({String route, SeoConfig config});

  $SeoConfigCopyWith<$Res> get config;
}

/// @nodoc
class _$MetaSeoRouteCopyWithImpl<$Res, $Val extends MetaSeoRoute>
    implements $MetaSeoRouteCopyWith<$Res> {
  _$MetaSeoRouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
    Object? config = null,
  }) {
    return _then(_value.copyWith(
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$MetaSeoRouteImplCopyWith<$Res>
    implements $MetaSeoRouteCopyWith<$Res> {
  factory _$$MetaSeoRouteImplCopyWith(
          _$MetaSeoRouteImpl value, $Res Function(_$MetaSeoRouteImpl) then) =
      __$$MetaSeoRouteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String route, SeoConfig config});

  @override
  $SeoConfigCopyWith<$Res> get config;
}

/// @nodoc
class __$$MetaSeoRouteImplCopyWithImpl<$Res>
    extends _$MetaSeoRouteCopyWithImpl<$Res, _$MetaSeoRouteImpl>
    implements _$$MetaSeoRouteImplCopyWith<$Res> {
  __$$MetaSeoRouteImplCopyWithImpl(
      _$MetaSeoRouteImpl _value, $Res Function(_$MetaSeoRouteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
    Object? config = null,
  }) {
    return _then(_$MetaSeoRouteImpl(
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      config: null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as SeoConfig,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$MetaSeoRouteImpl extends _MetaSeoRoute {
  const _$MetaSeoRouteImpl({required this.route, required this.config})
      : super._();

  factory _$MetaSeoRouteImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaSeoRouteImplFromJson(json);

  @override
  final String route;
  @override
  final SeoConfig config;

  @override
  String toString() {
    return 'MetaSeoRoute(route: $route, config: $config)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaSeoRouteImpl &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.config, config) || other.config == config));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, route, config);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaSeoRouteImplCopyWith<_$MetaSeoRouteImpl> get copyWith =>
      __$$MetaSeoRouteImplCopyWithImpl<_$MetaSeoRouteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaSeoRouteImplToJson(
      this,
    );
  }
}

abstract class _MetaSeoRoute extends MetaSeoRoute {
  const factory _MetaSeoRoute(
      {required final String route,
      required final SeoConfig config}) = _$MetaSeoRouteImpl;
  const _MetaSeoRoute._() : super._();

  factory _MetaSeoRoute.fromJson(Map<String, dynamic> json) =
      _$MetaSeoRouteImpl.fromJson;

  @override
  String get route;
  @override
  SeoConfig get config;
  @override
  @JsonKey(ignore: true)
  _$$MetaSeoRouteImplCopyWith<_$MetaSeoRouteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
