// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatModelState {
  String? get identifier => throw _privateConstructorUsedError;
  List<Chat> get chats => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatModelStateCopyWith<ChatModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatModelStateCopyWith<$Res> {
  factory $ChatModelStateCopyWith(
          ChatModelState value, $Res Function(ChatModelState) then) =
      _$ChatModelStateCopyWithImpl<$Res, ChatModelState>;
  @useResult
  $Res call({String? identifier, List<Chat> chats});
}

/// @nodoc
class _$ChatModelStateCopyWithImpl<$Res, $Val extends ChatModelState>
    implements $ChatModelStateCopyWith<$Res> {
  _$ChatModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? chats = null,
  }) {
    return _then(_value.copyWith(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
      chats: null == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatModelStateImplCopyWith<$Res>
    implements $ChatModelStateCopyWith<$Res> {
  factory _$$ChatModelStateImplCopyWith(_$ChatModelStateImpl value,
          $Res Function(_$ChatModelStateImpl) then) =
      __$$ChatModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? identifier, List<Chat> chats});
}

/// @nodoc
class __$$ChatModelStateImplCopyWithImpl<$Res>
    extends _$ChatModelStateCopyWithImpl<$Res, _$ChatModelStateImpl>
    implements _$$ChatModelStateImplCopyWith<$Res> {
  __$$ChatModelStateImplCopyWithImpl(
      _$ChatModelStateImpl _value, $Res Function(_$ChatModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? chats = null,
  }) {
    return _then(_$ChatModelStateImpl(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
      chats: null == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
    ));
  }
}

/// @nodoc

class _$ChatModelStateImpl
    with DiagnosticableTreeMixin
    implements _ChatModelState {
  const _$ChatModelStateImpl({this.identifier, required final List<Chat> chats})
      : _chats = chats;

  @override
  final String? identifier;
  final List<Chat> _chats;
  @override
  List<Chat> get chats {
    if (_chats is EqualUnmodifiableListView) return _chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chats);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatModelState(identifier: $identifier, chats: $chats)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatModelState'))
      ..add(DiagnosticsProperty('identifier', identifier))
      ..add(DiagnosticsProperty('chats', chats));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatModelStateImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            const DeepCollectionEquality().equals(other._chats, _chats));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, identifier, const DeepCollectionEquality().hash(_chats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatModelStateImplCopyWith<_$ChatModelStateImpl> get copyWith =>
      __$$ChatModelStateImplCopyWithImpl<_$ChatModelStateImpl>(
          this, _$identity);
}

abstract class _ChatModelState implements ChatModelState {
  const factory _ChatModelState(
      {final String? identifier,
      required final List<Chat> chats}) = _$ChatModelStateImpl;

  @override
  String? get identifier;
  @override
  List<Chat> get chats;
  @override
  @JsonKey(ignore: true)
  _$$ChatModelStateImplCopyWith<_$ChatModelStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
