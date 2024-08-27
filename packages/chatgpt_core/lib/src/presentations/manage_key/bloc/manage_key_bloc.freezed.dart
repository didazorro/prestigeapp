// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manage_key_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ManageKeyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? identifier) loadKey,
    required TResult Function(String key) saveKey,
    required TResult Function() removeKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? identifier)? loadKey,
    TResult? Function(String key)? saveKey,
    TResult? Function()? removeKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? identifier)? loadKey,
    TResult Function(String key)? saveKey,
    TResult Function()? removeKey,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadKey value) loadKey,
    required TResult Function(_SaveKey value) saveKey,
    required TResult Function(_RemoveKey value) removeKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadKey value)? loadKey,
    TResult? Function(_SaveKey value)? saveKey,
    TResult? Function(_RemoveKey value)? removeKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadKey value)? loadKey,
    TResult Function(_SaveKey value)? saveKey,
    TResult Function(_RemoveKey value)? removeKey,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManageKeyEventCopyWith<$Res> {
  factory $ManageKeyEventCopyWith(
          ManageKeyEvent value, $Res Function(ManageKeyEvent) then) =
      _$ManageKeyEventCopyWithImpl<$Res, ManageKeyEvent>;
}

/// @nodoc
class _$ManageKeyEventCopyWithImpl<$Res, $Val extends ManageKeyEvent>
    implements $ManageKeyEventCopyWith<$Res> {
  _$ManageKeyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadKeyImplCopyWith<$Res> {
  factory _$$LoadKeyImplCopyWith(
          _$LoadKeyImpl value, $Res Function(_$LoadKeyImpl) then) =
      __$$LoadKeyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? identifier});
}

/// @nodoc
class __$$LoadKeyImplCopyWithImpl<$Res>
    extends _$ManageKeyEventCopyWithImpl<$Res, _$LoadKeyImpl>
    implements _$$LoadKeyImplCopyWith<$Res> {
  __$$LoadKeyImplCopyWithImpl(
      _$LoadKeyImpl _value, $Res Function(_$LoadKeyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
  }) {
    return _then(_$LoadKeyImpl(
      freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoadKeyImpl implements _LoadKey {
  const _$LoadKeyImpl(this.identifier);

  @override
  final String? identifier;

  @override
  String toString() {
    return 'ManageKeyEvent.loadKey(identifier: $identifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadKeyImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier));
  }

  @override
  int get hashCode => Object.hash(runtimeType, identifier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadKeyImplCopyWith<_$LoadKeyImpl> get copyWith =>
      __$$LoadKeyImplCopyWithImpl<_$LoadKeyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? identifier) loadKey,
    required TResult Function(String key) saveKey,
    required TResult Function() removeKey,
  }) {
    return loadKey(identifier);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? identifier)? loadKey,
    TResult? Function(String key)? saveKey,
    TResult? Function()? removeKey,
  }) {
    return loadKey?.call(identifier);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? identifier)? loadKey,
    TResult Function(String key)? saveKey,
    TResult Function()? removeKey,
    required TResult orElse(),
  }) {
    if (loadKey != null) {
      return loadKey(identifier);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadKey value) loadKey,
    required TResult Function(_SaveKey value) saveKey,
    required TResult Function(_RemoveKey value) removeKey,
  }) {
    return loadKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadKey value)? loadKey,
    TResult? Function(_SaveKey value)? saveKey,
    TResult? Function(_RemoveKey value)? removeKey,
  }) {
    return loadKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadKey value)? loadKey,
    TResult Function(_SaveKey value)? saveKey,
    TResult Function(_RemoveKey value)? removeKey,
    required TResult orElse(),
  }) {
    if (loadKey != null) {
      return loadKey(this);
    }
    return orElse();
  }
}

abstract class _LoadKey implements ManageKeyEvent {
  const factory _LoadKey(final String? identifier) = _$LoadKeyImpl;

  String? get identifier;
  @JsonKey(ignore: true)
  _$$LoadKeyImplCopyWith<_$LoadKeyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveKeyImplCopyWith<$Res> {
  factory _$$SaveKeyImplCopyWith(
          _$SaveKeyImpl value, $Res Function(_$SaveKeyImpl) then) =
      __$$SaveKeyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String key});
}

/// @nodoc
class __$$SaveKeyImplCopyWithImpl<$Res>
    extends _$ManageKeyEventCopyWithImpl<$Res, _$SaveKeyImpl>
    implements _$$SaveKeyImplCopyWith<$Res> {
  __$$SaveKeyImplCopyWithImpl(
      _$SaveKeyImpl _value, $Res Function(_$SaveKeyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
  }) {
    return _then(_$SaveKeyImpl(
      null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveKeyImpl implements _SaveKey {
  const _$SaveKeyImpl(this.key);

  @override
  final String key;

  @override
  String toString() {
    return 'ManageKeyEvent.saveKey(key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveKeyImpl &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveKeyImplCopyWith<_$SaveKeyImpl> get copyWith =>
      __$$SaveKeyImplCopyWithImpl<_$SaveKeyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? identifier) loadKey,
    required TResult Function(String key) saveKey,
    required TResult Function() removeKey,
  }) {
    return saveKey(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? identifier)? loadKey,
    TResult? Function(String key)? saveKey,
    TResult? Function()? removeKey,
  }) {
    return saveKey?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? identifier)? loadKey,
    TResult Function(String key)? saveKey,
    TResult Function()? removeKey,
    required TResult orElse(),
  }) {
    if (saveKey != null) {
      return saveKey(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadKey value) loadKey,
    required TResult Function(_SaveKey value) saveKey,
    required TResult Function(_RemoveKey value) removeKey,
  }) {
    return saveKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadKey value)? loadKey,
    TResult? Function(_SaveKey value)? saveKey,
    TResult? Function(_RemoveKey value)? removeKey,
  }) {
    return saveKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadKey value)? loadKey,
    TResult Function(_SaveKey value)? saveKey,
    TResult Function(_RemoveKey value)? removeKey,
    required TResult orElse(),
  }) {
    if (saveKey != null) {
      return saveKey(this);
    }
    return orElse();
  }
}

abstract class _SaveKey implements ManageKeyEvent {
  const factory _SaveKey(final String key) = _$SaveKeyImpl;

  String get key;
  @JsonKey(ignore: true)
  _$$SaveKeyImplCopyWith<_$SaveKeyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveKeyImplCopyWith<$Res> {
  factory _$$RemoveKeyImplCopyWith(
          _$RemoveKeyImpl value, $Res Function(_$RemoveKeyImpl) then) =
      __$$RemoveKeyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveKeyImplCopyWithImpl<$Res>
    extends _$ManageKeyEventCopyWithImpl<$Res, _$RemoveKeyImpl>
    implements _$$RemoveKeyImplCopyWith<$Res> {
  __$$RemoveKeyImplCopyWithImpl(
      _$RemoveKeyImpl _value, $Res Function(_$RemoveKeyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveKeyImpl implements _RemoveKey {
  const _$RemoveKeyImpl();

  @override
  String toString() {
    return 'ManageKeyEvent.removeKey()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveKeyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? identifier) loadKey,
    required TResult Function(String key) saveKey,
    required TResult Function() removeKey,
  }) {
    return removeKey();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? identifier)? loadKey,
    TResult? Function(String key)? saveKey,
    TResult? Function()? removeKey,
  }) {
    return removeKey?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? identifier)? loadKey,
    TResult Function(String key)? saveKey,
    TResult Function()? removeKey,
    required TResult orElse(),
  }) {
    if (removeKey != null) {
      return removeKey();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadKey value) loadKey,
    required TResult Function(_SaveKey value) saveKey,
    required TResult Function(_RemoveKey value) removeKey,
  }) {
    return removeKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadKey value)? loadKey,
    TResult? Function(_SaveKey value)? saveKey,
    TResult? Function(_RemoveKey value)? removeKey,
  }) {
    return removeKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadKey value)? loadKey,
    TResult Function(_SaveKey value)? saveKey,
    TResult Function(_RemoveKey value)? removeKey,
    required TResult orElse(),
  }) {
    if (removeKey != null) {
      return removeKey(this);
    }
    return orElse();
  }
}

abstract class _RemoveKey implements ManageKeyEvent {
  const factory _RemoveKey() = _$RemoveKeyImpl;
}

/// @nodoc
mixin _$ManageKeyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(String key) loadKeySuccess,
    required TResult Function() loadKeyFailure,
    required TResult Function() removeKeySuccess,
    required TResult Function() removeKeyFailure,
    required TResult Function() saveKeySuccess,
    required TResult Function() saveKeyFailure,
    required TResult Function() invalidKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(String key)? loadKeySuccess,
    TResult? Function()? loadKeyFailure,
    TResult? Function()? removeKeySuccess,
    TResult? Function()? removeKeyFailure,
    TResult? Function()? saveKeySuccess,
    TResult? Function()? saveKeyFailure,
    TResult? Function()? invalidKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String key)? loadKeySuccess,
    TResult Function()? loadKeyFailure,
    TResult Function()? removeKeySuccess,
    TResult Function()? removeKeyFailure,
    TResult Function()? saveKeySuccess,
    TResult Function()? saveKeyFailure,
    TResult Function()? invalidKey,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(LoadKeySuccess value) loadKeySuccess,
    required TResult Function(_LoadKeyFailure value) loadKeyFailure,
    required TResult Function(_RemoveKeySuccess value) removeKeySuccess,
    required TResult Function(_RemoveKeyFailure value) removeKeyFailure,
    required TResult Function(_SaveKeySuccess value) saveKeySuccess,
    required TResult Function(_SaveKeyFailure value) saveKeyFailure,
    required TResult Function(_InvalidKey value) invalidKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(LoadKeySuccess value)? loadKeySuccess,
    TResult? Function(_LoadKeyFailure value)? loadKeyFailure,
    TResult? Function(_RemoveKeySuccess value)? removeKeySuccess,
    TResult? Function(_RemoveKeyFailure value)? removeKeyFailure,
    TResult? Function(_SaveKeySuccess value)? saveKeySuccess,
    TResult? Function(_SaveKeyFailure value)? saveKeyFailure,
    TResult? Function(_InvalidKey value)? invalidKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(LoadKeySuccess value)? loadKeySuccess,
    TResult Function(_LoadKeyFailure value)? loadKeyFailure,
    TResult Function(_RemoveKeySuccess value)? removeKeySuccess,
    TResult Function(_RemoveKeyFailure value)? removeKeyFailure,
    TResult Function(_SaveKeySuccess value)? saveKeySuccess,
    TResult Function(_SaveKeyFailure value)? saveKeyFailure,
    TResult Function(_InvalidKey value)? invalidKey,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManageKeyStateCopyWith<$Res> {
  factory $ManageKeyStateCopyWith(
          ManageKeyState value, $Res Function(ManageKeyState) then) =
      _$ManageKeyStateCopyWithImpl<$Res, ManageKeyState>;
}

/// @nodoc
class _$ManageKeyStateCopyWithImpl<$Res, $Val extends ManageKeyState>
    implements $ManageKeyStateCopyWith<$Res> {
  _$ManageKeyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ManageKeyStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl() : super._();

  @override
  String toString() {
    return 'ManageKeyState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(String key) loadKeySuccess,
    required TResult Function() loadKeyFailure,
    required TResult Function() removeKeySuccess,
    required TResult Function() removeKeyFailure,
    required TResult Function() saveKeySuccess,
    required TResult Function() saveKeyFailure,
    required TResult Function() invalidKey,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(String key)? loadKeySuccess,
    TResult? Function()? loadKeyFailure,
    TResult? Function()? removeKeySuccess,
    TResult? Function()? removeKeyFailure,
    TResult? Function()? saveKeySuccess,
    TResult? Function()? saveKeyFailure,
    TResult? Function()? invalidKey,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String key)? loadKeySuccess,
    TResult Function()? loadKeyFailure,
    TResult Function()? removeKeySuccess,
    TResult Function()? removeKeyFailure,
    TResult Function()? saveKeySuccess,
    TResult Function()? saveKeyFailure,
    TResult Function()? invalidKey,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(LoadKeySuccess value) loadKeySuccess,
    required TResult Function(_LoadKeyFailure value) loadKeyFailure,
    required TResult Function(_RemoveKeySuccess value) removeKeySuccess,
    required TResult Function(_RemoveKeyFailure value) removeKeyFailure,
    required TResult Function(_SaveKeySuccess value) saveKeySuccess,
    required TResult Function(_SaveKeyFailure value) saveKeyFailure,
    required TResult Function(_InvalidKey value) invalidKey,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(LoadKeySuccess value)? loadKeySuccess,
    TResult? Function(_LoadKeyFailure value)? loadKeyFailure,
    TResult? Function(_RemoveKeySuccess value)? removeKeySuccess,
    TResult? Function(_RemoveKeyFailure value)? removeKeyFailure,
    TResult? Function(_SaveKeySuccess value)? saveKeySuccess,
    TResult? Function(_SaveKeyFailure value)? saveKeyFailure,
    TResult? Function(_InvalidKey value)? invalidKey,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(LoadKeySuccess value)? loadKeySuccess,
    TResult Function(_LoadKeyFailure value)? loadKeyFailure,
    TResult Function(_RemoveKeySuccess value)? removeKeySuccess,
    TResult Function(_RemoveKeyFailure value)? removeKeyFailure,
    TResult Function(_SaveKeySuccess value)? saveKeySuccess,
    TResult Function(_SaveKeyFailure value)? saveKeyFailure,
    TResult Function(_InvalidKey value)? invalidKey,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends ManageKeyState {
  const factory _Initial() = _$InitialImpl;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$InProgressImplCopyWith<$Res> {
  factory _$$InProgressImplCopyWith(
          _$InProgressImpl value, $Res Function(_$InProgressImpl) then) =
      __$$InProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InProgressImplCopyWithImpl<$Res>
    extends _$ManageKeyStateCopyWithImpl<$Res, _$InProgressImpl>
    implements _$$InProgressImplCopyWith<$Res> {
  __$$InProgressImplCopyWithImpl(
      _$InProgressImpl _value, $Res Function(_$InProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InProgressImpl extends _InProgress {
  const _$InProgressImpl() : super._();

  @override
  String toString() {
    return 'ManageKeyState.inProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(String key) loadKeySuccess,
    required TResult Function() loadKeyFailure,
    required TResult Function() removeKeySuccess,
    required TResult Function() removeKeyFailure,
    required TResult Function() saveKeySuccess,
    required TResult Function() saveKeyFailure,
    required TResult Function() invalidKey,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(String key)? loadKeySuccess,
    TResult? Function()? loadKeyFailure,
    TResult? Function()? removeKeySuccess,
    TResult? Function()? removeKeyFailure,
    TResult? Function()? saveKeySuccess,
    TResult? Function()? saveKeyFailure,
    TResult? Function()? invalidKey,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String key)? loadKeySuccess,
    TResult Function()? loadKeyFailure,
    TResult Function()? removeKeySuccess,
    TResult Function()? removeKeyFailure,
    TResult Function()? saveKeySuccess,
    TResult Function()? saveKeyFailure,
    TResult Function()? invalidKey,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(LoadKeySuccess value) loadKeySuccess,
    required TResult Function(_LoadKeyFailure value) loadKeyFailure,
    required TResult Function(_RemoveKeySuccess value) removeKeySuccess,
    required TResult Function(_RemoveKeyFailure value) removeKeyFailure,
    required TResult Function(_SaveKeySuccess value) saveKeySuccess,
    required TResult Function(_SaveKeyFailure value) saveKeyFailure,
    required TResult Function(_InvalidKey value) invalidKey,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(LoadKeySuccess value)? loadKeySuccess,
    TResult? Function(_LoadKeyFailure value)? loadKeyFailure,
    TResult? Function(_RemoveKeySuccess value)? removeKeySuccess,
    TResult? Function(_RemoveKeyFailure value)? removeKeyFailure,
    TResult? Function(_SaveKeySuccess value)? saveKeySuccess,
    TResult? Function(_SaveKeyFailure value)? saveKeyFailure,
    TResult? Function(_InvalidKey value)? invalidKey,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(LoadKeySuccess value)? loadKeySuccess,
    TResult Function(_LoadKeyFailure value)? loadKeyFailure,
    TResult Function(_RemoveKeySuccess value)? removeKeySuccess,
    TResult Function(_RemoveKeyFailure value)? removeKeyFailure,
    TResult Function(_SaveKeySuccess value)? saveKeySuccess,
    TResult Function(_SaveKeyFailure value)? saveKeyFailure,
    TResult Function(_InvalidKey value)? invalidKey,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress extends ManageKeyState {
  const factory _InProgress() = _$InProgressImpl;
  const _InProgress._() : super._();
}

/// @nodoc
abstract class _$$LoadKeySuccessImplCopyWith<$Res> {
  factory _$$LoadKeySuccessImplCopyWith(_$LoadKeySuccessImpl value,
          $Res Function(_$LoadKeySuccessImpl) then) =
      __$$LoadKeySuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String key});
}

/// @nodoc
class __$$LoadKeySuccessImplCopyWithImpl<$Res>
    extends _$ManageKeyStateCopyWithImpl<$Res, _$LoadKeySuccessImpl>
    implements _$$LoadKeySuccessImplCopyWith<$Res> {
  __$$LoadKeySuccessImplCopyWithImpl(
      _$LoadKeySuccessImpl _value, $Res Function(_$LoadKeySuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
  }) {
    return _then(_$LoadKeySuccessImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadKeySuccessImpl extends LoadKeySuccess {
  const _$LoadKeySuccessImpl({required this.key}) : super._();

  @override
  final String key;

  @override
  String toString() {
    return 'ManageKeyState.loadKeySuccess(key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadKeySuccessImpl &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadKeySuccessImplCopyWith<_$LoadKeySuccessImpl> get copyWith =>
      __$$LoadKeySuccessImplCopyWithImpl<_$LoadKeySuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(String key) loadKeySuccess,
    required TResult Function() loadKeyFailure,
    required TResult Function() removeKeySuccess,
    required TResult Function() removeKeyFailure,
    required TResult Function() saveKeySuccess,
    required TResult Function() saveKeyFailure,
    required TResult Function() invalidKey,
  }) {
    return loadKeySuccess(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(String key)? loadKeySuccess,
    TResult? Function()? loadKeyFailure,
    TResult? Function()? removeKeySuccess,
    TResult? Function()? removeKeyFailure,
    TResult? Function()? saveKeySuccess,
    TResult? Function()? saveKeyFailure,
    TResult? Function()? invalidKey,
  }) {
    return loadKeySuccess?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String key)? loadKeySuccess,
    TResult Function()? loadKeyFailure,
    TResult Function()? removeKeySuccess,
    TResult Function()? removeKeyFailure,
    TResult Function()? saveKeySuccess,
    TResult Function()? saveKeyFailure,
    TResult Function()? invalidKey,
    required TResult orElse(),
  }) {
    if (loadKeySuccess != null) {
      return loadKeySuccess(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(LoadKeySuccess value) loadKeySuccess,
    required TResult Function(_LoadKeyFailure value) loadKeyFailure,
    required TResult Function(_RemoveKeySuccess value) removeKeySuccess,
    required TResult Function(_RemoveKeyFailure value) removeKeyFailure,
    required TResult Function(_SaveKeySuccess value) saveKeySuccess,
    required TResult Function(_SaveKeyFailure value) saveKeyFailure,
    required TResult Function(_InvalidKey value) invalidKey,
  }) {
    return loadKeySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(LoadKeySuccess value)? loadKeySuccess,
    TResult? Function(_LoadKeyFailure value)? loadKeyFailure,
    TResult? Function(_RemoveKeySuccess value)? removeKeySuccess,
    TResult? Function(_RemoveKeyFailure value)? removeKeyFailure,
    TResult? Function(_SaveKeySuccess value)? saveKeySuccess,
    TResult? Function(_SaveKeyFailure value)? saveKeyFailure,
    TResult? Function(_InvalidKey value)? invalidKey,
  }) {
    return loadKeySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(LoadKeySuccess value)? loadKeySuccess,
    TResult Function(_LoadKeyFailure value)? loadKeyFailure,
    TResult Function(_RemoveKeySuccess value)? removeKeySuccess,
    TResult Function(_RemoveKeyFailure value)? removeKeyFailure,
    TResult Function(_SaveKeySuccess value)? saveKeySuccess,
    TResult Function(_SaveKeyFailure value)? saveKeyFailure,
    TResult Function(_InvalidKey value)? invalidKey,
    required TResult orElse(),
  }) {
    if (loadKeySuccess != null) {
      return loadKeySuccess(this);
    }
    return orElse();
  }
}

abstract class LoadKeySuccess extends ManageKeyState {
  const factory LoadKeySuccess({required final String key}) =
      _$LoadKeySuccessImpl;
  const LoadKeySuccess._() : super._();

  String get key;
  @JsonKey(ignore: true)
  _$$LoadKeySuccessImplCopyWith<_$LoadKeySuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadKeyFailureImplCopyWith<$Res> {
  factory _$$LoadKeyFailureImplCopyWith(_$LoadKeyFailureImpl value,
          $Res Function(_$LoadKeyFailureImpl) then) =
      __$$LoadKeyFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadKeyFailureImplCopyWithImpl<$Res>
    extends _$ManageKeyStateCopyWithImpl<$Res, _$LoadKeyFailureImpl>
    implements _$$LoadKeyFailureImplCopyWith<$Res> {
  __$$LoadKeyFailureImplCopyWithImpl(
      _$LoadKeyFailureImpl _value, $Res Function(_$LoadKeyFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadKeyFailureImpl extends _LoadKeyFailure {
  const _$LoadKeyFailureImpl() : super._();

  @override
  String toString() {
    return 'ManageKeyState.loadKeyFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadKeyFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(String key) loadKeySuccess,
    required TResult Function() loadKeyFailure,
    required TResult Function() removeKeySuccess,
    required TResult Function() removeKeyFailure,
    required TResult Function() saveKeySuccess,
    required TResult Function() saveKeyFailure,
    required TResult Function() invalidKey,
  }) {
    return loadKeyFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(String key)? loadKeySuccess,
    TResult? Function()? loadKeyFailure,
    TResult? Function()? removeKeySuccess,
    TResult? Function()? removeKeyFailure,
    TResult? Function()? saveKeySuccess,
    TResult? Function()? saveKeyFailure,
    TResult? Function()? invalidKey,
  }) {
    return loadKeyFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String key)? loadKeySuccess,
    TResult Function()? loadKeyFailure,
    TResult Function()? removeKeySuccess,
    TResult Function()? removeKeyFailure,
    TResult Function()? saveKeySuccess,
    TResult Function()? saveKeyFailure,
    TResult Function()? invalidKey,
    required TResult orElse(),
  }) {
    if (loadKeyFailure != null) {
      return loadKeyFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(LoadKeySuccess value) loadKeySuccess,
    required TResult Function(_LoadKeyFailure value) loadKeyFailure,
    required TResult Function(_RemoveKeySuccess value) removeKeySuccess,
    required TResult Function(_RemoveKeyFailure value) removeKeyFailure,
    required TResult Function(_SaveKeySuccess value) saveKeySuccess,
    required TResult Function(_SaveKeyFailure value) saveKeyFailure,
    required TResult Function(_InvalidKey value) invalidKey,
  }) {
    return loadKeyFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(LoadKeySuccess value)? loadKeySuccess,
    TResult? Function(_LoadKeyFailure value)? loadKeyFailure,
    TResult? Function(_RemoveKeySuccess value)? removeKeySuccess,
    TResult? Function(_RemoveKeyFailure value)? removeKeyFailure,
    TResult? Function(_SaveKeySuccess value)? saveKeySuccess,
    TResult? Function(_SaveKeyFailure value)? saveKeyFailure,
    TResult? Function(_InvalidKey value)? invalidKey,
  }) {
    return loadKeyFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(LoadKeySuccess value)? loadKeySuccess,
    TResult Function(_LoadKeyFailure value)? loadKeyFailure,
    TResult Function(_RemoveKeySuccess value)? removeKeySuccess,
    TResult Function(_RemoveKeyFailure value)? removeKeyFailure,
    TResult Function(_SaveKeySuccess value)? saveKeySuccess,
    TResult Function(_SaveKeyFailure value)? saveKeyFailure,
    TResult Function(_InvalidKey value)? invalidKey,
    required TResult orElse(),
  }) {
    if (loadKeyFailure != null) {
      return loadKeyFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadKeyFailure extends ManageKeyState {
  const factory _LoadKeyFailure() = _$LoadKeyFailureImpl;
  const _LoadKeyFailure._() : super._();
}

/// @nodoc
abstract class _$$RemoveKeySuccessImplCopyWith<$Res> {
  factory _$$RemoveKeySuccessImplCopyWith(_$RemoveKeySuccessImpl value,
          $Res Function(_$RemoveKeySuccessImpl) then) =
      __$$RemoveKeySuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveKeySuccessImplCopyWithImpl<$Res>
    extends _$ManageKeyStateCopyWithImpl<$Res, _$RemoveKeySuccessImpl>
    implements _$$RemoveKeySuccessImplCopyWith<$Res> {
  __$$RemoveKeySuccessImplCopyWithImpl(_$RemoveKeySuccessImpl _value,
      $Res Function(_$RemoveKeySuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveKeySuccessImpl extends _RemoveKeySuccess {
  const _$RemoveKeySuccessImpl() : super._();

  @override
  String toString() {
    return 'ManageKeyState.removeKeySuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveKeySuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(String key) loadKeySuccess,
    required TResult Function() loadKeyFailure,
    required TResult Function() removeKeySuccess,
    required TResult Function() removeKeyFailure,
    required TResult Function() saveKeySuccess,
    required TResult Function() saveKeyFailure,
    required TResult Function() invalidKey,
  }) {
    return removeKeySuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(String key)? loadKeySuccess,
    TResult? Function()? loadKeyFailure,
    TResult? Function()? removeKeySuccess,
    TResult? Function()? removeKeyFailure,
    TResult? Function()? saveKeySuccess,
    TResult? Function()? saveKeyFailure,
    TResult? Function()? invalidKey,
  }) {
    return removeKeySuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String key)? loadKeySuccess,
    TResult Function()? loadKeyFailure,
    TResult Function()? removeKeySuccess,
    TResult Function()? removeKeyFailure,
    TResult Function()? saveKeySuccess,
    TResult Function()? saveKeyFailure,
    TResult Function()? invalidKey,
    required TResult orElse(),
  }) {
    if (removeKeySuccess != null) {
      return removeKeySuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(LoadKeySuccess value) loadKeySuccess,
    required TResult Function(_LoadKeyFailure value) loadKeyFailure,
    required TResult Function(_RemoveKeySuccess value) removeKeySuccess,
    required TResult Function(_RemoveKeyFailure value) removeKeyFailure,
    required TResult Function(_SaveKeySuccess value) saveKeySuccess,
    required TResult Function(_SaveKeyFailure value) saveKeyFailure,
    required TResult Function(_InvalidKey value) invalidKey,
  }) {
    return removeKeySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(LoadKeySuccess value)? loadKeySuccess,
    TResult? Function(_LoadKeyFailure value)? loadKeyFailure,
    TResult? Function(_RemoveKeySuccess value)? removeKeySuccess,
    TResult? Function(_RemoveKeyFailure value)? removeKeyFailure,
    TResult? Function(_SaveKeySuccess value)? saveKeySuccess,
    TResult? Function(_SaveKeyFailure value)? saveKeyFailure,
    TResult? Function(_InvalidKey value)? invalidKey,
  }) {
    return removeKeySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(LoadKeySuccess value)? loadKeySuccess,
    TResult Function(_LoadKeyFailure value)? loadKeyFailure,
    TResult Function(_RemoveKeySuccess value)? removeKeySuccess,
    TResult Function(_RemoveKeyFailure value)? removeKeyFailure,
    TResult Function(_SaveKeySuccess value)? saveKeySuccess,
    TResult Function(_SaveKeyFailure value)? saveKeyFailure,
    TResult Function(_InvalidKey value)? invalidKey,
    required TResult orElse(),
  }) {
    if (removeKeySuccess != null) {
      return removeKeySuccess(this);
    }
    return orElse();
  }
}

abstract class _RemoveKeySuccess extends ManageKeyState {
  const factory _RemoveKeySuccess() = _$RemoveKeySuccessImpl;
  const _RemoveKeySuccess._() : super._();
}

/// @nodoc
abstract class _$$RemoveKeyFailureImplCopyWith<$Res> {
  factory _$$RemoveKeyFailureImplCopyWith(_$RemoveKeyFailureImpl value,
          $Res Function(_$RemoveKeyFailureImpl) then) =
      __$$RemoveKeyFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveKeyFailureImplCopyWithImpl<$Res>
    extends _$ManageKeyStateCopyWithImpl<$Res, _$RemoveKeyFailureImpl>
    implements _$$RemoveKeyFailureImplCopyWith<$Res> {
  __$$RemoveKeyFailureImplCopyWithImpl(_$RemoveKeyFailureImpl _value,
      $Res Function(_$RemoveKeyFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveKeyFailureImpl extends _RemoveKeyFailure {
  const _$RemoveKeyFailureImpl() : super._();

  @override
  String toString() {
    return 'ManageKeyState.removeKeyFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveKeyFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(String key) loadKeySuccess,
    required TResult Function() loadKeyFailure,
    required TResult Function() removeKeySuccess,
    required TResult Function() removeKeyFailure,
    required TResult Function() saveKeySuccess,
    required TResult Function() saveKeyFailure,
    required TResult Function() invalidKey,
  }) {
    return removeKeyFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(String key)? loadKeySuccess,
    TResult? Function()? loadKeyFailure,
    TResult? Function()? removeKeySuccess,
    TResult? Function()? removeKeyFailure,
    TResult? Function()? saveKeySuccess,
    TResult? Function()? saveKeyFailure,
    TResult? Function()? invalidKey,
  }) {
    return removeKeyFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String key)? loadKeySuccess,
    TResult Function()? loadKeyFailure,
    TResult Function()? removeKeySuccess,
    TResult Function()? removeKeyFailure,
    TResult Function()? saveKeySuccess,
    TResult Function()? saveKeyFailure,
    TResult Function()? invalidKey,
    required TResult orElse(),
  }) {
    if (removeKeyFailure != null) {
      return removeKeyFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(LoadKeySuccess value) loadKeySuccess,
    required TResult Function(_LoadKeyFailure value) loadKeyFailure,
    required TResult Function(_RemoveKeySuccess value) removeKeySuccess,
    required TResult Function(_RemoveKeyFailure value) removeKeyFailure,
    required TResult Function(_SaveKeySuccess value) saveKeySuccess,
    required TResult Function(_SaveKeyFailure value) saveKeyFailure,
    required TResult Function(_InvalidKey value) invalidKey,
  }) {
    return removeKeyFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(LoadKeySuccess value)? loadKeySuccess,
    TResult? Function(_LoadKeyFailure value)? loadKeyFailure,
    TResult? Function(_RemoveKeySuccess value)? removeKeySuccess,
    TResult? Function(_RemoveKeyFailure value)? removeKeyFailure,
    TResult? Function(_SaveKeySuccess value)? saveKeySuccess,
    TResult? Function(_SaveKeyFailure value)? saveKeyFailure,
    TResult? Function(_InvalidKey value)? invalidKey,
  }) {
    return removeKeyFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(LoadKeySuccess value)? loadKeySuccess,
    TResult Function(_LoadKeyFailure value)? loadKeyFailure,
    TResult Function(_RemoveKeySuccess value)? removeKeySuccess,
    TResult Function(_RemoveKeyFailure value)? removeKeyFailure,
    TResult Function(_SaveKeySuccess value)? saveKeySuccess,
    TResult Function(_SaveKeyFailure value)? saveKeyFailure,
    TResult Function(_InvalidKey value)? invalidKey,
    required TResult orElse(),
  }) {
    if (removeKeyFailure != null) {
      return removeKeyFailure(this);
    }
    return orElse();
  }
}

abstract class _RemoveKeyFailure extends ManageKeyState {
  const factory _RemoveKeyFailure() = _$RemoveKeyFailureImpl;
  const _RemoveKeyFailure._() : super._();
}

/// @nodoc
abstract class _$$SaveKeySuccessImplCopyWith<$Res> {
  factory _$$SaveKeySuccessImplCopyWith(_$SaveKeySuccessImpl value,
          $Res Function(_$SaveKeySuccessImpl) then) =
      __$$SaveKeySuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveKeySuccessImplCopyWithImpl<$Res>
    extends _$ManageKeyStateCopyWithImpl<$Res, _$SaveKeySuccessImpl>
    implements _$$SaveKeySuccessImplCopyWith<$Res> {
  __$$SaveKeySuccessImplCopyWithImpl(
      _$SaveKeySuccessImpl _value, $Res Function(_$SaveKeySuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SaveKeySuccessImpl extends _SaveKeySuccess {
  const _$SaveKeySuccessImpl() : super._();

  @override
  String toString() {
    return 'ManageKeyState.saveKeySuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveKeySuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(String key) loadKeySuccess,
    required TResult Function() loadKeyFailure,
    required TResult Function() removeKeySuccess,
    required TResult Function() removeKeyFailure,
    required TResult Function() saveKeySuccess,
    required TResult Function() saveKeyFailure,
    required TResult Function() invalidKey,
  }) {
    return saveKeySuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(String key)? loadKeySuccess,
    TResult? Function()? loadKeyFailure,
    TResult? Function()? removeKeySuccess,
    TResult? Function()? removeKeyFailure,
    TResult? Function()? saveKeySuccess,
    TResult? Function()? saveKeyFailure,
    TResult? Function()? invalidKey,
  }) {
    return saveKeySuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String key)? loadKeySuccess,
    TResult Function()? loadKeyFailure,
    TResult Function()? removeKeySuccess,
    TResult Function()? removeKeyFailure,
    TResult Function()? saveKeySuccess,
    TResult Function()? saveKeyFailure,
    TResult Function()? invalidKey,
    required TResult orElse(),
  }) {
    if (saveKeySuccess != null) {
      return saveKeySuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(LoadKeySuccess value) loadKeySuccess,
    required TResult Function(_LoadKeyFailure value) loadKeyFailure,
    required TResult Function(_RemoveKeySuccess value) removeKeySuccess,
    required TResult Function(_RemoveKeyFailure value) removeKeyFailure,
    required TResult Function(_SaveKeySuccess value) saveKeySuccess,
    required TResult Function(_SaveKeyFailure value) saveKeyFailure,
    required TResult Function(_InvalidKey value) invalidKey,
  }) {
    return saveKeySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(LoadKeySuccess value)? loadKeySuccess,
    TResult? Function(_LoadKeyFailure value)? loadKeyFailure,
    TResult? Function(_RemoveKeySuccess value)? removeKeySuccess,
    TResult? Function(_RemoveKeyFailure value)? removeKeyFailure,
    TResult? Function(_SaveKeySuccess value)? saveKeySuccess,
    TResult? Function(_SaveKeyFailure value)? saveKeyFailure,
    TResult? Function(_InvalidKey value)? invalidKey,
  }) {
    return saveKeySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(LoadKeySuccess value)? loadKeySuccess,
    TResult Function(_LoadKeyFailure value)? loadKeyFailure,
    TResult Function(_RemoveKeySuccess value)? removeKeySuccess,
    TResult Function(_RemoveKeyFailure value)? removeKeyFailure,
    TResult Function(_SaveKeySuccess value)? saveKeySuccess,
    TResult Function(_SaveKeyFailure value)? saveKeyFailure,
    TResult Function(_InvalidKey value)? invalidKey,
    required TResult orElse(),
  }) {
    if (saveKeySuccess != null) {
      return saveKeySuccess(this);
    }
    return orElse();
  }
}

abstract class _SaveKeySuccess extends ManageKeyState {
  const factory _SaveKeySuccess() = _$SaveKeySuccessImpl;
  const _SaveKeySuccess._() : super._();
}

/// @nodoc
abstract class _$$SaveKeyFailureImplCopyWith<$Res> {
  factory _$$SaveKeyFailureImplCopyWith(_$SaveKeyFailureImpl value,
          $Res Function(_$SaveKeyFailureImpl) then) =
      __$$SaveKeyFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveKeyFailureImplCopyWithImpl<$Res>
    extends _$ManageKeyStateCopyWithImpl<$Res, _$SaveKeyFailureImpl>
    implements _$$SaveKeyFailureImplCopyWith<$Res> {
  __$$SaveKeyFailureImplCopyWithImpl(
      _$SaveKeyFailureImpl _value, $Res Function(_$SaveKeyFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SaveKeyFailureImpl extends _SaveKeyFailure {
  const _$SaveKeyFailureImpl() : super._();

  @override
  String toString() {
    return 'ManageKeyState.saveKeyFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveKeyFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(String key) loadKeySuccess,
    required TResult Function() loadKeyFailure,
    required TResult Function() removeKeySuccess,
    required TResult Function() removeKeyFailure,
    required TResult Function() saveKeySuccess,
    required TResult Function() saveKeyFailure,
    required TResult Function() invalidKey,
  }) {
    return saveKeyFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(String key)? loadKeySuccess,
    TResult? Function()? loadKeyFailure,
    TResult? Function()? removeKeySuccess,
    TResult? Function()? removeKeyFailure,
    TResult? Function()? saveKeySuccess,
    TResult? Function()? saveKeyFailure,
    TResult? Function()? invalidKey,
  }) {
    return saveKeyFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String key)? loadKeySuccess,
    TResult Function()? loadKeyFailure,
    TResult Function()? removeKeySuccess,
    TResult Function()? removeKeyFailure,
    TResult Function()? saveKeySuccess,
    TResult Function()? saveKeyFailure,
    TResult Function()? invalidKey,
    required TResult orElse(),
  }) {
    if (saveKeyFailure != null) {
      return saveKeyFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(LoadKeySuccess value) loadKeySuccess,
    required TResult Function(_LoadKeyFailure value) loadKeyFailure,
    required TResult Function(_RemoveKeySuccess value) removeKeySuccess,
    required TResult Function(_RemoveKeyFailure value) removeKeyFailure,
    required TResult Function(_SaveKeySuccess value) saveKeySuccess,
    required TResult Function(_SaveKeyFailure value) saveKeyFailure,
    required TResult Function(_InvalidKey value) invalidKey,
  }) {
    return saveKeyFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(LoadKeySuccess value)? loadKeySuccess,
    TResult? Function(_LoadKeyFailure value)? loadKeyFailure,
    TResult? Function(_RemoveKeySuccess value)? removeKeySuccess,
    TResult? Function(_RemoveKeyFailure value)? removeKeyFailure,
    TResult? Function(_SaveKeySuccess value)? saveKeySuccess,
    TResult? Function(_SaveKeyFailure value)? saveKeyFailure,
    TResult? Function(_InvalidKey value)? invalidKey,
  }) {
    return saveKeyFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(LoadKeySuccess value)? loadKeySuccess,
    TResult Function(_LoadKeyFailure value)? loadKeyFailure,
    TResult Function(_RemoveKeySuccess value)? removeKeySuccess,
    TResult Function(_RemoveKeyFailure value)? removeKeyFailure,
    TResult Function(_SaveKeySuccess value)? saveKeySuccess,
    TResult Function(_SaveKeyFailure value)? saveKeyFailure,
    TResult Function(_InvalidKey value)? invalidKey,
    required TResult orElse(),
  }) {
    if (saveKeyFailure != null) {
      return saveKeyFailure(this);
    }
    return orElse();
  }
}

abstract class _SaveKeyFailure extends ManageKeyState {
  const factory _SaveKeyFailure() = _$SaveKeyFailureImpl;
  const _SaveKeyFailure._() : super._();
}

/// @nodoc
abstract class _$$InvalidKeyImplCopyWith<$Res> {
  factory _$$InvalidKeyImplCopyWith(
          _$InvalidKeyImpl value, $Res Function(_$InvalidKeyImpl) then) =
      __$$InvalidKeyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidKeyImplCopyWithImpl<$Res>
    extends _$ManageKeyStateCopyWithImpl<$Res, _$InvalidKeyImpl>
    implements _$$InvalidKeyImplCopyWith<$Res> {
  __$$InvalidKeyImplCopyWithImpl(
      _$InvalidKeyImpl _value, $Res Function(_$InvalidKeyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidKeyImpl extends _InvalidKey {
  const _$InvalidKeyImpl() : super._();

  @override
  String toString() {
    return 'ManageKeyState.invalidKey()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidKeyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(String key) loadKeySuccess,
    required TResult Function() loadKeyFailure,
    required TResult Function() removeKeySuccess,
    required TResult Function() removeKeyFailure,
    required TResult Function() saveKeySuccess,
    required TResult Function() saveKeyFailure,
    required TResult Function() invalidKey,
  }) {
    return invalidKey();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(String key)? loadKeySuccess,
    TResult? Function()? loadKeyFailure,
    TResult? Function()? removeKeySuccess,
    TResult? Function()? removeKeyFailure,
    TResult? Function()? saveKeySuccess,
    TResult? Function()? saveKeyFailure,
    TResult? Function()? invalidKey,
  }) {
    return invalidKey?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String key)? loadKeySuccess,
    TResult Function()? loadKeyFailure,
    TResult Function()? removeKeySuccess,
    TResult Function()? removeKeyFailure,
    TResult Function()? saveKeySuccess,
    TResult Function()? saveKeyFailure,
    TResult Function()? invalidKey,
    required TResult orElse(),
  }) {
    if (invalidKey != null) {
      return invalidKey();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(LoadKeySuccess value) loadKeySuccess,
    required TResult Function(_LoadKeyFailure value) loadKeyFailure,
    required TResult Function(_RemoveKeySuccess value) removeKeySuccess,
    required TResult Function(_RemoveKeyFailure value) removeKeyFailure,
    required TResult Function(_SaveKeySuccess value) saveKeySuccess,
    required TResult Function(_SaveKeyFailure value) saveKeyFailure,
    required TResult Function(_InvalidKey value) invalidKey,
  }) {
    return invalidKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(LoadKeySuccess value)? loadKeySuccess,
    TResult? Function(_LoadKeyFailure value)? loadKeyFailure,
    TResult? Function(_RemoveKeySuccess value)? removeKeySuccess,
    TResult? Function(_RemoveKeyFailure value)? removeKeyFailure,
    TResult? Function(_SaveKeySuccess value)? saveKeySuccess,
    TResult? Function(_SaveKeyFailure value)? saveKeyFailure,
    TResult? Function(_InvalidKey value)? invalidKey,
  }) {
    return invalidKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(LoadKeySuccess value)? loadKeySuccess,
    TResult Function(_LoadKeyFailure value)? loadKeyFailure,
    TResult Function(_RemoveKeySuccess value)? removeKeySuccess,
    TResult Function(_RemoveKeyFailure value)? removeKeyFailure,
    TResult Function(_SaveKeySuccess value)? saveKeySuccess,
    TResult Function(_SaveKeyFailure value)? saveKeyFailure,
    TResult Function(_InvalidKey value)? invalidKey,
    required TResult orElse(),
  }) {
    if (invalidKey != null) {
      return invalidKey(this);
    }
    return orElse();
  }
}

abstract class _InvalidKey extends ManageKeyState {
  const factory _InvalidKey() = _$InvalidKeyImpl;
  const _InvalidKey._() : super._();
}
