// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seo_meta_robot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SeoMetaRobot _$SeoMetaRobotFromJson(Map<String, dynamic> json) {
  return _SeoMetaRobot.fromJson(json);
}

/// @nodoc
mixin _$SeoMetaRobot {
  @JsonKey(readValue: _readValueRobotsName)
  SeoRobotsName get name => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeoMetaRobotCopyWith<SeoMetaRobot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeoMetaRobotCopyWith<$Res> {
  factory $SeoMetaRobotCopyWith(
          SeoMetaRobot value, $Res Function(SeoMetaRobot) then) =
      _$SeoMetaRobotCopyWithImpl<$Res, SeoMetaRobot>;
  @useResult
  $Res call(
      {@JsonKey(readValue: _readValueRobotsName) SeoRobotsName name,
      String content});
}

/// @nodoc
class _$SeoMetaRobotCopyWithImpl<$Res, $Val extends SeoMetaRobot>
    implements $SeoMetaRobotCopyWith<$Res> {
  _$SeoMetaRobotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as SeoRobotsName,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeoMetaRobotImplCopyWith<$Res>
    implements $SeoMetaRobotCopyWith<$Res> {
  factory _$$SeoMetaRobotImplCopyWith(
          _$SeoMetaRobotImpl value, $Res Function(_$SeoMetaRobotImpl) then) =
      __$$SeoMetaRobotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(readValue: _readValueRobotsName) SeoRobotsName name,
      String content});
}

/// @nodoc
class __$$SeoMetaRobotImplCopyWithImpl<$Res>
    extends _$SeoMetaRobotCopyWithImpl<$Res, _$SeoMetaRobotImpl>
    implements _$$SeoMetaRobotImplCopyWith<$Res> {
  __$$SeoMetaRobotImplCopyWithImpl(
      _$SeoMetaRobotImpl _value, $Res Function(_$SeoMetaRobotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? content = null,
  }) {
    return _then(_$SeoMetaRobotImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as SeoRobotsName,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeoMetaRobotImpl extends _SeoMetaRobot {
  const _$SeoMetaRobotImpl(
      {@JsonKey(readValue: _readValueRobotsName) required this.name,
      required this.content})
      : super._();

  factory _$SeoMetaRobotImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeoMetaRobotImplFromJson(json);

  @override
  @JsonKey(readValue: _readValueRobotsName)
  final SeoRobotsName name;
  @override
  final String content;

  @override
  String toString() {
    return 'SeoMetaRobot(name: $name, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeoMetaRobotImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeoMetaRobotImplCopyWith<_$SeoMetaRobotImpl> get copyWith =>
      __$$SeoMetaRobotImplCopyWithImpl<_$SeoMetaRobotImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeoMetaRobotImplToJson(
      this,
    );
  }
}

abstract class _SeoMetaRobot extends SeoMetaRobot {
  const factory _SeoMetaRobot(
      {@JsonKey(readValue: _readValueRobotsName)
      required final SeoRobotsName name,
      required final String content}) = _$SeoMetaRobotImpl;
  const _SeoMetaRobot._() : super._();

  factory _SeoMetaRobot.fromJson(Map<String, dynamic> json) =
      _$SeoMetaRobotImpl.fromJson;

  @override
  @JsonKey(readValue: _readValueRobotsName)
  SeoRobotsName get name;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$SeoMetaRobotImplCopyWith<_$SeoMetaRobotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
