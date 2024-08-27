// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_detail_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatDetailModelState {
  List<Message> get messages => throw _privateConstructorUsedError;
  int get messaageSpeech => throw _privateConstructorUsedError;
  bool get micAvailable => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatDetailModelStateCopyWith<ChatDetailModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatDetailModelStateCopyWith<$Res> {
  factory $ChatDetailModelStateCopyWith(ChatDetailModelState value,
          $Res Function(ChatDetailModelState) then) =
      _$ChatDetailModelStateCopyWithImpl<$Res, ChatDetailModelState>;
  @useResult
  $Res call({List<Message> messages, int messaageSpeech, bool micAvailable});
}

/// @nodoc
class _$ChatDetailModelStateCopyWithImpl<$Res,
        $Val extends ChatDetailModelState>
    implements $ChatDetailModelStateCopyWith<$Res> {
  _$ChatDetailModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? messaageSpeech = null,
    Object? micAvailable = null,
  }) {
    return _then(_value.copyWith(
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      messaageSpeech: null == messaageSpeech
          ? _value.messaageSpeech
          : messaageSpeech // ignore: cast_nullable_to_non_nullable
              as int,
      micAvailable: null == micAvailable
          ? _value.micAvailable
          : micAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatDetailModelStateImplCopyWith<$Res>
    implements $ChatDetailModelStateCopyWith<$Res> {
  factory _$$ChatDetailModelStateImplCopyWith(_$ChatDetailModelStateImpl value,
          $Res Function(_$ChatDetailModelStateImpl) then) =
      __$$ChatDetailModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Message> messages, int messaageSpeech, bool micAvailable});
}

/// @nodoc
class __$$ChatDetailModelStateImplCopyWithImpl<$Res>
    extends _$ChatDetailModelStateCopyWithImpl<$Res, _$ChatDetailModelStateImpl>
    implements _$$ChatDetailModelStateImplCopyWith<$Res> {
  __$$ChatDetailModelStateImplCopyWithImpl(_$ChatDetailModelStateImpl _value,
      $Res Function(_$ChatDetailModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? messaageSpeech = null,
    Object? micAvailable = null,
  }) {
    return _then(_$ChatDetailModelStateImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      messaageSpeech: null == messaageSpeech
          ? _value.messaageSpeech
          : messaageSpeech // ignore: cast_nullable_to_non_nullable
              as int,
      micAvailable: null == micAvailable
          ? _value.micAvailable
          : micAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChatDetailModelStateImpl
    with DiagnosticableTreeMixin
    implements _ChatDetailModelState {
  const _$ChatDetailModelStateImpl(
      {required final List<Message> messages,
      required this.messaageSpeech,
      required this.micAvailable})
      : _messages = messages;

  final List<Message> _messages;
  @override
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final int messaageSpeech;
  @override
  final bool micAvailable;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatDetailModelState(messages: $messages, messaageSpeech: $messaageSpeech, micAvailable: $micAvailable)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatDetailModelState'))
      ..add(DiagnosticsProperty('messages', messages))
      ..add(DiagnosticsProperty('messaageSpeech', messaageSpeech))
      ..add(DiagnosticsProperty('micAvailable', micAvailable));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatDetailModelStateImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.messaageSpeech, messaageSpeech) ||
                other.messaageSpeech == messaageSpeech) &&
            (identical(other.micAvailable, micAvailable) ||
                other.micAvailable == micAvailable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_messages),
      messaageSpeech,
      micAvailable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatDetailModelStateImplCopyWith<_$ChatDetailModelStateImpl>
      get copyWith =>
          __$$ChatDetailModelStateImplCopyWithImpl<_$ChatDetailModelStateImpl>(
              this, _$identity);
}

abstract class _ChatDetailModelState implements ChatDetailModelState {
  const factory _ChatDetailModelState(
      {required final List<Message> messages,
      required final int messaageSpeech,
      required final bool micAvailable}) = _$ChatDetailModelStateImpl;

  @override
  List<Message> get messages;
  @override
  int get messaageSpeech;
  @override
  bool get micAvailable;
  @override
  @JsonKey(ignore: true)
  _$$ChatDetailModelStateImplCopyWith<_$ChatDetailModelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
