// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() createNewChat,
    required TResult Function(int chatId) deleteChat,
    required TResult Function(String identifier) updateIdentifier,
    required TResult Function(int chatId) selectChat,
    required TResult Function(Chat chat, String title) editChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? createNewChat,
    TResult? Function(int chatId)? deleteChat,
    TResult? Function(String identifier)? updateIdentifier,
    TResult? Function(int chatId)? selectChat,
    TResult? Function(Chat chat, String title)? editChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? createNewChat,
    TResult Function(int chatId)? deleteChat,
    TResult Function(String identifier)? updateIdentifier,
    TResult Function(int chatId)? selectChat,
    TResult Function(Chat chat, String title)? editChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateNewChat value) createNewChat,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_UpdateIdentifier value) updateIdentifier,
    required TResult Function(_SelectChat value) selectChat,
    required TResult Function(_EditChat value) editChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateNewChat value)? createNewChat,
    TResult? Function(_DeleteChat value)? deleteChat,
    TResult? Function(_UpdateIdentifier value)? updateIdentifier,
    TResult? Function(_SelectChat value)? selectChat,
    TResult? Function(_EditChat value)? editChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateNewChat value)? createNewChat,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_UpdateIdentifier value)? updateIdentifier,
    TResult Function(_SelectChat value)? selectChat,
    TResult Function(_EditChat value)? editChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ChatEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() createNewChat,
    required TResult Function(int chatId) deleteChat,
    required TResult Function(String identifier) updateIdentifier,
    required TResult Function(int chatId) selectChat,
    required TResult Function(Chat chat, String title) editChat,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? createNewChat,
    TResult? Function(int chatId)? deleteChat,
    TResult? Function(String identifier)? updateIdentifier,
    TResult? Function(int chatId)? selectChat,
    TResult? Function(Chat chat, String title)? editChat,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? createNewChat,
    TResult Function(int chatId)? deleteChat,
    TResult Function(String identifier)? updateIdentifier,
    TResult Function(int chatId)? selectChat,
    TResult Function(Chat chat, String title)? editChat,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateNewChat value) createNewChat,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_UpdateIdentifier value) updateIdentifier,
    required TResult Function(_SelectChat value) selectChat,
    required TResult Function(_EditChat value) editChat,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateNewChat value)? createNewChat,
    TResult? Function(_DeleteChat value)? deleteChat,
    TResult? Function(_UpdateIdentifier value)? updateIdentifier,
    TResult? Function(_SelectChat value)? selectChat,
    TResult? Function(_EditChat value)? editChat,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateNewChat value)? createNewChat,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_UpdateIdentifier value)? updateIdentifier,
    TResult Function(_SelectChat value)? selectChat,
    TResult Function(_EditChat value)? editChat,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ChatEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$CreateNewChatImplCopyWith<$Res> {
  factory _$$CreateNewChatImplCopyWith(
          _$CreateNewChatImpl value, $Res Function(_$CreateNewChatImpl) then) =
      __$$CreateNewChatImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateNewChatImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$CreateNewChatImpl>
    implements _$$CreateNewChatImplCopyWith<$Res> {
  __$$CreateNewChatImplCopyWithImpl(
      _$CreateNewChatImpl _value, $Res Function(_$CreateNewChatImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateNewChatImpl implements _CreateNewChat {
  const _$CreateNewChatImpl();

  @override
  String toString() {
    return 'ChatEvent.createNewChat()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateNewChatImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() createNewChat,
    required TResult Function(int chatId) deleteChat,
    required TResult Function(String identifier) updateIdentifier,
    required TResult Function(int chatId) selectChat,
    required TResult Function(Chat chat, String title) editChat,
  }) {
    return createNewChat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? createNewChat,
    TResult? Function(int chatId)? deleteChat,
    TResult? Function(String identifier)? updateIdentifier,
    TResult? Function(int chatId)? selectChat,
    TResult? Function(Chat chat, String title)? editChat,
  }) {
    return createNewChat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? createNewChat,
    TResult Function(int chatId)? deleteChat,
    TResult Function(String identifier)? updateIdentifier,
    TResult Function(int chatId)? selectChat,
    TResult Function(Chat chat, String title)? editChat,
    required TResult orElse(),
  }) {
    if (createNewChat != null) {
      return createNewChat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateNewChat value) createNewChat,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_UpdateIdentifier value) updateIdentifier,
    required TResult Function(_SelectChat value) selectChat,
    required TResult Function(_EditChat value) editChat,
  }) {
    return createNewChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateNewChat value)? createNewChat,
    TResult? Function(_DeleteChat value)? deleteChat,
    TResult? Function(_UpdateIdentifier value)? updateIdentifier,
    TResult? Function(_SelectChat value)? selectChat,
    TResult? Function(_EditChat value)? editChat,
  }) {
    return createNewChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateNewChat value)? createNewChat,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_UpdateIdentifier value)? updateIdentifier,
    TResult Function(_SelectChat value)? selectChat,
    TResult Function(_EditChat value)? editChat,
    required TResult orElse(),
  }) {
    if (createNewChat != null) {
      return createNewChat(this);
    }
    return orElse();
  }
}

abstract class _CreateNewChat implements ChatEvent {
  const factory _CreateNewChat() = _$CreateNewChatImpl;
}

/// @nodoc
abstract class _$$DeleteChatImplCopyWith<$Res> {
  factory _$$DeleteChatImplCopyWith(
          _$DeleteChatImpl value, $Res Function(_$DeleteChatImpl) then) =
      __$$DeleteChatImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int chatId});
}

/// @nodoc
class __$$DeleteChatImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$DeleteChatImpl>
    implements _$$DeleteChatImplCopyWith<$Res> {
  __$$DeleteChatImplCopyWithImpl(
      _$DeleteChatImpl _value, $Res Function(_$DeleteChatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
  }) {
    return _then(_$DeleteChatImpl(
      null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteChatImpl implements _DeleteChat {
  const _$DeleteChatImpl(this.chatId);

  @override
  final int chatId;

  @override
  String toString() {
    return 'ChatEvent.deleteChat(chatId: $chatId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteChatImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteChatImplCopyWith<_$DeleteChatImpl> get copyWith =>
      __$$DeleteChatImplCopyWithImpl<_$DeleteChatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() createNewChat,
    required TResult Function(int chatId) deleteChat,
    required TResult Function(String identifier) updateIdentifier,
    required TResult Function(int chatId) selectChat,
    required TResult Function(Chat chat, String title) editChat,
  }) {
    return deleteChat(chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? createNewChat,
    TResult? Function(int chatId)? deleteChat,
    TResult? Function(String identifier)? updateIdentifier,
    TResult? Function(int chatId)? selectChat,
    TResult? Function(Chat chat, String title)? editChat,
  }) {
    return deleteChat?.call(chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? createNewChat,
    TResult Function(int chatId)? deleteChat,
    TResult Function(String identifier)? updateIdentifier,
    TResult Function(int chatId)? selectChat,
    TResult Function(Chat chat, String title)? editChat,
    required TResult orElse(),
  }) {
    if (deleteChat != null) {
      return deleteChat(chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateNewChat value) createNewChat,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_UpdateIdentifier value) updateIdentifier,
    required TResult Function(_SelectChat value) selectChat,
    required TResult Function(_EditChat value) editChat,
  }) {
    return deleteChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateNewChat value)? createNewChat,
    TResult? Function(_DeleteChat value)? deleteChat,
    TResult? Function(_UpdateIdentifier value)? updateIdentifier,
    TResult? Function(_SelectChat value)? selectChat,
    TResult? Function(_EditChat value)? editChat,
  }) {
    return deleteChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateNewChat value)? createNewChat,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_UpdateIdentifier value)? updateIdentifier,
    TResult Function(_SelectChat value)? selectChat,
    TResult Function(_EditChat value)? editChat,
    required TResult orElse(),
  }) {
    if (deleteChat != null) {
      return deleteChat(this);
    }
    return orElse();
  }
}

abstract class _DeleteChat implements ChatEvent {
  const factory _DeleteChat(final int chatId) = _$DeleteChatImpl;

  int get chatId;
  @JsonKey(ignore: true)
  _$$DeleteChatImplCopyWith<_$DeleteChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateIdentifierImplCopyWith<$Res> {
  factory _$$UpdateIdentifierImplCopyWith(_$UpdateIdentifierImpl value,
          $Res Function(_$UpdateIdentifierImpl) then) =
      __$$UpdateIdentifierImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String identifier});
}

/// @nodoc
class __$$UpdateIdentifierImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$UpdateIdentifierImpl>
    implements _$$UpdateIdentifierImplCopyWith<$Res> {
  __$$UpdateIdentifierImplCopyWithImpl(_$UpdateIdentifierImpl _value,
      $Res Function(_$UpdateIdentifierImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
  }) {
    return _then(_$UpdateIdentifierImpl(
      null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateIdentifierImpl implements _UpdateIdentifier {
  const _$UpdateIdentifierImpl(this.identifier);

  @override
  final String identifier;

  @override
  String toString() {
    return 'ChatEvent.updateIdentifier(identifier: $identifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateIdentifierImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier));
  }

  @override
  int get hashCode => Object.hash(runtimeType, identifier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateIdentifierImplCopyWith<_$UpdateIdentifierImpl> get copyWith =>
      __$$UpdateIdentifierImplCopyWithImpl<_$UpdateIdentifierImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() createNewChat,
    required TResult Function(int chatId) deleteChat,
    required TResult Function(String identifier) updateIdentifier,
    required TResult Function(int chatId) selectChat,
    required TResult Function(Chat chat, String title) editChat,
  }) {
    return updateIdentifier(identifier);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? createNewChat,
    TResult? Function(int chatId)? deleteChat,
    TResult? Function(String identifier)? updateIdentifier,
    TResult? Function(int chatId)? selectChat,
    TResult? Function(Chat chat, String title)? editChat,
  }) {
    return updateIdentifier?.call(identifier);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? createNewChat,
    TResult Function(int chatId)? deleteChat,
    TResult Function(String identifier)? updateIdentifier,
    TResult Function(int chatId)? selectChat,
    TResult Function(Chat chat, String title)? editChat,
    required TResult orElse(),
  }) {
    if (updateIdentifier != null) {
      return updateIdentifier(identifier);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateNewChat value) createNewChat,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_UpdateIdentifier value) updateIdentifier,
    required TResult Function(_SelectChat value) selectChat,
    required TResult Function(_EditChat value) editChat,
  }) {
    return updateIdentifier(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateNewChat value)? createNewChat,
    TResult? Function(_DeleteChat value)? deleteChat,
    TResult? Function(_UpdateIdentifier value)? updateIdentifier,
    TResult? Function(_SelectChat value)? selectChat,
    TResult? Function(_EditChat value)? editChat,
  }) {
    return updateIdentifier?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateNewChat value)? createNewChat,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_UpdateIdentifier value)? updateIdentifier,
    TResult Function(_SelectChat value)? selectChat,
    TResult Function(_EditChat value)? editChat,
    required TResult orElse(),
  }) {
    if (updateIdentifier != null) {
      return updateIdentifier(this);
    }
    return orElse();
  }
}

abstract class _UpdateIdentifier implements ChatEvent {
  const factory _UpdateIdentifier(final String identifier) =
      _$UpdateIdentifierImpl;

  String get identifier;
  @JsonKey(ignore: true)
  _$$UpdateIdentifierImplCopyWith<_$UpdateIdentifierImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectChatImplCopyWith<$Res> {
  factory _$$SelectChatImplCopyWith(
          _$SelectChatImpl value, $Res Function(_$SelectChatImpl) then) =
      __$$SelectChatImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int chatId});
}

/// @nodoc
class __$$SelectChatImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SelectChatImpl>
    implements _$$SelectChatImplCopyWith<$Res> {
  __$$SelectChatImplCopyWithImpl(
      _$SelectChatImpl _value, $Res Function(_$SelectChatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
  }) {
    return _then(_$SelectChatImpl(
      null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectChatImpl implements _SelectChat {
  const _$SelectChatImpl(this.chatId);

  @override
  final int chatId;

  @override
  String toString() {
    return 'ChatEvent.selectChat(chatId: $chatId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectChatImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectChatImplCopyWith<_$SelectChatImpl> get copyWith =>
      __$$SelectChatImplCopyWithImpl<_$SelectChatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() createNewChat,
    required TResult Function(int chatId) deleteChat,
    required TResult Function(String identifier) updateIdentifier,
    required TResult Function(int chatId) selectChat,
    required TResult Function(Chat chat, String title) editChat,
  }) {
    return selectChat(chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? createNewChat,
    TResult? Function(int chatId)? deleteChat,
    TResult? Function(String identifier)? updateIdentifier,
    TResult? Function(int chatId)? selectChat,
    TResult? Function(Chat chat, String title)? editChat,
  }) {
    return selectChat?.call(chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? createNewChat,
    TResult Function(int chatId)? deleteChat,
    TResult Function(String identifier)? updateIdentifier,
    TResult Function(int chatId)? selectChat,
    TResult Function(Chat chat, String title)? editChat,
    required TResult orElse(),
  }) {
    if (selectChat != null) {
      return selectChat(chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateNewChat value) createNewChat,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_UpdateIdentifier value) updateIdentifier,
    required TResult Function(_SelectChat value) selectChat,
    required TResult Function(_EditChat value) editChat,
  }) {
    return selectChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateNewChat value)? createNewChat,
    TResult? Function(_DeleteChat value)? deleteChat,
    TResult? Function(_UpdateIdentifier value)? updateIdentifier,
    TResult? Function(_SelectChat value)? selectChat,
    TResult? Function(_EditChat value)? editChat,
  }) {
    return selectChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateNewChat value)? createNewChat,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_UpdateIdentifier value)? updateIdentifier,
    TResult Function(_SelectChat value)? selectChat,
    TResult Function(_EditChat value)? editChat,
    required TResult orElse(),
  }) {
    if (selectChat != null) {
      return selectChat(this);
    }
    return orElse();
  }
}

abstract class _SelectChat implements ChatEvent {
  const factory _SelectChat(final int chatId) = _$SelectChatImpl;

  int get chatId;
  @JsonKey(ignore: true)
  _$$SelectChatImplCopyWith<_$SelectChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditChatImplCopyWith<$Res> {
  factory _$$EditChatImplCopyWith(
          _$EditChatImpl value, $Res Function(_$EditChatImpl) then) =
      __$$EditChatImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Chat chat, String title});

  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class __$$EditChatImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$EditChatImpl>
    implements _$$EditChatImplCopyWith<$Res> {
  __$$EditChatImplCopyWithImpl(
      _$EditChatImpl _value, $Res Function(_$EditChatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
    Object? title = null,
  }) {
    return _then(_$EditChatImpl(
      null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value));
    });
  }
}

/// @nodoc

class _$EditChatImpl implements _EditChat {
  const _$EditChatImpl(this.chat, this.title);

  @override
  final Chat chat;
  @override
  final String title;

  @override
  String toString() {
    return 'ChatEvent.editChat(chat: $chat, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditChatImpl &&
            (identical(other.chat, chat) || other.chat == chat) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chat, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditChatImplCopyWith<_$EditChatImpl> get copyWith =>
      __$$EditChatImplCopyWithImpl<_$EditChatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() createNewChat,
    required TResult Function(int chatId) deleteChat,
    required TResult Function(String identifier) updateIdentifier,
    required TResult Function(int chatId) selectChat,
    required TResult Function(Chat chat, String title) editChat,
  }) {
    return editChat(chat, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? createNewChat,
    TResult? Function(int chatId)? deleteChat,
    TResult? Function(String identifier)? updateIdentifier,
    TResult? Function(int chatId)? selectChat,
    TResult? Function(Chat chat, String title)? editChat,
  }) {
    return editChat?.call(chat, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? createNewChat,
    TResult Function(int chatId)? deleteChat,
    TResult Function(String identifier)? updateIdentifier,
    TResult Function(int chatId)? selectChat,
    TResult Function(Chat chat, String title)? editChat,
    required TResult orElse(),
  }) {
    if (editChat != null) {
      return editChat(chat, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateNewChat value) createNewChat,
    required TResult Function(_DeleteChat value) deleteChat,
    required TResult Function(_UpdateIdentifier value) updateIdentifier,
    required TResult Function(_SelectChat value) selectChat,
    required TResult Function(_EditChat value) editChat,
  }) {
    return editChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateNewChat value)? createNewChat,
    TResult? Function(_DeleteChat value)? deleteChat,
    TResult? Function(_UpdateIdentifier value)? updateIdentifier,
    TResult? Function(_SelectChat value)? selectChat,
    TResult? Function(_EditChat value)? editChat,
  }) {
    return editChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateNewChat value)? createNewChat,
    TResult Function(_DeleteChat value)? deleteChat,
    TResult Function(_UpdateIdentifier value)? updateIdentifier,
    TResult Function(_SelectChat value)? selectChat,
    TResult Function(_EditChat value)? editChat,
    required TResult orElse(),
  }) {
    if (editChat != null) {
      return editChat(this);
    }
    return orElse();
  }
}

abstract class _EditChat implements ChatEvent {
  const factory _EditChat(final Chat chat, final String title) = _$EditChatImpl;

  Chat get chat;
  String get title;
  @JsonKey(ignore: true)
  _$$EditChatImplCopyWith<_$EditChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  ChatModelState get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModelState data) initial,
    required TResult Function(ChatModelState data) loading,
    required TResult Function(ChatModelState data) loadChatSuccess,
    required TResult Function(ChatModelState data) deleteChatSuccess,
    required TResult Function(ChatModelState data, String message)
        deleteChatFailed,
    required TResult Function(ChatModelState data) createChatSuccess,
    required TResult Function(ChatModelState data, String message)
        createChatFailed,
    required TResult Function(
            ChatModelState data, String message, String? identifier)
        expiredSubscription,
    required TResult Function(ChatModelState data, bool isExpiredSubscription)
        updateIdentifierSuccess,
    required TResult Function(ChatModelState data, int chatId)
        selectChatSuccess,
    required TResult Function(ChatModelState data, String message)
        selectChatFailed,
    required TResult Function(ChatModelState data) editChatSuccess,
    required TResult Function(ChatModelState data) editChatFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModelState data)? initial,
    TResult? Function(ChatModelState data)? loading,
    TResult? Function(ChatModelState data)? loadChatSuccess,
    TResult? Function(ChatModelState data)? deleteChatSuccess,
    TResult? Function(ChatModelState data, String message)? deleteChatFailed,
    TResult? Function(ChatModelState data)? createChatSuccess,
    TResult? Function(ChatModelState data, String message)? createChatFailed,
    TResult? Function(ChatModelState data, String message, String? identifier)?
        expiredSubscription,
    TResult? Function(ChatModelState data, bool isExpiredSubscription)?
        updateIdentifierSuccess,
    TResult? Function(ChatModelState data, int chatId)? selectChatSuccess,
    TResult? Function(ChatModelState data, String message)? selectChatFailed,
    TResult? Function(ChatModelState data)? editChatSuccess,
    TResult? Function(ChatModelState data)? editChatFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModelState data)? initial,
    TResult Function(ChatModelState data)? loading,
    TResult Function(ChatModelState data)? loadChatSuccess,
    TResult Function(ChatModelState data)? deleteChatSuccess,
    TResult Function(ChatModelState data, String message)? deleteChatFailed,
    TResult Function(ChatModelState data)? createChatSuccess,
    TResult Function(ChatModelState data, String message)? createChatFailed,
    TResult Function(ChatModelState data, String message, String? identifier)?
        expiredSubscription,
    TResult Function(ChatModelState data, bool isExpiredSubscription)?
        updateIdentifierSuccess,
    TResult Function(ChatModelState data, int chatId)? selectChatSuccess,
    TResult Function(ChatModelState data, String message)? selectChatFailed,
    TResult Function(ChatModelState data)? editChatSuccess,
    TResult Function(ChatModelState data)? editChatFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadChatSuccess value) loadChatSuccess,
    required TResult Function(_DeleteChatSuccess value) deleteChatSuccess,
    required TResult Function(_DeleteChatFailed value) deleteChatFailed,
    required TResult Function(_CreateChatSuccess value) createChatSuccess,
    required TResult Function(_CreateChatFailed value) createChatFailed,
    required TResult Function(_ExpiredSubscription value) expiredSubscription,
    required TResult Function(_UpdateIdentifierSuccess value)
        updateIdentifierSuccess,
    required TResult Function(_SelectChatSuccess value) selectChatSuccess,
    required TResult Function(_SelectChatFailed value) selectChatFailed,
    required TResult Function(_EditChatSuccess value) editChatSuccess,
    required TResult Function(_EditChatFailed value) editChatFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadChatSuccess value)? loadChatSuccess,
    TResult? Function(_DeleteChatSuccess value)? deleteChatSuccess,
    TResult? Function(_DeleteChatFailed value)? deleteChatFailed,
    TResult? Function(_CreateChatSuccess value)? createChatSuccess,
    TResult? Function(_CreateChatFailed value)? createChatFailed,
    TResult? Function(_ExpiredSubscription value)? expiredSubscription,
    TResult? Function(_UpdateIdentifierSuccess value)? updateIdentifierSuccess,
    TResult? Function(_SelectChatSuccess value)? selectChatSuccess,
    TResult? Function(_SelectChatFailed value)? selectChatFailed,
    TResult? Function(_EditChatSuccess value)? editChatSuccess,
    TResult? Function(_EditChatFailed value)? editChatFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadChatSuccess value)? loadChatSuccess,
    TResult Function(_DeleteChatSuccess value)? deleteChatSuccess,
    TResult Function(_DeleteChatFailed value)? deleteChatFailed,
    TResult Function(_CreateChatSuccess value)? createChatSuccess,
    TResult Function(_CreateChatFailed value)? createChatFailed,
    TResult Function(_ExpiredSubscription value)? expiredSubscription,
    TResult Function(_UpdateIdentifierSuccess value)? updateIdentifierSuccess,
    TResult Function(_SelectChatSuccess value)? selectChatSuccess,
    TResult Function(_SelectChatFailed value)? selectChatFailed,
    TResult Function(_EditChatSuccess value)? editChatSuccess,
    TResult Function(_EditChatFailed value)? editChatFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call({ChatModelState data});

  $ChatModelStateCopyWith<$Res> get data;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChatModelState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatModelStateCopyWith<$Res> get data {
    return $ChatModelStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatModelState data});

  @override
  $ChatModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$InitialImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChatModelState,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required this.data});

  @override
  final ChatModelState data;

  @override
  String toString() {
    return 'ChatState.initial(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModelState data) initial,
    required TResult Function(ChatModelState data) loading,
    required TResult Function(ChatModelState data) loadChatSuccess,
    required TResult Function(ChatModelState data) deleteChatSuccess,
    required TResult Function(ChatModelState data, String message)
        deleteChatFailed,
    required TResult Function(ChatModelState data) createChatSuccess,
    required TResult Function(ChatModelState data, String message)
        createChatFailed,
    required TResult Function(
            ChatModelState data, String message, String? identifier)
        expiredSubscription,
    required TResult Function(ChatModelState data, bool isExpiredSubscription)
        updateIdentifierSuccess,
    required TResult Function(ChatModelState data, int chatId)
        selectChatSuccess,
    required TResult Function(ChatModelState data, String message)
        selectChatFailed,
    required TResult Function(ChatModelState data) editChatSuccess,
    required TResult Function(ChatModelState data) editChatFailed,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModelState data)? initial,
    TResult? Function(ChatModelState data)? loading,
    TResult? Function(ChatModelState data)? loadChatSuccess,
    TResult? Function(ChatModelState data)? deleteChatSuccess,
    TResult? Function(ChatModelState data, String message)? deleteChatFailed,
    TResult? Function(ChatModelState data)? createChatSuccess,
    TResult? Function(ChatModelState data, String message)? createChatFailed,
    TResult? Function(ChatModelState data, String message, String? identifier)?
        expiredSubscription,
    TResult? Function(ChatModelState data, bool isExpiredSubscription)?
        updateIdentifierSuccess,
    TResult? Function(ChatModelState data, int chatId)? selectChatSuccess,
    TResult? Function(ChatModelState data, String message)? selectChatFailed,
    TResult? Function(ChatModelState data)? editChatSuccess,
    TResult? Function(ChatModelState data)? editChatFailed,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModelState data)? initial,
    TResult Function(ChatModelState data)? loading,
    TResult Function(ChatModelState data)? loadChatSuccess,
    TResult Function(ChatModelState data)? deleteChatSuccess,
    TResult Function(ChatModelState data, String message)? deleteChatFailed,
    TResult Function(ChatModelState data)? createChatSuccess,
    TResult Function(ChatModelState data, String message)? createChatFailed,
    TResult Function(ChatModelState data, String message, String? identifier)?
        expiredSubscription,
    TResult Function(ChatModelState data, bool isExpiredSubscription)?
        updateIdentifierSuccess,
    TResult Function(ChatModelState data, int chatId)? selectChatSuccess,
    TResult Function(ChatModelState data, String message)? selectChatFailed,
    TResult Function(ChatModelState data)? editChatSuccess,
    TResult Function(ChatModelState data)? editChatFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadChatSuccess value) loadChatSuccess,
    required TResult Function(_DeleteChatSuccess value) deleteChatSuccess,
    required TResult Function(_DeleteChatFailed value) deleteChatFailed,
    required TResult Function(_CreateChatSuccess value) createChatSuccess,
    required TResult Function(_CreateChatFailed value) createChatFailed,
    required TResult Function(_ExpiredSubscription value) expiredSubscription,
    required TResult Function(_UpdateIdentifierSuccess value)
        updateIdentifierSuccess,
    required TResult Function(_SelectChatSuccess value) selectChatSuccess,
    required TResult Function(_SelectChatFailed value) selectChatFailed,
    required TResult Function(_EditChatSuccess value) editChatSuccess,
    required TResult Function(_EditChatFailed value) editChatFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadChatSuccess value)? loadChatSuccess,
    TResult? Function(_DeleteChatSuccess value)? deleteChatSuccess,
    TResult? Function(_DeleteChatFailed value)? deleteChatFailed,
    TResult? Function(_CreateChatSuccess value)? createChatSuccess,
    TResult? Function(_CreateChatFailed value)? createChatFailed,
    TResult? Function(_ExpiredSubscription value)? expiredSubscription,
    TResult? Function(_UpdateIdentifierSuccess value)? updateIdentifierSuccess,
    TResult? Function(_SelectChatSuccess value)? selectChatSuccess,
    TResult? Function(_SelectChatFailed value)? selectChatFailed,
    TResult? Function(_EditChatSuccess value)? editChatSuccess,
    TResult? Function(_EditChatFailed value)? editChatFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadChatSuccess value)? loadChatSuccess,
    TResult Function(_DeleteChatSuccess value)? deleteChatSuccess,
    TResult Function(_DeleteChatFailed value)? deleteChatFailed,
    TResult Function(_CreateChatSuccess value)? createChatSuccess,
    TResult Function(_CreateChatFailed value)? createChatFailed,
    TResult Function(_ExpiredSubscription value)? expiredSubscription,
    TResult Function(_UpdateIdentifierSuccess value)? updateIdentifierSuccess,
    TResult Function(_SelectChatSuccess value)? selectChatSuccess,
    TResult Function(_SelectChatFailed value)? selectChatFailed,
    TResult Function(_EditChatSuccess value)? editChatSuccess,
    TResult Function(_EditChatFailed value)? editChatFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChatState {
  const factory _Initial({required final ChatModelState data}) = _$InitialImpl;

  @override
  ChatModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatModelState data});

  @override
  $ChatModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadingImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChatModelState,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl({required this.data});

  @override
  final ChatModelState data;

  @override
  String toString() {
    return 'ChatState.loading(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModelState data) initial,
    required TResult Function(ChatModelState data) loading,
    required TResult Function(ChatModelState data) loadChatSuccess,
    required TResult Function(ChatModelState data) deleteChatSuccess,
    required TResult Function(ChatModelState data, String message)
        deleteChatFailed,
    required TResult Function(ChatModelState data) createChatSuccess,
    required TResult Function(ChatModelState data, String message)
        createChatFailed,
    required TResult Function(
            ChatModelState data, String message, String? identifier)
        expiredSubscription,
    required TResult Function(ChatModelState data, bool isExpiredSubscription)
        updateIdentifierSuccess,
    required TResult Function(ChatModelState data, int chatId)
        selectChatSuccess,
    required TResult Function(ChatModelState data, String message)
        selectChatFailed,
    required TResult Function(ChatModelState data) editChatSuccess,
    required TResult Function(ChatModelState data) editChatFailed,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModelState data)? initial,
    TResult? Function(ChatModelState data)? loading,
    TResult? Function(ChatModelState data)? loadChatSuccess,
    TResult? Function(ChatModelState data)? deleteChatSuccess,
    TResult? Function(ChatModelState data, String message)? deleteChatFailed,
    TResult? Function(ChatModelState data)? createChatSuccess,
    TResult? Function(ChatModelState data, String message)? createChatFailed,
    TResult? Function(ChatModelState data, String message, String? identifier)?
        expiredSubscription,
    TResult? Function(ChatModelState data, bool isExpiredSubscription)?
        updateIdentifierSuccess,
    TResult? Function(ChatModelState data, int chatId)? selectChatSuccess,
    TResult? Function(ChatModelState data, String message)? selectChatFailed,
    TResult? Function(ChatModelState data)? editChatSuccess,
    TResult? Function(ChatModelState data)? editChatFailed,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModelState data)? initial,
    TResult Function(ChatModelState data)? loading,
    TResult Function(ChatModelState data)? loadChatSuccess,
    TResult Function(ChatModelState data)? deleteChatSuccess,
    TResult Function(ChatModelState data, String message)? deleteChatFailed,
    TResult Function(ChatModelState data)? createChatSuccess,
    TResult Function(ChatModelState data, String message)? createChatFailed,
    TResult Function(ChatModelState data, String message, String? identifier)?
        expiredSubscription,
    TResult Function(ChatModelState data, bool isExpiredSubscription)?
        updateIdentifierSuccess,
    TResult Function(ChatModelState data, int chatId)? selectChatSuccess,
    TResult Function(ChatModelState data, String message)? selectChatFailed,
    TResult Function(ChatModelState data)? editChatSuccess,
    TResult Function(ChatModelState data)? editChatFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadChatSuccess value) loadChatSuccess,
    required TResult Function(_DeleteChatSuccess value) deleteChatSuccess,
    required TResult Function(_DeleteChatFailed value) deleteChatFailed,
    required TResult Function(_CreateChatSuccess value) createChatSuccess,
    required TResult Function(_CreateChatFailed value) createChatFailed,
    required TResult Function(_ExpiredSubscription value) expiredSubscription,
    required TResult Function(_UpdateIdentifierSuccess value)
        updateIdentifierSuccess,
    required TResult Function(_SelectChatSuccess value) selectChatSuccess,
    required TResult Function(_SelectChatFailed value) selectChatFailed,
    required TResult Function(_EditChatSuccess value) editChatSuccess,
    required TResult Function(_EditChatFailed value) editChatFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadChatSuccess value)? loadChatSuccess,
    TResult? Function(_DeleteChatSuccess value)? deleteChatSuccess,
    TResult? Function(_DeleteChatFailed value)? deleteChatFailed,
    TResult? Function(_CreateChatSuccess value)? createChatSuccess,
    TResult? Function(_CreateChatFailed value)? createChatFailed,
    TResult? Function(_ExpiredSubscription value)? expiredSubscription,
    TResult? Function(_UpdateIdentifierSuccess value)? updateIdentifierSuccess,
    TResult? Function(_SelectChatSuccess value)? selectChatSuccess,
    TResult? Function(_SelectChatFailed value)? selectChatFailed,
    TResult? Function(_EditChatSuccess value)? editChatSuccess,
    TResult? Function(_EditChatFailed value)? editChatFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadChatSuccess value)? loadChatSuccess,
    TResult Function(_DeleteChatSuccess value)? deleteChatSuccess,
    TResult Function(_DeleteChatFailed value)? deleteChatFailed,
    TResult Function(_CreateChatSuccess value)? createChatSuccess,
    TResult Function(_CreateChatFailed value)? createChatFailed,
    TResult Function(_ExpiredSubscription value)? expiredSubscription,
    TResult Function(_UpdateIdentifierSuccess value)? updateIdentifierSuccess,
    TResult Function(_SelectChatSuccess value)? selectChatSuccess,
    TResult Function(_SelectChatFailed value)? selectChatFailed,
    TResult Function(_EditChatSuccess value)? editChatSuccess,
    TResult Function(_EditChatFailed value)? editChatFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ChatState {
  const factory _Loading({required final ChatModelState data}) = _$LoadingImpl;

  @override
  ChatModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadChatSuccessImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$LoadChatSuccessImplCopyWith(_$LoadChatSuccessImpl value,
          $Res Function(_$LoadChatSuccessImpl) then) =
      __$$LoadChatSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatModelState data});

  @override
  $ChatModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoadChatSuccessImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$LoadChatSuccessImpl>
    implements _$$LoadChatSuccessImplCopyWith<$Res> {
  __$$LoadChatSuccessImplCopyWithImpl(
      _$LoadChatSuccessImpl _value, $Res Function(_$LoadChatSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadChatSuccessImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChatModelState,
    ));
  }
}

/// @nodoc

class _$LoadChatSuccessImpl implements _LoadChatSuccess {
  const _$LoadChatSuccessImpl({required this.data});

  @override
  final ChatModelState data;

  @override
  String toString() {
    return 'ChatState.loadChatSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadChatSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadChatSuccessImplCopyWith<_$LoadChatSuccessImpl> get copyWith =>
      __$$LoadChatSuccessImplCopyWithImpl<_$LoadChatSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModelState data) initial,
    required TResult Function(ChatModelState data) loading,
    required TResult Function(ChatModelState data) loadChatSuccess,
    required TResult Function(ChatModelState data) deleteChatSuccess,
    required TResult Function(ChatModelState data, String message)
        deleteChatFailed,
    required TResult Function(ChatModelState data) createChatSuccess,
    required TResult Function(ChatModelState data, String message)
        createChatFailed,
    required TResult Function(
            ChatModelState data, String message, String? identifier)
        expiredSubscription,
    required TResult Function(ChatModelState data, bool isExpiredSubscription)
        updateIdentifierSuccess,
    required TResult Function(ChatModelState data, int chatId)
        selectChatSuccess,
    required TResult Function(ChatModelState data, String message)
        selectChatFailed,
    required TResult Function(ChatModelState data) editChatSuccess,
    required TResult Function(ChatModelState data) editChatFailed,
  }) {
    return loadChatSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModelState data)? initial,
    TResult? Function(ChatModelState data)? loading,
    TResult? Function(ChatModelState data)? loadChatSuccess,
    TResult? Function(ChatModelState data)? deleteChatSuccess,
    TResult? Function(ChatModelState data, String message)? deleteChatFailed,
    TResult? Function(ChatModelState data)? createChatSuccess,
    TResult? Function(ChatModelState data, String message)? createChatFailed,
    TResult? Function(ChatModelState data, String message, String? identifier)?
        expiredSubscription,
    TResult? Function(ChatModelState data, bool isExpiredSubscription)?
        updateIdentifierSuccess,
    TResult? Function(ChatModelState data, int chatId)? selectChatSuccess,
    TResult? Function(ChatModelState data, String message)? selectChatFailed,
    TResult? Function(ChatModelState data)? editChatSuccess,
    TResult? Function(ChatModelState data)? editChatFailed,
  }) {
    return loadChatSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModelState data)? initial,
    TResult Function(ChatModelState data)? loading,
    TResult Function(ChatModelState data)? loadChatSuccess,
    TResult Function(ChatModelState data)? deleteChatSuccess,
    TResult Function(ChatModelState data, String message)? deleteChatFailed,
    TResult Function(ChatModelState data)? createChatSuccess,
    TResult Function(ChatModelState data, String message)? createChatFailed,
    TResult Function(ChatModelState data, String message, String? identifier)?
        expiredSubscription,
    TResult Function(ChatModelState data, bool isExpiredSubscription)?
        updateIdentifierSuccess,
    TResult Function(ChatModelState data, int chatId)? selectChatSuccess,
    TResult Function(ChatModelState data, String message)? selectChatFailed,
    TResult Function(ChatModelState data)? editChatSuccess,
    TResult Function(ChatModelState data)? editChatFailed,
    required TResult orElse(),
  }) {
    if (loadChatSuccess != null) {
      return loadChatSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadChatSuccess value) loadChatSuccess,
    required TResult Function(_DeleteChatSuccess value) deleteChatSuccess,
    required TResult Function(_DeleteChatFailed value) deleteChatFailed,
    required TResult Function(_CreateChatSuccess value) createChatSuccess,
    required TResult Function(_CreateChatFailed value) createChatFailed,
    required TResult Function(_ExpiredSubscription value) expiredSubscription,
    required TResult Function(_UpdateIdentifierSuccess value)
        updateIdentifierSuccess,
    required TResult Function(_SelectChatSuccess value) selectChatSuccess,
    required TResult Function(_SelectChatFailed value) selectChatFailed,
    required TResult Function(_EditChatSuccess value) editChatSuccess,
    required TResult Function(_EditChatFailed value) editChatFailed,
  }) {
    return loadChatSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadChatSuccess value)? loadChatSuccess,
    TResult? Function(_DeleteChatSuccess value)? deleteChatSuccess,
    TResult? Function(_DeleteChatFailed value)? deleteChatFailed,
    TResult? Function(_CreateChatSuccess value)? createChatSuccess,
    TResult? Function(_CreateChatFailed value)? createChatFailed,
    TResult? Function(_ExpiredSubscription value)? expiredSubscription,
    TResult? Function(_UpdateIdentifierSuccess value)? updateIdentifierSuccess,
    TResult? Function(_SelectChatSuccess value)? selectChatSuccess,
    TResult? Function(_SelectChatFailed value)? selectChatFailed,
    TResult? Function(_EditChatSuccess value)? editChatSuccess,
    TResult? Function(_EditChatFailed value)? editChatFailed,
  }) {
    return loadChatSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadChatSuccess value)? loadChatSuccess,
    TResult Function(_DeleteChatSuccess value)? deleteChatSuccess,
    TResult Function(_DeleteChatFailed value)? deleteChatFailed,
    TResult Function(_CreateChatSuccess value)? createChatSuccess,
    TResult Function(_CreateChatFailed value)? createChatFailed,
    TResult Function(_ExpiredSubscription value)? expiredSubscription,
    TResult Function(_UpdateIdentifierSuccess value)? updateIdentifierSuccess,
    TResult Function(_SelectChatSuccess value)? selectChatSuccess,
    TResult Function(_SelectChatFailed value)? selectChatFailed,
    TResult Function(_EditChatSuccess value)? editChatSuccess,
    TResult Function(_EditChatFailed value)? editChatFailed,
    required TResult orElse(),
  }) {
    if (loadChatSuccess != null) {
      return loadChatSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadChatSuccess implements ChatState {
  const factory _LoadChatSuccess({required final ChatModelState data}) =
      _$LoadChatSuccessImpl;

  @override
  ChatModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$LoadChatSuccessImplCopyWith<_$LoadChatSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteChatSuccessImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$DeleteChatSuccessImplCopyWith(_$DeleteChatSuccessImpl value,
          $Res Function(_$DeleteChatSuccessImpl) then) =
      __$$DeleteChatSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatModelState data});

  @override
  $ChatModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$DeleteChatSuccessImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$DeleteChatSuccessImpl>
    implements _$$DeleteChatSuccessImplCopyWith<$Res> {
  __$$DeleteChatSuccessImplCopyWithImpl(_$DeleteChatSuccessImpl _value,
      $Res Function(_$DeleteChatSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DeleteChatSuccessImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChatModelState,
    ));
  }
}

/// @nodoc

class _$DeleteChatSuccessImpl implements _DeleteChatSuccess {
  const _$DeleteChatSuccessImpl({required this.data});

  @override
  final ChatModelState data;

  @override
  String toString() {
    return 'ChatState.deleteChatSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteChatSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteChatSuccessImplCopyWith<_$DeleteChatSuccessImpl> get copyWith =>
      __$$DeleteChatSuccessImplCopyWithImpl<_$DeleteChatSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModelState data) initial,
    required TResult Function(ChatModelState data) loading,
    required TResult Function(ChatModelState data) loadChatSuccess,
    required TResult Function(ChatModelState data) deleteChatSuccess,
    required TResult Function(ChatModelState data, String message)
        deleteChatFailed,
    required TResult Function(ChatModelState data) createChatSuccess,
    required TResult Function(ChatModelState data, String message)
        createChatFailed,
    required TResult Function(
            ChatModelState data, String message, String? identifier)
        expiredSubscription,
    required TResult Function(ChatModelState data, bool isExpiredSubscription)
        updateIdentifierSuccess,
    required TResult Function(ChatModelState data, int chatId)
        selectChatSuccess,
    required TResult Function(ChatModelState data, String message)
        selectChatFailed,
    required TResult Function(ChatModelState data) editChatSuccess,
    required TResult Function(ChatModelState data) editChatFailed,
  }) {
    return deleteChatSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModelState data)? initial,
    TResult? Function(ChatModelState data)? loading,
    TResult? Function(ChatModelState data)? loadChatSuccess,
    TResult? Function(ChatModelState data)? deleteChatSuccess,
    TResult? Function(ChatModelState data, String message)? deleteChatFailed,
    TResult? Function(ChatModelState data)? createChatSuccess,
    TResult? Function(ChatModelState data, String message)? createChatFailed,
    TResult? Function(ChatModelState data, String message, String? identifier)?
        expiredSubscription,
    TResult? Function(ChatModelState data, bool isExpiredSubscription)?
        updateIdentifierSuccess,
    TResult? Function(ChatModelState data, int chatId)? selectChatSuccess,
    TResult? Function(ChatModelState data, String message)? selectChatFailed,
    TResult? Function(ChatModelState data)? editChatSuccess,
    TResult? Function(ChatModelState data)? editChatFailed,
  }) {
    return deleteChatSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModelState data)? initial,
    TResult Function(ChatModelState data)? loading,
    TResult Function(ChatModelState data)? loadChatSuccess,
    TResult Function(ChatModelState data)? deleteChatSuccess,
    TResult Function(ChatModelState data, String message)? deleteChatFailed,
    TResult Function(ChatModelState data)? createChatSuccess,
    TResult Function(ChatModelState data, String message)? createChatFailed,
    TResult Function(ChatModelState data, String message, String? identifier)?
        expiredSubscription,
    TResult Function(ChatModelState data, bool isExpiredSubscription)?
        updateIdentifierSuccess,
    TResult Function(ChatModelState data, int chatId)? selectChatSuccess,
    TResult Function(ChatModelState data, String message)? selectChatFailed,
    TResult Function(ChatModelState data)? editChatSuccess,
    TResult Function(ChatModelState data)? editChatFailed,
    required TResult orElse(),
  }) {
    if (deleteChatSuccess != null) {
      return deleteChatSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadChatSuccess value) loadChatSuccess,
    required TResult Function(_DeleteChatSuccess value) deleteChatSuccess,
    required TResult Function(_DeleteChatFailed value) deleteChatFailed,
    required TResult Function(_CreateChatSuccess value) createChatSuccess,
    required TResult Function(_CreateChatFailed value) createChatFailed,
    required TResult Function(_ExpiredSubscription value) expiredSubscription,
    required TResult Function(_UpdateIdentifierSuccess value)
        updateIdentifierSuccess,
    required TResult Function(_SelectChatSuccess value) selectChatSuccess,
    required TResult Function(_SelectChatFailed value) selectChatFailed,
    required TResult Function(_EditChatSuccess value) editChatSuccess,
    required TResult Function(_EditChatFailed value) editChatFailed,
  }) {
    return deleteChatSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadChatSuccess value)? loadChatSuccess,
    TResult? Function(_DeleteChatSuccess value)? deleteChatSuccess,
    TResult? Function(_DeleteChatFailed value)? deleteChatFailed,
    TResult? Function(_CreateChatSuccess value)? createChatSuccess,
    TResult? Function(_CreateChatFailed value)? createChatFailed,
    TResult? Function(_ExpiredSubscription value)? expiredSubscription,
    TResult? Function(_UpdateIdentifierSuccess value)? updateIdentifierSuccess,
    TResult? Function(_SelectChatSuccess value)? selectChatSuccess,
    TResult? Function(_SelectChatFailed value)? selectChatFailed,
    TResult? Function(_EditChatSuccess value)? editChatSuccess,
    TResult? Function(_EditChatFailed value)? editChatFailed,
  }) {
    return deleteChatSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadChatSuccess value)? loadChatSuccess,
    TResult Function(_DeleteChatSuccess value)? deleteChatSuccess,
    TResult Function(_DeleteChatFailed value)? deleteChatFailed,
    TResult Function(_CreateChatSuccess value)? createChatSuccess,
    TResult Function(_CreateChatFailed value)? createChatFailed,
    TResult Function(_ExpiredSubscription value)? expiredSubscription,
    TResult Function(_UpdateIdentifierSuccess value)? updateIdentifierSuccess,
    TResult Function(_SelectChatSuccess value)? selectChatSuccess,
    TResult Function(_SelectChatFailed value)? selectChatFailed,
    TResult Function(_EditChatSuccess value)? editChatSuccess,
    TResult Function(_EditChatFailed value)? editChatFailed,
    required TResult orElse(),
  }) {
    if (deleteChatSuccess != null) {
      return deleteChatSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteChatSuccess implements ChatState {
  const factory _DeleteChatSuccess({required final ChatModelState data}) =
      _$DeleteChatSuccessImpl;

  @override
  ChatModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$DeleteChatSuccessImplCopyWith<_$DeleteChatSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteChatFailedImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$DeleteChatFailedImplCopyWith(_$DeleteChatFailedImpl value,
          $Res Function(_$DeleteChatFailedImpl) then) =
      __$$DeleteChatFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatModelState data, String message});

  @override
  $ChatModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$DeleteChatFailedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$DeleteChatFailedImpl>
    implements _$$DeleteChatFailedImplCopyWith<$Res> {
  __$$DeleteChatFailedImplCopyWithImpl(_$DeleteChatFailedImpl _value,
      $Res Function(_$DeleteChatFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$DeleteChatFailedImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChatModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteChatFailedImpl implements _DeleteChatFailed {
  const _$DeleteChatFailedImpl({required this.data, required this.message});

  @override
  final ChatModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'ChatState.deleteChatFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteChatFailedImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteChatFailedImplCopyWith<_$DeleteChatFailedImpl> get copyWith =>
      __$$DeleteChatFailedImplCopyWithImpl<_$DeleteChatFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModelState data) initial,
    required TResult Function(ChatModelState data) loading,
    required TResult Function(ChatModelState data) loadChatSuccess,
    required TResult Function(ChatModelState data) deleteChatSuccess,
    required TResult Function(ChatModelState data, String message)
        deleteChatFailed,
    required TResult Function(ChatModelState data) createChatSuccess,
    required TResult Function(ChatModelState data, String message)
        createChatFailed,
    required TResult Function(
            ChatModelState data, String message, String? identifier)
        expiredSubscription,
    required TResult Function(ChatModelState data, bool isExpiredSubscription)
        updateIdentifierSuccess,
    required TResult Function(ChatModelState data, int chatId)
        selectChatSuccess,
    required TResult Function(ChatModelState data, String message)
        selectChatFailed,
    required TResult Function(ChatModelState data) editChatSuccess,
    required TResult Function(ChatModelState data) editChatFailed,
  }) {
    return deleteChatFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModelState data)? initial,
    TResult? Function(ChatModelState data)? loading,
    TResult? Function(ChatModelState data)? loadChatSuccess,
    TResult? Function(ChatModelState data)? deleteChatSuccess,
    TResult? Function(ChatModelState data, String message)? deleteChatFailed,
    TResult? Function(ChatModelState data)? createChatSuccess,
    TResult? Function(ChatModelState data, String message)? createChatFailed,
    TResult? Function(ChatModelState data, String message, String? identifier)?
        expiredSubscription,
    TResult? Function(ChatModelState data, bool isExpiredSubscription)?
        updateIdentifierSuccess,
    TResult? Function(ChatModelState data, int chatId)? selectChatSuccess,
    TResult? Function(ChatModelState data, String message)? selectChatFailed,
    TResult? Function(ChatModelState data)? editChatSuccess,
    TResult? Function(ChatModelState data)? editChatFailed,
  }) {
    return deleteChatFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModelState data)? initial,
    TResult Function(ChatModelState data)? loading,
    TResult Function(ChatModelState data)? loadChatSuccess,
    TResult Function(ChatModelState data)? deleteChatSuccess,
    TResult Function(ChatModelState data, String message)? deleteChatFailed,
    TResult Function(ChatModelState data)? createChatSuccess,
    TResult Function(ChatModelState data, String message)? createChatFailed,
    TResult Function(ChatModelState data, String message, String? identifier)?
        expiredSubscription,
    TResult Function(ChatModelState data, bool isExpiredSubscription)?
        updateIdentifierSuccess,
    TResult Function(ChatModelState data, int chatId)? selectChatSuccess,
    TResult Function(ChatModelState data, String message)? selectChatFailed,
    TResult Function(ChatModelState data)? editChatSuccess,
    TResult Function(ChatModelState data)? editChatFailed,
    required TResult orElse(),
  }) {
    if (deleteChatFailed != null) {
      return deleteChatFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadChatSuccess value) loadChatSuccess,
    required TResult Function(_DeleteChatSuccess value) deleteChatSuccess,
    required TResult Function(_DeleteChatFailed value) deleteChatFailed,
    required TResult Function(_CreateChatSuccess value) createChatSuccess,
    required TResult Function(_CreateChatFailed value) createChatFailed,
    required TResult Function(_ExpiredSubscription value) expiredSubscription,
    required TResult Function(_UpdateIdentifierSuccess value)
        updateIdentifierSuccess,
    required TResult Function(_SelectChatSuccess value) selectChatSuccess,
    required TResult Function(_SelectChatFailed value) selectChatFailed,
    required TResult Function(_EditChatSuccess value) editChatSuccess,
    required TResult Function(_EditChatFailed value) editChatFailed,
  }) {
    return deleteChatFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadChatSuccess value)? loadChatSuccess,
    TResult? Function(_DeleteChatSuccess value)? deleteChatSuccess,
    TResult? Function(_DeleteChatFailed value)? deleteChatFailed,
    TResult? Function(_CreateChatSuccess value)? createChatSuccess,
    TResult? Function(_CreateChatFailed value)? createChatFailed,
    TResult? Function(_ExpiredSubscription value)? expiredSubscription,
    TResult? Function(_UpdateIdentifierSuccess value)? updateIdentifierSuccess,
    TResult? Function(_SelectChatSuccess value)? selectChatSuccess,
    TResult? Function(_SelectChatFailed value)? selectChatFailed,
    TResult? Function(_EditChatSuccess value)? editChatSuccess,
    TResult? Function(_EditChatFailed value)? editChatFailed,
  }) {
    return deleteChatFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadChatSuccess value)? loadChatSuccess,
    TResult Function(_DeleteChatSuccess value)? deleteChatSuccess,
    TResult Function(_DeleteChatFailed value)? deleteChatFailed,
    TResult Function(_CreateChatSuccess value)? createChatSuccess,
    TResult Function(_CreateChatFailed value)? createChatFailed,
    TResult Function(_ExpiredSubscription value)? expiredSubscription,
    TResult Function(_UpdateIdentifierSuccess value)? updateIdentifierSuccess,
    TResult Function(_SelectChatSuccess value)? selectChatSuccess,
    TResult Function(_SelectChatFailed value)? selectChatFailed,
    TResult Function(_EditChatSuccess value)? editChatSuccess,
    TResult Function(_EditChatFailed value)? editChatFailed,
    required TResult orElse(),
  }) {
    if (deleteChatFailed != null) {
      return deleteChatFailed(this);
    }
    return orElse();
  }
}

abstract class _DeleteChatFailed implements ChatState {
  const factory _DeleteChatFailed(
      {required final ChatModelState data,
      required final String message}) = _$DeleteChatFailedImpl;

  @override
  ChatModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$DeleteChatFailedImplCopyWith<_$DeleteChatFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateChatSuccessImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$CreateChatSuccessImplCopyWith(_$CreateChatSuccessImpl value,
          $Res Function(_$CreateChatSuccessImpl) then) =
      __$$CreateChatSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatModelState data});

  @override
  $ChatModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$CreateChatSuccessImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$CreateChatSuccessImpl>
    implements _$$CreateChatSuccessImplCopyWith<$Res> {
  __$$CreateChatSuccessImplCopyWithImpl(_$CreateChatSuccessImpl _value,
      $Res Function(_$CreateChatSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CreateChatSuccessImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChatModelState,
    ));
  }
}

/// @nodoc

class _$CreateChatSuccessImpl implements _CreateChatSuccess {
  const _$CreateChatSuccessImpl({required this.data});

  @override
  final ChatModelState data;

  @override
  String toString() {
    return 'ChatState.createChatSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateChatSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateChatSuccessImplCopyWith<_$CreateChatSuccessImpl> get copyWith =>
      __$$CreateChatSuccessImplCopyWithImpl<_$CreateChatSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModelState data) initial,
    required TResult Function(ChatModelState data) loading,
    required TResult Function(ChatModelState data) loadChatSuccess,
    required TResult Function(ChatModelState data) deleteChatSuccess,
    required TResult Function(ChatModelState data, String message)
        deleteChatFailed,
    required TResult Function(ChatModelState data) createChatSuccess,
    required TResult Function(ChatModelState data, String message)
        createChatFailed,
    required TResult Function(
            ChatModelState data, String message, String? identifier)
        expiredSubscription,
    required TResult Function(ChatModelState data, bool isExpiredSubscription)
        updateIdentifierSuccess,
    required TResult Function(ChatModelState data, int chatId)
        selectChatSuccess,
    required TResult Function(ChatModelState data, String message)
        selectChatFailed,
    required TResult Function(ChatModelState data) editChatSuccess,
    required TResult Function(ChatModelState data) editChatFailed,
  }) {
    return createChatSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModelState data)? initial,
    TResult? Function(ChatModelState data)? loading,
    TResult? Function(ChatModelState data)? loadChatSuccess,
    TResult? Function(ChatModelState data)? deleteChatSuccess,
    TResult? Function(ChatModelState data, String message)? deleteChatFailed,
    TResult? Function(ChatModelState data)? createChatSuccess,
    TResult? Function(ChatModelState data, String message)? createChatFailed,
    TResult? Function(ChatModelState data, String message, String? identifier)?
        expiredSubscription,
    TResult? Function(ChatModelState data, bool isExpiredSubscription)?
        updateIdentifierSuccess,
    TResult? Function(ChatModelState data, int chatId)? selectChatSuccess,
    TResult? Function(ChatModelState data, String message)? selectChatFailed,
    TResult? Function(ChatModelState data)? editChatSuccess,
    TResult? Function(ChatModelState data)? editChatFailed,
  }) {
    return createChatSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModelState data)? initial,
    TResult Function(ChatModelState data)? loading,
    TResult Function(ChatModelState data)? loadChatSuccess,
    TResult Function(ChatModelState data)? deleteChatSuccess,
    TResult Function(ChatModelState data, String message)? deleteChatFailed,
    TResult Function(ChatModelState data)? createChatSuccess,
    TResult Function(ChatModelState data, String message)? createChatFailed,
    TResult Function(ChatModelState data, String message, String? identifier)?
        expiredSubscription,
    TResult Function(ChatModelState data, bool isExpiredSubscription)?
        updateIdentifierSuccess,
    TResult Function(ChatModelState data, int chatId)? selectChatSuccess,
    TResult Function(ChatModelState data, String message)? selectChatFailed,
    TResult Function(ChatModelState data)? editChatSuccess,
    TResult Function(ChatModelState data)? editChatFailed,
    required TResult orElse(),
  }) {
    if (createChatSuccess != null) {
      return createChatSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadChatSuccess value) loadChatSuccess,
    required TResult Function(_DeleteChatSuccess value) deleteChatSuccess,
    required TResult Function(_DeleteChatFailed value) deleteChatFailed,
    required TResult Function(_CreateChatSuccess value) createChatSuccess,
    required TResult Function(_CreateChatFailed value) createChatFailed,
    required TResult Function(_ExpiredSubscription value) expiredSubscription,
    required TResult Function(_UpdateIdentifierSuccess value)
        updateIdentifierSuccess,
    required TResult Function(_SelectChatSuccess value) selectChatSuccess,
    required TResult Function(_SelectChatFailed value) selectChatFailed,
    required TResult Function(_EditChatSuccess value) editChatSuccess,
    required TResult Function(_EditChatFailed value) editChatFailed,
  }) {
    return createChatSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadChatSuccess value)? loadChatSuccess,
    TResult? Function(_DeleteChatSuccess value)? deleteChatSuccess,
    TResult? Function(_DeleteChatFailed value)? deleteChatFailed,
    TResult? Function(_CreateChatSuccess value)? createChatSuccess,
    TResult? Function(_CreateChatFailed value)? createChatFailed,
    TResult? Function(_ExpiredSubscription value)? expiredSubscription,
    TResult? Function(_UpdateIdentifierSuccess value)? updateIdentifierSuccess,
    TResult? Function(_SelectChatSuccess value)? selectChatSuccess,
    TResult? Function(_SelectChatFailed value)? selectChatFailed,
    TResult? Function(_EditChatSuccess value)? editChatSuccess,
    TResult? Function(_EditChatFailed value)? editChatFailed,
  }) {
    return createChatSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadChatSuccess value)? loadChatSuccess,
    TResult Function(_DeleteChatSuccess value)? deleteChatSuccess,
    TResult Function(_DeleteChatFailed value)? deleteChatFailed,
    TResult Function(_CreateChatSuccess value)? createChatSuccess,
    TResult Function(_CreateChatFailed value)? createChatFailed,
    TResult Function(_ExpiredSubscription value)? expiredSubscription,
    TResult Function(_UpdateIdentifierSuccess value)? updateIdentifierSuccess,
    TResult Function(_SelectChatSuccess value)? selectChatSuccess,
    TResult Function(_SelectChatFailed value)? selectChatFailed,
    TResult Function(_EditChatSuccess value)? editChatSuccess,
    TResult Function(_EditChatFailed value)? editChatFailed,
    required TResult orElse(),
  }) {
    if (createChatSuccess != null) {
      return createChatSuccess(this);
    }
    return orElse();
  }
}

abstract class _CreateChatSuccess implements ChatState {
  const factory _CreateChatSuccess({required final ChatModelState data}) =
      _$CreateChatSuccessImpl;

  @override
  ChatModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$CreateChatSuccessImplCopyWith<_$CreateChatSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateChatFailedImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$CreateChatFailedImplCopyWith(_$CreateChatFailedImpl value,
          $Res Function(_$CreateChatFailedImpl) then) =
      __$$CreateChatFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatModelState data, String message});

  @override
  $ChatModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$CreateChatFailedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$CreateChatFailedImpl>
    implements _$$CreateChatFailedImplCopyWith<$Res> {
  __$$CreateChatFailedImplCopyWithImpl(_$CreateChatFailedImpl _value,
      $Res Function(_$CreateChatFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$CreateChatFailedImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChatModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateChatFailedImpl implements _CreateChatFailed {
  const _$CreateChatFailedImpl({required this.data, required this.message});

  @override
  final ChatModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'ChatState.createChatFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateChatFailedImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateChatFailedImplCopyWith<_$CreateChatFailedImpl> get copyWith =>
      __$$CreateChatFailedImplCopyWithImpl<_$CreateChatFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModelState data) initial,
    required TResult Function(ChatModelState data) loading,
    required TResult Function(ChatModelState data) loadChatSuccess,
    required TResult Function(ChatModelState data) deleteChatSuccess,
    required TResult Function(ChatModelState data, String message)
        deleteChatFailed,
    required TResult Function(ChatModelState data) createChatSuccess,
    required TResult Function(ChatModelState data, String message)
        createChatFailed,
    required TResult Function(
            ChatModelState data, String message, String? identifier)
        expiredSubscription,
    required TResult Function(ChatModelState data, bool isExpiredSubscription)
        updateIdentifierSuccess,
    required TResult Function(ChatModelState data, int chatId)
        selectChatSuccess,
    required TResult Function(ChatModelState data, String message)
        selectChatFailed,
    required TResult Function(ChatModelState data) editChatSuccess,
    required TResult Function(ChatModelState data) editChatFailed,
  }) {
    return createChatFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModelState data)? initial,
    TResult? Function(ChatModelState data)? loading,
    TResult? Function(ChatModelState data)? loadChatSuccess,
    TResult? Function(ChatModelState data)? deleteChatSuccess,
    TResult? Function(ChatModelState data, String message)? deleteChatFailed,
    TResult? Function(ChatModelState data)? createChatSuccess,
    TResult? Function(ChatModelState data, String message)? createChatFailed,
    TResult? Function(ChatModelState data, String message, String? identifier)?
        expiredSubscription,
    TResult? Function(ChatModelState data, bool isExpiredSubscription)?
        updateIdentifierSuccess,
    TResult? Function(ChatModelState data, int chatId)? selectChatSuccess,
    TResult? Function(ChatModelState data, String message)? selectChatFailed,
    TResult? Function(ChatModelState data)? editChatSuccess,
    TResult? Function(ChatModelState data)? editChatFailed,
  }) {
    return createChatFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModelState data)? initial,
    TResult Function(ChatModelState data)? loading,
    TResult Function(ChatModelState data)? loadChatSuccess,
    TResult Function(ChatModelState data)? deleteChatSuccess,
    TResult Function(ChatModelState data, String message)? deleteChatFailed,
    TResult Function(ChatModelState data)? createChatSuccess,
    TResult Function(ChatModelState data, String message)? createChatFailed,
    TResult Function(ChatModelState data, String message, String? identifier)?
        expiredSubscription,
    TResult Function(ChatModelState data, bool isExpiredSubscription)?
        updateIdentifierSuccess,
    TResult Function(ChatModelState data, int chatId)? selectChatSuccess,
    TResult Function(ChatModelState data, String message)? selectChatFailed,
    TResult Function(ChatModelState data)? editChatSuccess,
    TResult Function(ChatModelState data)? editChatFailed,
    required TResult orElse(),
  }) {
    if (createChatFailed != null) {
      return createChatFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadChatSuccess value) loadChatSuccess,
    required TResult Function(_DeleteChatSuccess value) deleteChatSuccess,
    required TResult Function(_DeleteChatFailed value) deleteChatFailed,
    required TResult Function(_CreateChatSuccess value) createChatSuccess,
    required TResult Function(_CreateChatFailed value) createChatFailed,
    required TResult Function(_ExpiredSubscription value) expiredSubscription,
    required TResult Function(_UpdateIdentifierSuccess value)
        updateIdentifierSuccess,
    required TResult Function(_SelectChatSuccess value) selectChatSuccess,
    required TResult Function(_SelectChatFailed value) selectChatFailed,
    required TResult Function(_EditChatSuccess value) editChatSuccess,
    required TResult Function(_EditChatFailed value) editChatFailed,
  }) {
    return createChatFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadChatSuccess value)? loadChatSuccess,
    TResult? Function(_DeleteChatSuccess value)? deleteChatSuccess,
    TResult? Function(_DeleteChatFailed value)? deleteChatFailed,
    TResult? Function(_CreateChatSuccess value)? createChatSuccess,
    TResult? Function(_CreateChatFailed value)? createChatFailed,
    TResult? Function(_ExpiredSubscription value)? expiredSubscription,
    TResult? Function(_UpdateIdentifierSuccess value)? updateIdentifierSuccess,
    TResult? Function(_SelectChatSuccess value)? selectChatSuccess,
    TResult? Function(_SelectChatFailed value)? selectChatFailed,
    TResult? Function(_EditChatSuccess value)? editChatSuccess,
    TResult? Function(_EditChatFailed value)? editChatFailed,
  }) {
    return createChatFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadChatSuccess value)? loadChatSuccess,
    TResult Function(_DeleteChatSuccess value)? deleteChatSuccess,
    TResult Function(_DeleteChatFailed value)? deleteChatFailed,
    TResult Function(_CreateChatSuccess value)? createChatSuccess,
    TResult Function(_CreateChatFailed value)? createChatFailed,
    TResult Function(_ExpiredSubscription value)? expiredSubscription,
    TResult Function(_UpdateIdentifierSuccess value)? updateIdentifierSuccess,
    TResult Function(_SelectChatSuccess value)? selectChatSuccess,
    TResult Function(_SelectChatFailed value)? selectChatFailed,
    TResult Function(_EditChatSuccess value)? editChatSuccess,
    TResult Function(_EditChatFailed value)? editChatFailed,
    required TResult orElse(),
  }) {
    if (createChatFailed != null) {
      return createChatFailed(this);
    }
    return orElse();
  }
}

abstract class _CreateChatFailed implements ChatState {
  const factory _CreateChatFailed(
      {required final ChatModelState data,
      required final String message}) = _$CreateChatFailedImpl;

  @override
  ChatModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$CreateChatFailedImplCopyWith<_$CreateChatFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpiredSubscriptionImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ExpiredSubscriptionImplCopyWith(_$ExpiredSubscriptionImpl value,
          $Res Function(_$ExpiredSubscriptionImpl) then) =
      __$$ExpiredSubscriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatModelState data, String message, String? identifier});

  @override
  $ChatModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$ExpiredSubscriptionImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ExpiredSubscriptionImpl>
    implements _$$ExpiredSubscriptionImplCopyWith<$Res> {
  __$$ExpiredSubscriptionImplCopyWithImpl(_$ExpiredSubscriptionImpl _value,
      $Res Function(_$ExpiredSubscriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? identifier = freezed,
  }) {
    return _then(_$ExpiredSubscriptionImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChatModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ExpiredSubscriptionImpl implements _ExpiredSubscription {
  const _$ExpiredSubscriptionImpl(
      {required this.data, required this.message, required this.identifier});

  @override
  final ChatModelState data;
  @override
  final String message;
  @override
  final String? identifier;

  @override
  String toString() {
    return 'ChatState.expiredSubscription(data: $data, message: $message, identifier: $identifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpiredSubscriptionImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message, identifier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpiredSubscriptionImplCopyWith<_$ExpiredSubscriptionImpl> get copyWith =>
      __$$ExpiredSubscriptionImplCopyWithImpl<_$ExpiredSubscriptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModelState data) initial,
    required TResult Function(ChatModelState data) loading,
    required TResult Function(ChatModelState data) loadChatSuccess,
    required TResult Function(ChatModelState data) deleteChatSuccess,
    required TResult Function(ChatModelState data, String message)
        deleteChatFailed,
    required TResult Function(ChatModelState data) createChatSuccess,
    required TResult Function(ChatModelState data, String message)
        createChatFailed,
    required TResult Function(
            ChatModelState data, String message, String? identifier)
        expiredSubscription,
    required TResult Function(ChatModelState data, bool isExpiredSubscription)
        updateIdentifierSuccess,
    required TResult Function(ChatModelState data, int chatId)
        selectChatSuccess,
    required TResult Function(ChatModelState data, String message)
        selectChatFailed,
    required TResult Function(ChatModelState data) editChatSuccess,
    required TResult Function(ChatModelState data) editChatFailed,
  }) {
    return expiredSubscription(data, message, identifier);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModelState data)? initial,
    TResult? Function(ChatModelState data)? loading,
    TResult? Function(ChatModelState data)? loadChatSuccess,
    TResult? Function(ChatModelState data)? deleteChatSuccess,
    TResult? Function(ChatModelState data, String message)? deleteChatFailed,
    TResult? Function(ChatModelState data)? createChatSuccess,
    TResult? Function(ChatModelState data, String message)? createChatFailed,
    TResult? Function(ChatModelState data, String message, String? identifier)?
        expiredSubscription,
    TResult? Function(ChatModelState data, bool isExpiredSubscription)?
        updateIdentifierSuccess,
    TResult? Function(ChatModelState data, int chatId)? selectChatSuccess,
    TResult? Function(ChatModelState data, String message)? selectChatFailed,
    TResult? Function(ChatModelState data)? editChatSuccess,
    TResult? Function(ChatModelState data)? editChatFailed,
  }) {
    return expiredSubscription?.call(data, message, identifier);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModelState data)? initial,
    TResult Function(ChatModelState data)? loading,
    TResult Function(ChatModelState data)? loadChatSuccess,
    TResult Function(ChatModelState data)? deleteChatSuccess,
    TResult Function(ChatModelState data, String message)? deleteChatFailed,
    TResult Function(ChatModelState data)? createChatSuccess,
    TResult Function(ChatModelState data, String message)? createChatFailed,
    TResult Function(ChatModelState data, String message, String? identifier)?
        expiredSubscription,
    TResult Function(ChatModelState data, bool isExpiredSubscription)?
        updateIdentifierSuccess,
    TResult Function(ChatModelState data, int chatId)? selectChatSuccess,
    TResult Function(ChatModelState data, String message)? selectChatFailed,
    TResult Function(ChatModelState data)? editChatSuccess,
    TResult Function(ChatModelState data)? editChatFailed,
    required TResult orElse(),
  }) {
    if (expiredSubscription != null) {
      return expiredSubscription(data, message, identifier);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadChatSuccess value) loadChatSuccess,
    required TResult Function(_DeleteChatSuccess value) deleteChatSuccess,
    required TResult Function(_DeleteChatFailed value) deleteChatFailed,
    required TResult Function(_CreateChatSuccess value) createChatSuccess,
    required TResult Function(_CreateChatFailed value) createChatFailed,
    required TResult Function(_ExpiredSubscription value) expiredSubscription,
    required TResult Function(_UpdateIdentifierSuccess value)
        updateIdentifierSuccess,
    required TResult Function(_SelectChatSuccess value) selectChatSuccess,
    required TResult Function(_SelectChatFailed value) selectChatFailed,
    required TResult Function(_EditChatSuccess value) editChatSuccess,
    required TResult Function(_EditChatFailed value) editChatFailed,
  }) {
    return expiredSubscription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadChatSuccess value)? loadChatSuccess,
    TResult? Function(_DeleteChatSuccess value)? deleteChatSuccess,
    TResult? Function(_DeleteChatFailed value)? deleteChatFailed,
    TResult? Function(_CreateChatSuccess value)? createChatSuccess,
    TResult? Function(_CreateChatFailed value)? createChatFailed,
    TResult? Function(_ExpiredSubscription value)? expiredSubscription,
    TResult? Function(_UpdateIdentifierSuccess value)? updateIdentifierSuccess,
    TResult? Function(_SelectChatSuccess value)? selectChatSuccess,
    TResult? Function(_SelectChatFailed value)? selectChatFailed,
    TResult? Function(_EditChatSuccess value)? editChatSuccess,
    TResult? Function(_EditChatFailed value)? editChatFailed,
  }) {
    return expiredSubscription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadChatSuccess value)? loadChatSuccess,
    TResult Function(_DeleteChatSuccess value)? deleteChatSuccess,
    TResult Function(_DeleteChatFailed value)? deleteChatFailed,
    TResult Function(_CreateChatSuccess value)? createChatSuccess,
    TResult Function(_CreateChatFailed value)? createChatFailed,
    TResult Function(_ExpiredSubscription value)? expiredSubscription,
    TResult Function(_UpdateIdentifierSuccess value)? updateIdentifierSuccess,
    TResult Function(_SelectChatSuccess value)? selectChatSuccess,
    TResult Function(_SelectChatFailed value)? selectChatFailed,
    TResult Function(_EditChatSuccess value)? editChatSuccess,
    TResult Function(_EditChatFailed value)? editChatFailed,
    required TResult orElse(),
  }) {
    if (expiredSubscription != null) {
      return expiredSubscription(this);
    }
    return orElse();
  }
}

abstract class _ExpiredSubscription implements ChatState {
  const factory _ExpiredSubscription(
      {required final ChatModelState data,
      required final String message,
      required final String? identifier}) = _$ExpiredSubscriptionImpl;

  @override
  ChatModelState get data;
  String get message;
  String? get identifier;
  @override
  @JsonKey(ignore: true)
  _$$ExpiredSubscriptionImplCopyWith<_$ExpiredSubscriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateIdentifierSuccessImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$UpdateIdentifierSuccessImplCopyWith(
          _$UpdateIdentifierSuccessImpl value,
          $Res Function(_$UpdateIdentifierSuccessImpl) then) =
      __$$UpdateIdentifierSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatModelState data, bool isExpiredSubscription});

  @override
  $ChatModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$UpdateIdentifierSuccessImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$UpdateIdentifierSuccessImpl>
    implements _$$UpdateIdentifierSuccessImplCopyWith<$Res> {
  __$$UpdateIdentifierSuccessImplCopyWithImpl(
      _$UpdateIdentifierSuccessImpl _value,
      $Res Function(_$UpdateIdentifierSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? isExpiredSubscription = null,
  }) {
    return _then(_$UpdateIdentifierSuccessImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChatModelState,
      isExpiredSubscription: null == isExpiredSubscription
          ? _value.isExpiredSubscription
          : isExpiredSubscription // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateIdentifierSuccessImpl implements _UpdateIdentifierSuccess {
  const _$UpdateIdentifierSuccessImpl(
      {required this.data, required this.isExpiredSubscription});

  @override
  final ChatModelState data;
  @override
  final bool isExpiredSubscription;

  @override
  String toString() {
    return 'ChatState.updateIdentifierSuccess(data: $data, isExpiredSubscription: $isExpiredSubscription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateIdentifierSuccessImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.isExpiredSubscription, isExpiredSubscription) ||
                other.isExpiredSubscription == isExpiredSubscription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, isExpiredSubscription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateIdentifierSuccessImplCopyWith<_$UpdateIdentifierSuccessImpl>
      get copyWith => __$$UpdateIdentifierSuccessImplCopyWithImpl<
          _$UpdateIdentifierSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModelState data) initial,
    required TResult Function(ChatModelState data) loading,
    required TResult Function(ChatModelState data) loadChatSuccess,
    required TResult Function(ChatModelState data) deleteChatSuccess,
    required TResult Function(ChatModelState data, String message)
        deleteChatFailed,
    required TResult Function(ChatModelState data) createChatSuccess,
    required TResult Function(ChatModelState data, String message)
        createChatFailed,
    required TResult Function(
            ChatModelState data, String message, String? identifier)
        expiredSubscription,
    required TResult Function(ChatModelState data, bool isExpiredSubscription)
        updateIdentifierSuccess,
    required TResult Function(ChatModelState data, int chatId)
        selectChatSuccess,
    required TResult Function(ChatModelState data, String message)
        selectChatFailed,
    required TResult Function(ChatModelState data) editChatSuccess,
    required TResult Function(ChatModelState data) editChatFailed,
  }) {
    return updateIdentifierSuccess(data, isExpiredSubscription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModelState data)? initial,
    TResult? Function(ChatModelState data)? loading,
    TResult? Function(ChatModelState data)? loadChatSuccess,
    TResult? Function(ChatModelState data)? deleteChatSuccess,
    TResult? Function(ChatModelState data, String message)? deleteChatFailed,
    TResult? Function(ChatModelState data)? createChatSuccess,
    TResult? Function(ChatModelState data, String message)? createChatFailed,
    TResult? Function(ChatModelState data, String message, String? identifier)?
        expiredSubscription,
    TResult? Function(ChatModelState data, bool isExpiredSubscription)?
        updateIdentifierSuccess,
    TResult? Function(ChatModelState data, int chatId)? selectChatSuccess,
    TResult? Function(ChatModelState data, String message)? selectChatFailed,
    TResult? Function(ChatModelState data)? editChatSuccess,
    TResult? Function(ChatModelState data)? editChatFailed,
  }) {
    return updateIdentifierSuccess?.call(data, isExpiredSubscription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModelState data)? initial,
    TResult Function(ChatModelState data)? loading,
    TResult Function(ChatModelState data)? loadChatSuccess,
    TResult Function(ChatModelState data)? deleteChatSuccess,
    TResult Function(ChatModelState data, String message)? deleteChatFailed,
    TResult Function(ChatModelState data)? createChatSuccess,
    TResult Function(ChatModelState data, String message)? createChatFailed,
    TResult Function(ChatModelState data, String message, String? identifier)?
        expiredSubscription,
    TResult Function(ChatModelState data, bool isExpiredSubscription)?
        updateIdentifierSuccess,
    TResult Function(ChatModelState data, int chatId)? selectChatSuccess,
    TResult Function(ChatModelState data, String message)? selectChatFailed,
    TResult Function(ChatModelState data)? editChatSuccess,
    TResult Function(ChatModelState data)? editChatFailed,
    required TResult orElse(),
  }) {
    if (updateIdentifierSuccess != null) {
      return updateIdentifierSuccess(data, isExpiredSubscription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadChatSuccess value) loadChatSuccess,
    required TResult Function(_DeleteChatSuccess value) deleteChatSuccess,
    required TResult Function(_DeleteChatFailed value) deleteChatFailed,
    required TResult Function(_CreateChatSuccess value) createChatSuccess,
    required TResult Function(_CreateChatFailed value) createChatFailed,
    required TResult Function(_ExpiredSubscription value) expiredSubscription,
    required TResult Function(_UpdateIdentifierSuccess value)
        updateIdentifierSuccess,
    required TResult Function(_SelectChatSuccess value) selectChatSuccess,
    required TResult Function(_SelectChatFailed value) selectChatFailed,
    required TResult Function(_EditChatSuccess value) editChatSuccess,
    required TResult Function(_EditChatFailed value) editChatFailed,
  }) {
    return updateIdentifierSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadChatSuccess value)? loadChatSuccess,
    TResult? Function(_DeleteChatSuccess value)? deleteChatSuccess,
    TResult? Function(_DeleteChatFailed value)? deleteChatFailed,
    TResult? Function(_CreateChatSuccess value)? createChatSuccess,
    TResult? Function(_CreateChatFailed value)? createChatFailed,
    TResult? Function(_ExpiredSubscription value)? expiredSubscription,
    TResult? Function(_UpdateIdentifierSuccess value)? updateIdentifierSuccess,
    TResult? Function(_SelectChatSuccess value)? selectChatSuccess,
    TResult? Function(_SelectChatFailed value)? selectChatFailed,
    TResult? Function(_EditChatSuccess value)? editChatSuccess,
    TResult? Function(_EditChatFailed value)? editChatFailed,
  }) {
    return updateIdentifierSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadChatSuccess value)? loadChatSuccess,
    TResult Function(_DeleteChatSuccess value)? deleteChatSuccess,
    TResult Function(_DeleteChatFailed value)? deleteChatFailed,
    TResult Function(_CreateChatSuccess value)? createChatSuccess,
    TResult Function(_CreateChatFailed value)? createChatFailed,
    TResult Function(_ExpiredSubscription value)? expiredSubscription,
    TResult Function(_UpdateIdentifierSuccess value)? updateIdentifierSuccess,
    TResult Function(_SelectChatSuccess value)? selectChatSuccess,
    TResult Function(_SelectChatFailed value)? selectChatFailed,
    TResult Function(_EditChatSuccess value)? editChatSuccess,
    TResult Function(_EditChatFailed value)? editChatFailed,
    required TResult orElse(),
  }) {
    if (updateIdentifierSuccess != null) {
      return updateIdentifierSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateIdentifierSuccess implements ChatState {
  const factory _UpdateIdentifierSuccess(
          {required final ChatModelState data,
          required final bool isExpiredSubscription}) =
      _$UpdateIdentifierSuccessImpl;

  @override
  ChatModelState get data;
  bool get isExpiredSubscription;
  @override
  @JsonKey(ignore: true)
  _$$UpdateIdentifierSuccessImplCopyWith<_$UpdateIdentifierSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectChatSuccessImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$SelectChatSuccessImplCopyWith(_$SelectChatSuccessImpl value,
          $Res Function(_$SelectChatSuccessImpl) then) =
      __$$SelectChatSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatModelState data, int chatId});

  @override
  $ChatModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$SelectChatSuccessImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$SelectChatSuccessImpl>
    implements _$$SelectChatSuccessImplCopyWith<$Res> {
  __$$SelectChatSuccessImplCopyWithImpl(_$SelectChatSuccessImpl _value,
      $Res Function(_$SelectChatSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? chatId = null,
  }) {
    return _then(_$SelectChatSuccessImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChatModelState,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectChatSuccessImpl implements _SelectChatSuccess {
  const _$SelectChatSuccessImpl({required this.data, required this.chatId});

  @override
  final ChatModelState data;
  @override
  final int chatId;

  @override
  String toString() {
    return 'ChatState.selectChatSuccess(data: $data, chatId: $chatId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectChatSuccessImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, chatId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectChatSuccessImplCopyWith<_$SelectChatSuccessImpl> get copyWith =>
      __$$SelectChatSuccessImplCopyWithImpl<_$SelectChatSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModelState data) initial,
    required TResult Function(ChatModelState data) loading,
    required TResult Function(ChatModelState data) loadChatSuccess,
    required TResult Function(ChatModelState data) deleteChatSuccess,
    required TResult Function(ChatModelState data, String message)
        deleteChatFailed,
    required TResult Function(ChatModelState data) createChatSuccess,
    required TResult Function(ChatModelState data, String message)
        createChatFailed,
    required TResult Function(
            ChatModelState data, String message, String? identifier)
        expiredSubscription,
    required TResult Function(ChatModelState data, bool isExpiredSubscription)
        updateIdentifierSuccess,
    required TResult Function(ChatModelState data, int chatId)
        selectChatSuccess,
    required TResult Function(ChatModelState data, String message)
        selectChatFailed,
    required TResult Function(ChatModelState data) editChatSuccess,
    required TResult Function(ChatModelState data) editChatFailed,
  }) {
    return selectChatSuccess(data, chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModelState data)? initial,
    TResult? Function(ChatModelState data)? loading,
    TResult? Function(ChatModelState data)? loadChatSuccess,
    TResult? Function(ChatModelState data)? deleteChatSuccess,
    TResult? Function(ChatModelState data, String message)? deleteChatFailed,
    TResult? Function(ChatModelState data)? createChatSuccess,
    TResult? Function(ChatModelState data, String message)? createChatFailed,
    TResult? Function(ChatModelState data, String message, String? identifier)?
        expiredSubscription,
    TResult? Function(ChatModelState data, bool isExpiredSubscription)?
        updateIdentifierSuccess,
    TResult? Function(ChatModelState data, int chatId)? selectChatSuccess,
    TResult? Function(ChatModelState data, String message)? selectChatFailed,
    TResult? Function(ChatModelState data)? editChatSuccess,
    TResult? Function(ChatModelState data)? editChatFailed,
  }) {
    return selectChatSuccess?.call(data, chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModelState data)? initial,
    TResult Function(ChatModelState data)? loading,
    TResult Function(ChatModelState data)? loadChatSuccess,
    TResult Function(ChatModelState data)? deleteChatSuccess,
    TResult Function(ChatModelState data, String message)? deleteChatFailed,
    TResult Function(ChatModelState data)? createChatSuccess,
    TResult Function(ChatModelState data, String message)? createChatFailed,
    TResult Function(ChatModelState data, String message, String? identifier)?
        expiredSubscription,
    TResult Function(ChatModelState data, bool isExpiredSubscription)?
        updateIdentifierSuccess,
    TResult Function(ChatModelState data, int chatId)? selectChatSuccess,
    TResult Function(ChatModelState data, String message)? selectChatFailed,
    TResult Function(ChatModelState data)? editChatSuccess,
    TResult Function(ChatModelState data)? editChatFailed,
    required TResult orElse(),
  }) {
    if (selectChatSuccess != null) {
      return selectChatSuccess(data, chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadChatSuccess value) loadChatSuccess,
    required TResult Function(_DeleteChatSuccess value) deleteChatSuccess,
    required TResult Function(_DeleteChatFailed value) deleteChatFailed,
    required TResult Function(_CreateChatSuccess value) createChatSuccess,
    required TResult Function(_CreateChatFailed value) createChatFailed,
    required TResult Function(_ExpiredSubscription value) expiredSubscription,
    required TResult Function(_UpdateIdentifierSuccess value)
        updateIdentifierSuccess,
    required TResult Function(_SelectChatSuccess value) selectChatSuccess,
    required TResult Function(_SelectChatFailed value) selectChatFailed,
    required TResult Function(_EditChatSuccess value) editChatSuccess,
    required TResult Function(_EditChatFailed value) editChatFailed,
  }) {
    return selectChatSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadChatSuccess value)? loadChatSuccess,
    TResult? Function(_DeleteChatSuccess value)? deleteChatSuccess,
    TResult? Function(_DeleteChatFailed value)? deleteChatFailed,
    TResult? Function(_CreateChatSuccess value)? createChatSuccess,
    TResult? Function(_CreateChatFailed value)? createChatFailed,
    TResult? Function(_ExpiredSubscription value)? expiredSubscription,
    TResult? Function(_UpdateIdentifierSuccess value)? updateIdentifierSuccess,
    TResult? Function(_SelectChatSuccess value)? selectChatSuccess,
    TResult? Function(_SelectChatFailed value)? selectChatFailed,
    TResult? Function(_EditChatSuccess value)? editChatSuccess,
    TResult? Function(_EditChatFailed value)? editChatFailed,
  }) {
    return selectChatSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadChatSuccess value)? loadChatSuccess,
    TResult Function(_DeleteChatSuccess value)? deleteChatSuccess,
    TResult Function(_DeleteChatFailed value)? deleteChatFailed,
    TResult Function(_CreateChatSuccess value)? createChatSuccess,
    TResult Function(_CreateChatFailed value)? createChatFailed,
    TResult Function(_ExpiredSubscription value)? expiredSubscription,
    TResult Function(_UpdateIdentifierSuccess value)? updateIdentifierSuccess,
    TResult Function(_SelectChatSuccess value)? selectChatSuccess,
    TResult Function(_SelectChatFailed value)? selectChatFailed,
    TResult Function(_EditChatSuccess value)? editChatSuccess,
    TResult Function(_EditChatFailed value)? editChatFailed,
    required TResult orElse(),
  }) {
    if (selectChatSuccess != null) {
      return selectChatSuccess(this);
    }
    return orElse();
  }
}

abstract class _SelectChatSuccess implements ChatState {
  const factory _SelectChatSuccess(
      {required final ChatModelState data,
      required final int chatId}) = _$SelectChatSuccessImpl;

  @override
  ChatModelState get data;
  int get chatId;
  @override
  @JsonKey(ignore: true)
  _$$SelectChatSuccessImplCopyWith<_$SelectChatSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectChatFailedImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$SelectChatFailedImplCopyWith(_$SelectChatFailedImpl value,
          $Res Function(_$SelectChatFailedImpl) then) =
      __$$SelectChatFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatModelState data, String message});

  @override
  $ChatModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$SelectChatFailedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$SelectChatFailedImpl>
    implements _$$SelectChatFailedImplCopyWith<$Res> {
  __$$SelectChatFailedImplCopyWithImpl(_$SelectChatFailedImpl _value,
      $Res Function(_$SelectChatFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$SelectChatFailedImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChatModelState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectChatFailedImpl implements _SelectChatFailed {
  const _$SelectChatFailedImpl({required this.data, required this.message});

  @override
  final ChatModelState data;
  @override
  final String message;

  @override
  String toString() {
    return 'ChatState.selectChatFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectChatFailedImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectChatFailedImplCopyWith<_$SelectChatFailedImpl> get copyWith =>
      __$$SelectChatFailedImplCopyWithImpl<_$SelectChatFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModelState data) initial,
    required TResult Function(ChatModelState data) loading,
    required TResult Function(ChatModelState data) loadChatSuccess,
    required TResult Function(ChatModelState data) deleteChatSuccess,
    required TResult Function(ChatModelState data, String message)
        deleteChatFailed,
    required TResult Function(ChatModelState data) createChatSuccess,
    required TResult Function(ChatModelState data, String message)
        createChatFailed,
    required TResult Function(
            ChatModelState data, String message, String? identifier)
        expiredSubscription,
    required TResult Function(ChatModelState data, bool isExpiredSubscription)
        updateIdentifierSuccess,
    required TResult Function(ChatModelState data, int chatId)
        selectChatSuccess,
    required TResult Function(ChatModelState data, String message)
        selectChatFailed,
    required TResult Function(ChatModelState data) editChatSuccess,
    required TResult Function(ChatModelState data) editChatFailed,
  }) {
    return selectChatFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModelState data)? initial,
    TResult? Function(ChatModelState data)? loading,
    TResult? Function(ChatModelState data)? loadChatSuccess,
    TResult? Function(ChatModelState data)? deleteChatSuccess,
    TResult? Function(ChatModelState data, String message)? deleteChatFailed,
    TResult? Function(ChatModelState data)? createChatSuccess,
    TResult? Function(ChatModelState data, String message)? createChatFailed,
    TResult? Function(ChatModelState data, String message, String? identifier)?
        expiredSubscription,
    TResult? Function(ChatModelState data, bool isExpiredSubscription)?
        updateIdentifierSuccess,
    TResult? Function(ChatModelState data, int chatId)? selectChatSuccess,
    TResult? Function(ChatModelState data, String message)? selectChatFailed,
    TResult? Function(ChatModelState data)? editChatSuccess,
    TResult? Function(ChatModelState data)? editChatFailed,
  }) {
    return selectChatFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModelState data)? initial,
    TResult Function(ChatModelState data)? loading,
    TResult Function(ChatModelState data)? loadChatSuccess,
    TResult Function(ChatModelState data)? deleteChatSuccess,
    TResult Function(ChatModelState data, String message)? deleteChatFailed,
    TResult Function(ChatModelState data)? createChatSuccess,
    TResult Function(ChatModelState data, String message)? createChatFailed,
    TResult Function(ChatModelState data, String message, String? identifier)?
        expiredSubscription,
    TResult Function(ChatModelState data, bool isExpiredSubscription)?
        updateIdentifierSuccess,
    TResult Function(ChatModelState data, int chatId)? selectChatSuccess,
    TResult Function(ChatModelState data, String message)? selectChatFailed,
    TResult Function(ChatModelState data)? editChatSuccess,
    TResult Function(ChatModelState data)? editChatFailed,
    required TResult orElse(),
  }) {
    if (selectChatFailed != null) {
      return selectChatFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadChatSuccess value) loadChatSuccess,
    required TResult Function(_DeleteChatSuccess value) deleteChatSuccess,
    required TResult Function(_DeleteChatFailed value) deleteChatFailed,
    required TResult Function(_CreateChatSuccess value) createChatSuccess,
    required TResult Function(_CreateChatFailed value) createChatFailed,
    required TResult Function(_ExpiredSubscription value) expiredSubscription,
    required TResult Function(_UpdateIdentifierSuccess value)
        updateIdentifierSuccess,
    required TResult Function(_SelectChatSuccess value) selectChatSuccess,
    required TResult Function(_SelectChatFailed value) selectChatFailed,
    required TResult Function(_EditChatSuccess value) editChatSuccess,
    required TResult Function(_EditChatFailed value) editChatFailed,
  }) {
    return selectChatFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadChatSuccess value)? loadChatSuccess,
    TResult? Function(_DeleteChatSuccess value)? deleteChatSuccess,
    TResult? Function(_DeleteChatFailed value)? deleteChatFailed,
    TResult? Function(_CreateChatSuccess value)? createChatSuccess,
    TResult? Function(_CreateChatFailed value)? createChatFailed,
    TResult? Function(_ExpiredSubscription value)? expiredSubscription,
    TResult? Function(_UpdateIdentifierSuccess value)? updateIdentifierSuccess,
    TResult? Function(_SelectChatSuccess value)? selectChatSuccess,
    TResult? Function(_SelectChatFailed value)? selectChatFailed,
    TResult? Function(_EditChatSuccess value)? editChatSuccess,
    TResult? Function(_EditChatFailed value)? editChatFailed,
  }) {
    return selectChatFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadChatSuccess value)? loadChatSuccess,
    TResult Function(_DeleteChatSuccess value)? deleteChatSuccess,
    TResult Function(_DeleteChatFailed value)? deleteChatFailed,
    TResult Function(_CreateChatSuccess value)? createChatSuccess,
    TResult Function(_CreateChatFailed value)? createChatFailed,
    TResult Function(_ExpiredSubscription value)? expiredSubscription,
    TResult Function(_UpdateIdentifierSuccess value)? updateIdentifierSuccess,
    TResult Function(_SelectChatSuccess value)? selectChatSuccess,
    TResult Function(_SelectChatFailed value)? selectChatFailed,
    TResult Function(_EditChatSuccess value)? editChatSuccess,
    TResult Function(_EditChatFailed value)? editChatFailed,
    required TResult orElse(),
  }) {
    if (selectChatFailed != null) {
      return selectChatFailed(this);
    }
    return orElse();
  }
}

abstract class _SelectChatFailed implements ChatState {
  const factory _SelectChatFailed(
      {required final ChatModelState data,
      required final String message}) = _$SelectChatFailedImpl;

  @override
  ChatModelState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SelectChatFailedImplCopyWith<_$SelectChatFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditChatSuccessImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$EditChatSuccessImplCopyWith(_$EditChatSuccessImpl value,
          $Res Function(_$EditChatSuccessImpl) then) =
      __$$EditChatSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatModelState data});

  @override
  $ChatModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$EditChatSuccessImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$EditChatSuccessImpl>
    implements _$$EditChatSuccessImplCopyWith<$Res> {
  __$$EditChatSuccessImplCopyWithImpl(
      _$EditChatSuccessImpl _value, $Res Function(_$EditChatSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$EditChatSuccessImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChatModelState,
    ));
  }
}

/// @nodoc

class _$EditChatSuccessImpl implements _EditChatSuccess {
  const _$EditChatSuccessImpl({required this.data});

  @override
  final ChatModelState data;

  @override
  String toString() {
    return 'ChatState.editChatSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditChatSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditChatSuccessImplCopyWith<_$EditChatSuccessImpl> get copyWith =>
      __$$EditChatSuccessImplCopyWithImpl<_$EditChatSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModelState data) initial,
    required TResult Function(ChatModelState data) loading,
    required TResult Function(ChatModelState data) loadChatSuccess,
    required TResult Function(ChatModelState data) deleteChatSuccess,
    required TResult Function(ChatModelState data, String message)
        deleteChatFailed,
    required TResult Function(ChatModelState data) createChatSuccess,
    required TResult Function(ChatModelState data, String message)
        createChatFailed,
    required TResult Function(
            ChatModelState data, String message, String? identifier)
        expiredSubscription,
    required TResult Function(ChatModelState data, bool isExpiredSubscription)
        updateIdentifierSuccess,
    required TResult Function(ChatModelState data, int chatId)
        selectChatSuccess,
    required TResult Function(ChatModelState data, String message)
        selectChatFailed,
    required TResult Function(ChatModelState data) editChatSuccess,
    required TResult Function(ChatModelState data) editChatFailed,
  }) {
    return editChatSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModelState data)? initial,
    TResult? Function(ChatModelState data)? loading,
    TResult? Function(ChatModelState data)? loadChatSuccess,
    TResult? Function(ChatModelState data)? deleteChatSuccess,
    TResult? Function(ChatModelState data, String message)? deleteChatFailed,
    TResult? Function(ChatModelState data)? createChatSuccess,
    TResult? Function(ChatModelState data, String message)? createChatFailed,
    TResult? Function(ChatModelState data, String message, String? identifier)?
        expiredSubscription,
    TResult? Function(ChatModelState data, bool isExpiredSubscription)?
        updateIdentifierSuccess,
    TResult? Function(ChatModelState data, int chatId)? selectChatSuccess,
    TResult? Function(ChatModelState data, String message)? selectChatFailed,
    TResult? Function(ChatModelState data)? editChatSuccess,
    TResult? Function(ChatModelState data)? editChatFailed,
  }) {
    return editChatSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModelState data)? initial,
    TResult Function(ChatModelState data)? loading,
    TResult Function(ChatModelState data)? loadChatSuccess,
    TResult Function(ChatModelState data)? deleteChatSuccess,
    TResult Function(ChatModelState data, String message)? deleteChatFailed,
    TResult Function(ChatModelState data)? createChatSuccess,
    TResult Function(ChatModelState data, String message)? createChatFailed,
    TResult Function(ChatModelState data, String message, String? identifier)?
        expiredSubscription,
    TResult Function(ChatModelState data, bool isExpiredSubscription)?
        updateIdentifierSuccess,
    TResult Function(ChatModelState data, int chatId)? selectChatSuccess,
    TResult Function(ChatModelState data, String message)? selectChatFailed,
    TResult Function(ChatModelState data)? editChatSuccess,
    TResult Function(ChatModelState data)? editChatFailed,
    required TResult orElse(),
  }) {
    if (editChatSuccess != null) {
      return editChatSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadChatSuccess value) loadChatSuccess,
    required TResult Function(_DeleteChatSuccess value) deleteChatSuccess,
    required TResult Function(_DeleteChatFailed value) deleteChatFailed,
    required TResult Function(_CreateChatSuccess value) createChatSuccess,
    required TResult Function(_CreateChatFailed value) createChatFailed,
    required TResult Function(_ExpiredSubscription value) expiredSubscription,
    required TResult Function(_UpdateIdentifierSuccess value)
        updateIdentifierSuccess,
    required TResult Function(_SelectChatSuccess value) selectChatSuccess,
    required TResult Function(_SelectChatFailed value) selectChatFailed,
    required TResult Function(_EditChatSuccess value) editChatSuccess,
    required TResult Function(_EditChatFailed value) editChatFailed,
  }) {
    return editChatSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadChatSuccess value)? loadChatSuccess,
    TResult? Function(_DeleteChatSuccess value)? deleteChatSuccess,
    TResult? Function(_DeleteChatFailed value)? deleteChatFailed,
    TResult? Function(_CreateChatSuccess value)? createChatSuccess,
    TResult? Function(_CreateChatFailed value)? createChatFailed,
    TResult? Function(_ExpiredSubscription value)? expiredSubscription,
    TResult? Function(_UpdateIdentifierSuccess value)? updateIdentifierSuccess,
    TResult? Function(_SelectChatSuccess value)? selectChatSuccess,
    TResult? Function(_SelectChatFailed value)? selectChatFailed,
    TResult? Function(_EditChatSuccess value)? editChatSuccess,
    TResult? Function(_EditChatFailed value)? editChatFailed,
  }) {
    return editChatSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadChatSuccess value)? loadChatSuccess,
    TResult Function(_DeleteChatSuccess value)? deleteChatSuccess,
    TResult Function(_DeleteChatFailed value)? deleteChatFailed,
    TResult Function(_CreateChatSuccess value)? createChatSuccess,
    TResult Function(_CreateChatFailed value)? createChatFailed,
    TResult Function(_ExpiredSubscription value)? expiredSubscription,
    TResult Function(_UpdateIdentifierSuccess value)? updateIdentifierSuccess,
    TResult Function(_SelectChatSuccess value)? selectChatSuccess,
    TResult Function(_SelectChatFailed value)? selectChatFailed,
    TResult Function(_EditChatSuccess value)? editChatSuccess,
    TResult Function(_EditChatFailed value)? editChatFailed,
    required TResult orElse(),
  }) {
    if (editChatSuccess != null) {
      return editChatSuccess(this);
    }
    return orElse();
  }
}

abstract class _EditChatSuccess implements ChatState {
  const factory _EditChatSuccess({required final ChatModelState data}) =
      _$EditChatSuccessImpl;

  @override
  ChatModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$EditChatSuccessImplCopyWith<_$EditChatSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditChatFailedImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$EditChatFailedImplCopyWith(_$EditChatFailedImpl value,
          $Res Function(_$EditChatFailedImpl) then) =
      __$$EditChatFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatModelState data});

  @override
  $ChatModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$EditChatFailedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$EditChatFailedImpl>
    implements _$$EditChatFailedImplCopyWith<$Res> {
  __$$EditChatFailedImplCopyWithImpl(
      _$EditChatFailedImpl _value, $Res Function(_$EditChatFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$EditChatFailedImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChatModelState,
    ));
  }
}

/// @nodoc

class _$EditChatFailedImpl implements _EditChatFailed {
  const _$EditChatFailedImpl({required this.data});

  @override
  final ChatModelState data;

  @override
  String toString() {
    return 'ChatState.editChatFailed(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditChatFailedImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditChatFailedImplCopyWith<_$EditChatFailedImpl> get copyWith =>
      __$$EditChatFailedImplCopyWithImpl<_$EditChatFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModelState data) initial,
    required TResult Function(ChatModelState data) loading,
    required TResult Function(ChatModelState data) loadChatSuccess,
    required TResult Function(ChatModelState data) deleteChatSuccess,
    required TResult Function(ChatModelState data, String message)
        deleteChatFailed,
    required TResult Function(ChatModelState data) createChatSuccess,
    required TResult Function(ChatModelState data, String message)
        createChatFailed,
    required TResult Function(
            ChatModelState data, String message, String? identifier)
        expiredSubscription,
    required TResult Function(ChatModelState data, bool isExpiredSubscription)
        updateIdentifierSuccess,
    required TResult Function(ChatModelState data, int chatId)
        selectChatSuccess,
    required TResult Function(ChatModelState data, String message)
        selectChatFailed,
    required TResult Function(ChatModelState data) editChatSuccess,
    required TResult Function(ChatModelState data) editChatFailed,
  }) {
    return editChatFailed(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModelState data)? initial,
    TResult? Function(ChatModelState data)? loading,
    TResult? Function(ChatModelState data)? loadChatSuccess,
    TResult? Function(ChatModelState data)? deleteChatSuccess,
    TResult? Function(ChatModelState data, String message)? deleteChatFailed,
    TResult? Function(ChatModelState data)? createChatSuccess,
    TResult? Function(ChatModelState data, String message)? createChatFailed,
    TResult? Function(ChatModelState data, String message, String? identifier)?
        expiredSubscription,
    TResult? Function(ChatModelState data, bool isExpiredSubscription)?
        updateIdentifierSuccess,
    TResult? Function(ChatModelState data, int chatId)? selectChatSuccess,
    TResult? Function(ChatModelState data, String message)? selectChatFailed,
    TResult? Function(ChatModelState data)? editChatSuccess,
    TResult? Function(ChatModelState data)? editChatFailed,
  }) {
    return editChatFailed?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModelState data)? initial,
    TResult Function(ChatModelState data)? loading,
    TResult Function(ChatModelState data)? loadChatSuccess,
    TResult Function(ChatModelState data)? deleteChatSuccess,
    TResult Function(ChatModelState data, String message)? deleteChatFailed,
    TResult Function(ChatModelState data)? createChatSuccess,
    TResult Function(ChatModelState data, String message)? createChatFailed,
    TResult Function(ChatModelState data, String message, String? identifier)?
        expiredSubscription,
    TResult Function(ChatModelState data, bool isExpiredSubscription)?
        updateIdentifierSuccess,
    TResult Function(ChatModelState data, int chatId)? selectChatSuccess,
    TResult Function(ChatModelState data, String message)? selectChatFailed,
    TResult Function(ChatModelState data)? editChatSuccess,
    TResult Function(ChatModelState data)? editChatFailed,
    required TResult orElse(),
  }) {
    if (editChatFailed != null) {
      return editChatFailed(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadChatSuccess value) loadChatSuccess,
    required TResult Function(_DeleteChatSuccess value) deleteChatSuccess,
    required TResult Function(_DeleteChatFailed value) deleteChatFailed,
    required TResult Function(_CreateChatSuccess value) createChatSuccess,
    required TResult Function(_CreateChatFailed value) createChatFailed,
    required TResult Function(_ExpiredSubscription value) expiredSubscription,
    required TResult Function(_UpdateIdentifierSuccess value)
        updateIdentifierSuccess,
    required TResult Function(_SelectChatSuccess value) selectChatSuccess,
    required TResult Function(_SelectChatFailed value) selectChatFailed,
    required TResult Function(_EditChatSuccess value) editChatSuccess,
    required TResult Function(_EditChatFailed value) editChatFailed,
  }) {
    return editChatFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadChatSuccess value)? loadChatSuccess,
    TResult? Function(_DeleteChatSuccess value)? deleteChatSuccess,
    TResult? Function(_DeleteChatFailed value)? deleteChatFailed,
    TResult? Function(_CreateChatSuccess value)? createChatSuccess,
    TResult? Function(_CreateChatFailed value)? createChatFailed,
    TResult? Function(_ExpiredSubscription value)? expiredSubscription,
    TResult? Function(_UpdateIdentifierSuccess value)? updateIdentifierSuccess,
    TResult? Function(_SelectChatSuccess value)? selectChatSuccess,
    TResult? Function(_SelectChatFailed value)? selectChatFailed,
    TResult? Function(_EditChatSuccess value)? editChatSuccess,
    TResult? Function(_EditChatFailed value)? editChatFailed,
  }) {
    return editChatFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadChatSuccess value)? loadChatSuccess,
    TResult Function(_DeleteChatSuccess value)? deleteChatSuccess,
    TResult Function(_DeleteChatFailed value)? deleteChatFailed,
    TResult Function(_CreateChatSuccess value)? createChatSuccess,
    TResult Function(_CreateChatFailed value)? createChatFailed,
    TResult Function(_ExpiredSubscription value)? expiredSubscription,
    TResult Function(_UpdateIdentifierSuccess value)? updateIdentifierSuccess,
    TResult Function(_SelectChatSuccess value)? selectChatSuccess,
    TResult Function(_SelectChatFailed value)? selectChatFailed,
    TResult Function(_EditChatSuccess value)? editChatSuccess,
    TResult Function(_EditChatFailed value)? editChatFailed,
    required TResult orElse(),
  }) {
    if (editChatFailed != null) {
      return editChatFailed(this);
    }
    return orElse();
  }
}

abstract class _EditChatFailed implements ChatState {
  const factory _EditChatFailed({required final ChatModelState data}) =
      _$EditChatFailedImpl;

  @override
  ChatModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$EditChatFailedImplCopyWith<_$EditChatFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
