// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_generate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TextGenerateModel _$TextGenerateModelFromJson(Map<String, dynamic> json) {
  return _TextGenerateModel.fromJson(json);
}

/// @nodoc
mixin _$TextGenerateModel {
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextGenerateModelCopyWith<TextGenerateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextGenerateModelCopyWith<$Res> {
  factory $TextGenerateModelCopyWith(
          TextGenerateModel value, $Res Function(TextGenerateModel) then) =
      _$TextGenerateModelCopyWithImpl<$Res, TextGenerateModel>;
  @useResult
  $Res call({String content});
}

/// @nodoc
class _$TextGenerateModelCopyWithImpl<$Res, $Val extends TextGenerateModel>
    implements $TextGenerateModelCopyWith<$Res> {
  _$TextGenerateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextGenerateModelImplCopyWith<$Res>
    implements $TextGenerateModelCopyWith<$Res> {
  factory _$$TextGenerateModelImplCopyWith(_$TextGenerateModelImpl value,
          $Res Function(_$TextGenerateModelImpl) then) =
      __$$TextGenerateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content});
}

/// @nodoc
class __$$TextGenerateModelImplCopyWithImpl<$Res>
    extends _$TextGenerateModelCopyWithImpl<$Res, _$TextGenerateModelImpl>
    implements _$$TextGenerateModelImplCopyWith<$Res> {
  __$$TextGenerateModelImplCopyWithImpl(_$TextGenerateModelImpl _value,
      $Res Function(_$TextGenerateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$TextGenerateModelImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextGenerateModelImpl
    with DiagnosticableTreeMixin
    implements _TextGenerateModel {
  const _$TextGenerateModelImpl({required this.content});

  factory _$TextGenerateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextGenerateModelImplFromJson(json);

  @override
  final String content;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TextGenerateModel(content: $content)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TextGenerateModel'))
      ..add(DiagnosticsProperty('content', content));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextGenerateModelImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextGenerateModelImplCopyWith<_$TextGenerateModelImpl> get copyWith =>
      __$$TextGenerateModelImplCopyWithImpl<_$TextGenerateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TextGenerateModelImplToJson(
      this,
    );
  }
}

abstract class _TextGenerateModel implements TextGenerateModel {
  const factory _TextGenerateModel({required final String content}) =
      _$TextGenerateModelImpl;

  factory _TextGenerateModel.fromJson(Map<String, dynamic> json) =
      _$TextGenerateModelImpl.fromJson;

  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$TextGenerateModelImplCopyWith<_$TextGenerateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
