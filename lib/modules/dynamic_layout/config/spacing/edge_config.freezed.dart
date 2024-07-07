// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edge_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EdgeConfig _$EdgeConfigFromJson(Map<String, dynamic> json) {
  return _EdgeConfig.fromJson(json);
}

/// @nodoc
mixin _$EdgeConfig {
  @JsonKey(name: 'start', readValue: _EdgeConfigHelper.parseOldConfig)
  double? get start => throw _privateConstructorUsedError;
  @JsonKey(name: 'end', readValue: _EdgeConfigHelper.parseOldConfig)
  double? get end => throw _privateConstructorUsedError;
  double? get top => throw _privateConstructorUsedError;
  double? get bottom => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EdgeConfigCopyWith<EdgeConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EdgeConfigCopyWith<$Res> {
  factory $EdgeConfigCopyWith(
          EdgeConfig value, $Res Function(EdgeConfig) then) =
      _$EdgeConfigCopyWithImpl<$Res, EdgeConfig>;
  @useResult
  $Res call(
      {@JsonKey(name: 'start', readValue: _EdgeConfigHelper.parseOldConfig)
      double? start,
      @JsonKey(name: 'end', readValue: _EdgeConfigHelper.parseOldConfig)
      double? end,
      double? top,
      double? bottom});
}

/// @nodoc
class _$EdgeConfigCopyWithImpl<$Res, $Val extends EdgeConfig>
    implements $EdgeConfigCopyWith<$Res> {
  _$EdgeConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
    Object? top = freezed,
    Object? bottom = freezed,
  }) {
    return _then(_value.copyWith(
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as double?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as double?,
      top: freezed == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as double?,
      bottom: freezed == bottom
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EdgeConfigImplCopyWith<$Res>
    implements $EdgeConfigCopyWith<$Res> {
  factory _$$EdgeConfigImplCopyWith(
          _$EdgeConfigImpl value, $Res Function(_$EdgeConfigImpl) then) =
      __$$EdgeConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'start', readValue: _EdgeConfigHelper.parseOldConfig)
      double? start,
      @JsonKey(name: 'end', readValue: _EdgeConfigHelper.parseOldConfig)
      double? end,
      double? top,
      double? bottom});
}

/// @nodoc
class __$$EdgeConfigImplCopyWithImpl<$Res>
    extends _$EdgeConfigCopyWithImpl<$Res, _$EdgeConfigImpl>
    implements _$$EdgeConfigImplCopyWith<$Res> {
  __$$EdgeConfigImplCopyWithImpl(
      _$EdgeConfigImpl _value, $Res Function(_$EdgeConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
    Object? top = freezed,
    Object? bottom = freezed,
  }) {
    return _then(_$EdgeConfigImpl(
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as double?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as double?,
      top: freezed == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as double?,
      bottom: freezed == bottom
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EdgeConfigImpl with DiagnosticableTreeMixin implements _EdgeConfig {
  const _$EdgeConfigImpl(
      {@JsonKey(name: 'start', readValue: _EdgeConfigHelper.parseOldConfig)
      this.start,
      @JsonKey(name: 'end', readValue: _EdgeConfigHelper.parseOldConfig)
      this.end,
      this.top,
      this.bottom});

  factory _$EdgeConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$EdgeConfigImplFromJson(json);

  @override
  @JsonKey(name: 'start', readValue: _EdgeConfigHelper.parseOldConfig)
  final double? start;
  @override
  @JsonKey(name: 'end', readValue: _EdgeConfigHelper.parseOldConfig)
  final double? end;
  @override
  final double? top;
  @override
  final double? bottom;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EdgeConfig(start: $start, end: $end, top: $top, bottom: $bottom)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EdgeConfig'))
      ..add(DiagnosticsProperty('start', start))
      ..add(DiagnosticsProperty('end', end))
      ..add(DiagnosticsProperty('top', top))
      ..add(DiagnosticsProperty('bottom', bottom));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EdgeConfigImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.bottom, bottom) || other.bottom == bottom));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, start, end, top, bottom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EdgeConfigImplCopyWith<_$EdgeConfigImpl> get copyWith =>
      __$$EdgeConfigImplCopyWithImpl<_$EdgeConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EdgeConfigImplToJson(
      this,
    );
  }
}

abstract class _EdgeConfig implements EdgeConfig {
  const factory _EdgeConfig(
      {@JsonKey(name: 'start', readValue: _EdgeConfigHelper.parseOldConfig)
      final double? start,
      @JsonKey(name: 'end', readValue: _EdgeConfigHelper.parseOldConfig)
      final double? end,
      final double? top,
      final double? bottom}) = _$EdgeConfigImpl;

  factory _EdgeConfig.fromJson(Map<String, dynamic> json) =
      _$EdgeConfigImpl.fromJson;

  @override
  @JsonKey(name: 'start', readValue: _EdgeConfigHelper.parseOldConfig)
  double? get start;
  @override
  @JsonKey(name: 'end', readValue: _EdgeConfigHelper.parseOldConfig)
  double? get end;
  @override
  double? get top;
  @override
  double? get bottom;
  @override
  @JsonKey(ignore: true)
  _$$EdgeConfigImplCopyWith<_$EdgeConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
