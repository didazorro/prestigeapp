// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_prompt_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubPromptUseCase _$SubPromptUseCaseFromJson(Map<String, dynamic> json) {
  return _SubPromptUseCase.fromJson(json);
}

/// @nodoc
mixin _$SubPromptUseCase {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  PromptUseCaseType get type => throw _privateConstructorUsedError;
  String get promptText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubPromptUseCaseCopyWith<SubPromptUseCase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubPromptUseCaseCopyWith<$Res> {
  factory $SubPromptUseCaseCopyWith(
          SubPromptUseCase value, $Res Function(SubPromptUseCase) then) =
      _$SubPromptUseCaseCopyWithImpl<$Res, SubPromptUseCase>;
  @useResult
  $Res call(
      {String name,
      String description,
      PromptUseCaseType type,
      String promptText});
}

/// @nodoc
class _$SubPromptUseCaseCopyWithImpl<$Res, $Val extends SubPromptUseCase>
    implements $SubPromptUseCaseCopyWith<$Res> {
  _$SubPromptUseCaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? promptText = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PromptUseCaseType,
      promptText: null == promptText
          ? _value.promptText
          : promptText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubPromptUseCaseImplCopyWith<$Res>
    implements $SubPromptUseCaseCopyWith<$Res> {
  factory _$$SubPromptUseCaseImplCopyWith(_$SubPromptUseCaseImpl value,
          $Res Function(_$SubPromptUseCaseImpl) then) =
      __$$SubPromptUseCaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      PromptUseCaseType type,
      String promptText});
}

/// @nodoc
class __$$SubPromptUseCaseImplCopyWithImpl<$Res>
    extends _$SubPromptUseCaseCopyWithImpl<$Res, _$SubPromptUseCaseImpl>
    implements _$$SubPromptUseCaseImplCopyWith<$Res> {
  __$$SubPromptUseCaseImplCopyWithImpl(_$SubPromptUseCaseImpl _value,
      $Res Function(_$SubPromptUseCaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? promptText = null,
  }) {
    return _then(_$SubPromptUseCaseImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PromptUseCaseType,
      promptText: null == promptText
          ? _value.promptText
          : promptText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubPromptUseCaseImpl
    with DiagnosticableTreeMixin
    implements _SubPromptUseCase {
  const _$SubPromptUseCaseImpl(
      {required this.name,
      required this.description,
      required this.type,
      this.promptText = ''});

  factory _$SubPromptUseCaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubPromptUseCaseImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final PromptUseCaseType type;
  @override
  @JsonKey()
  final String promptText;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubPromptUseCase(name: $name, description: $description, type: $type, promptText: $promptText)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubPromptUseCase'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('promptText', promptText));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubPromptUseCaseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.promptText, promptText) ||
                other.promptText == promptText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, type, promptText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubPromptUseCaseImplCopyWith<_$SubPromptUseCaseImpl> get copyWith =>
      __$$SubPromptUseCaseImplCopyWithImpl<_$SubPromptUseCaseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubPromptUseCaseImplToJson(
      this,
    );
  }
}

abstract class _SubPromptUseCase implements SubPromptUseCase {
  const factory _SubPromptUseCase(
      {required final String name,
      required final String description,
      required final PromptUseCaseType type,
      final String promptText}) = _$SubPromptUseCaseImpl;

  factory _SubPromptUseCase.fromJson(Map<String, dynamic> json) =
      _$SubPromptUseCaseImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  PromptUseCaseType get type;
  @override
  String get promptText;
  @override
  @JsonKey(ignore: true)
  _$$SubPromptUseCaseImplCopyWith<_$SubPromptUseCaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
