// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prompt_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PromptEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPrompts,
    required TResult Function() refreshed,
    required TResult Function(String promptId) promptSelected,
    required TResult Function() promptUnselected,
    required TResult Function(String search) searchChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPrompts,
    TResult? Function()? refreshed,
    TResult? Function(String promptId)? promptSelected,
    TResult? Function()? promptUnselected,
    TResult? Function(String search)? searchChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPrompts,
    TResult Function()? refreshed,
    TResult Function(String promptId)? promptSelected,
    TResult Function()? promptUnselected,
    TResult Function(String search)? searchChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPrompts value) getPrompts,
    required TResult Function(_Refreshed value) refreshed,
    required TResult Function(_PromptSelected value) promptSelected,
    required TResult Function(_PromptUnselected value) promptUnselected,
    required TResult Function(_SearchChanged value) searchChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPrompts value)? getPrompts,
    TResult? Function(_Refreshed value)? refreshed,
    TResult? Function(_PromptSelected value)? promptSelected,
    TResult? Function(_PromptUnselected value)? promptUnselected,
    TResult? Function(_SearchChanged value)? searchChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPrompts value)? getPrompts,
    TResult Function(_Refreshed value)? refreshed,
    TResult Function(_PromptSelected value)? promptSelected,
    TResult Function(_PromptUnselected value)? promptUnselected,
    TResult Function(_SearchChanged value)? searchChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromptEventCopyWith<$Res> {
  factory $PromptEventCopyWith(
          PromptEvent value, $Res Function(PromptEvent) then) =
      _$PromptEventCopyWithImpl<$Res, PromptEvent>;
}

/// @nodoc
class _$PromptEventCopyWithImpl<$Res, $Val extends PromptEvent>
    implements $PromptEventCopyWith<$Res> {
  _$PromptEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPromptsImplCopyWith<$Res> {
  factory _$$GetPromptsImplCopyWith(
          _$GetPromptsImpl value, $Res Function(_$GetPromptsImpl) then) =
      __$$GetPromptsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPromptsImplCopyWithImpl<$Res>
    extends _$PromptEventCopyWithImpl<$Res, _$GetPromptsImpl>
    implements _$$GetPromptsImplCopyWith<$Res> {
  __$$GetPromptsImplCopyWithImpl(
      _$GetPromptsImpl _value, $Res Function(_$GetPromptsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPromptsImpl implements _GetPrompts {
  const _$GetPromptsImpl();

  @override
  String toString() {
    return 'PromptEvent.getPrompts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPromptsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPrompts,
    required TResult Function() refreshed,
    required TResult Function(String promptId) promptSelected,
    required TResult Function() promptUnselected,
    required TResult Function(String search) searchChanged,
  }) {
    return getPrompts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPrompts,
    TResult? Function()? refreshed,
    TResult? Function(String promptId)? promptSelected,
    TResult? Function()? promptUnselected,
    TResult? Function(String search)? searchChanged,
  }) {
    return getPrompts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPrompts,
    TResult Function()? refreshed,
    TResult Function(String promptId)? promptSelected,
    TResult Function()? promptUnselected,
    TResult Function(String search)? searchChanged,
    required TResult orElse(),
  }) {
    if (getPrompts != null) {
      return getPrompts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPrompts value) getPrompts,
    required TResult Function(_Refreshed value) refreshed,
    required TResult Function(_PromptSelected value) promptSelected,
    required TResult Function(_PromptUnselected value) promptUnselected,
    required TResult Function(_SearchChanged value) searchChanged,
  }) {
    return getPrompts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPrompts value)? getPrompts,
    TResult? Function(_Refreshed value)? refreshed,
    TResult? Function(_PromptSelected value)? promptSelected,
    TResult? Function(_PromptUnselected value)? promptUnselected,
    TResult? Function(_SearchChanged value)? searchChanged,
  }) {
    return getPrompts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPrompts value)? getPrompts,
    TResult Function(_Refreshed value)? refreshed,
    TResult Function(_PromptSelected value)? promptSelected,
    TResult Function(_PromptUnselected value)? promptUnselected,
    TResult Function(_SearchChanged value)? searchChanged,
    required TResult orElse(),
  }) {
    if (getPrompts != null) {
      return getPrompts(this);
    }
    return orElse();
  }
}

abstract class _GetPrompts implements PromptEvent {
  const factory _GetPrompts() = _$GetPromptsImpl;
}

/// @nodoc
abstract class _$$RefreshedImplCopyWith<$Res> {
  factory _$$RefreshedImplCopyWith(
          _$RefreshedImpl value, $Res Function(_$RefreshedImpl) then) =
      __$$RefreshedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshedImplCopyWithImpl<$Res>
    extends _$PromptEventCopyWithImpl<$Res, _$RefreshedImpl>
    implements _$$RefreshedImplCopyWith<$Res> {
  __$$RefreshedImplCopyWithImpl(
      _$RefreshedImpl _value, $Res Function(_$RefreshedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshedImpl implements _Refreshed {
  const _$RefreshedImpl();

  @override
  String toString() {
    return 'PromptEvent.refreshed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPrompts,
    required TResult Function() refreshed,
    required TResult Function(String promptId) promptSelected,
    required TResult Function() promptUnselected,
    required TResult Function(String search) searchChanged,
  }) {
    return refreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPrompts,
    TResult? Function()? refreshed,
    TResult? Function(String promptId)? promptSelected,
    TResult? Function()? promptUnselected,
    TResult? Function(String search)? searchChanged,
  }) {
    return refreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPrompts,
    TResult Function()? refreshed,
    TResult Function(String promptId)? promptSelected,
    TResult Function()? promptUnselected,
    TResult Function(String search)? searchChanged,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPrompts value) getPrompts,
    required TResult Function(_Refreshed value) refreshed,
    required TResult Function(_PromptSelected value) promptSelected,
    required TResult Function(_PromptUnselected value) promptUnselected,
    required TResult Function(_SearchChanged value) searchChanged,
  }) {
    return refreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPrompts value)? getPrompts,
    TResult? Function(_Refreshed value)? refreshed,
    TResult? Function(_PromptSelected value)? promptSelected,
    TResult? Function(_PromptUnselected value)? promptUnselected,
    TResult? Function(_SearchChanged value)? searchChanged,
  }) {
    return refreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPrompts value)? getPrompts,
    TResult Function(_Refreshed value)? refreshed,
    TResult Function(_PromptSelected value)? promptSelected,
    TResult Function(_PromptUnselected value)? promptUnselected,
    TResult Function(_SearchChanged value)? searchChanged,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed(this);
    }
    return orElse();
  }
}

abstract class _Refreshed implements PromptEvent {
  const factory _Refreshed() = _$RefreshedImpl;
}

/// @nodoc
abstract class _$$PromptSelectedImplCopyWith<$Res> {
  factory _$$PromptSelectedImplCopyWith(_$PromptSelectedImpl value,
          $Res Function(_$PromptSelectedImpl) then) =
      __$$PromptSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String promptId});
}

/// @nodoc
class __$$PromptSelectedImplCopyWithImpl<$Res>
    extends _$PromptEventCopyWithImpl<$Res, _$PromptSelectedImpl>
    implements _$$PromptSelectedImplCopyWith<$Res> {
  __$$PromptSelectedImplCopyWithImpl(
      _$PromptSelectedImpl _value, $Res Function(_$PromptSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promptId = null,
  }) {
    return _then(_$PromptSelectedImpl(
      null == promptId
          ? _value.promptId
          : promptId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PromptSelectedImpl implements _PromptSelected {
  const _$PromptSelectedImpl(this.promptId);

  @override
  final String promptId;

  @override
  String toString() {
    return 'PromptEvent.promptSelected(promptId: $promptId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromptSelectedImpl &&
            (identical(other.promptId, promptId) ||
                other.promptId == promptId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, promptId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromptSelectedImplCopyWith<_$PromptSelectedImpl> get copyWith =>
      __$$PromptSelectedImplCopyWithImpl<_$PromptSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPrompts,
    required TResult Function() refreshed,
    required TResult Function(String promptId) promptSelected,
    required TResult Function() promptUnselected,
    required TResult Function(String search) searchChanged,
  }) {
    return promptSelected(promptId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPrompts,
    TResult? Function()? refreshed,
    TResult? Function(String promptId)? promptSelected,
    TResult? Function()? promptUnselected,
    TResult? Function(String search)? searchChanged,
  }) {
    return promptSelected?.call(promptId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPrompts,
    TResult Function()? refreshed,
    TResult Function(String promptId)? promptSelected,
    TResult Function()? promptUnselected,
    TResult Function(String search)? searchChanged,
    required TResult orElse(),
  }) {
    if (promptSelected != null) {
      return promptSelected(promptId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPrompts value) getPrompts,
    required TResult Function(_Refreshed value) refreshed,
    required TResult Function(_PromptSelected value) promptSelected,
    required TResult Function(_PromptUnselected value) promptUnselected,
    required TResult Function(_SearchChanged value) searchChanged,
  }) {
    return promptSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPrompts value)? getPrompts,
    TResult? Function(_Refreshed value)? refreshed,
    TResult? Function(_PromptSelected value)? promptSelected,
    TResult? Function(_PromptUnselected value)? promptUnselected,
    TResult? Function(_SearchChanged value)? searchChanged,
  }) {
    return promptSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPrompts value)? getPrompts,
    TResult Function(_Refreshed value)? refreshed,
    TResult Function(_PromptSelected value)? promptSelected,
    TResult Function(_PromptUnselected value)? promptUnselected,
    TResult Function(_SearchChanged value)? searchChanged,
    required TResult orElse(),
  }) {
    if (promptSelected != null) {
      return promptSelected(this);
    }
    return orElse();
  }
}

abstract class _PromptSelected implements PromptEvent {
  const factory _PromptSelected(final String promptId) = _$PromptSelectedImpl;

  String get promptId;
  @JsonKey(ignore: true)
  _$$PromptSelectedImplCopyWith<_$PromptSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PromptUnselectedImplCopyWith<$Res> {
  factory _$$PromptUnselectedImplCopyWith(_$PromptUnselectedImpl value,
          $Res Function(_$PromptUnselectedImpl) then) =
      __$$PromptUnselectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PromptUnselectedImplCopyWithImpl<$Res>
    extends _$PromptEventCopyWithImpl<$Res, _$PromptUnselectedImpl>
    implements _$$PromptUnselectedImplCopyWith<$Res> {
  __$$PromptUnselectedImplCopyWithImpl(_$PromptUnselectedImpl _value,
      $Res Function(_$PromptUnselectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PromptUnselectedImpl implements _PromptUnselected {
  const _$PromptUnselectedImpl();

  @override
  String toString() {
    return 'PromptEvent.promptUnselected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PromptUnselectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPrompts,
    required TResult Function() refreshed,
    required TResult Function(String promptId) promptSelected,
    required TResult Function() promptUnselected,
    required TResult Function(String search) searchChanged,
  }) {
    return promptUnselected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPrompts,
    TResult? Function()? refreshed,
    TResult? Function(String promptId)? promptSelected,
    TResult? Function()? promptUnselected,
    TResult? Function(String search)? searchChanged,
  }) {
    return promptUnselected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPrompts,
    TResult Function()? refreshed,
    TResult Function(String promptId)? promptSelected,
    TResult Function()? promptUnselected,
    TResult Function(String search)? searchChanged,
    required TResult orElse(),
  }) {
    if (promptUnselected != null) {
      return promptUnselected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPrompts value) getPrompts,
    required TResult Function(_Refreshed value) refreshed,
    required TResult Function(_PromptSelected value) promptSelected,
    required TResult Function(_PromptUnselected value) promptUnselected,
    required TResult Function(_SearchChanged value) searchChanged,
  }) {
    return promptUnselected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPrompts value)? getPrompts,
    TResult? Function(_Refreshed value)? refreshed,
    TResult? Function(_PromptSelected value)? promptSelected,
    TResult? Function(_PromptUnselected value)? promptUnselected,
    TResult? Function(_SearchChanged value)? searchChanged,
  }) {
    return promptUnselected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPrompts value)? getPrompts,
    TResult Function(_Refreshed value)? refreshed,
    TResult Function(_PromptSelected value)? promptSelected,
    TResult Function(_PromptUnselected value)? promptUnselected,
    TResult Function(_SearchChanged value)? searchChanged,
    required TResult orElse(),
  }) {
    if (promptUnselected != null) {
      return promptUnselected(this);
    }
    return orElse();
  }
}

abstract class _PromptUnselected implements PromptEvent {
  const factory _PromptUnselected() = _$PromptUnselectedImpl;
}

/// @nodoc
abstract class _$$SearchChangedImplCopyWith<$Res> {
  factory _$$SearchChangedImplCopyWith(
          _$SearchChangedImpl value, $Res Function(_$SearchChangedImpl) then) =
      __$$SearchChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String search});
}

/// @nodoc
class __$$SearchChangedImplCopyWithImpl<$Res>
    extends _$PromptEventCopyWithImpl<$Res, _$SearchChangedImpl>
    implements _$$SearchChangedImplCopyWith<$Res> {
  __$$SearchChangedImplCopyWithImpl(
      _$SearchChangedImpl _value, $Res Function(_$SearchChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
  }) {
    return _then(_$SearchChangedImpl(
      null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchChangedImpl implements _SearchChanged {
  const _$SearchChangedImpl(this.search);

  @override
  final String search;

  @override
  String toString() {
    return 'PromptEvent.searchChanged(search: $search)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchChangedImpl &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchChangedImplCopyWith<_$SearchChangedImpl> get copyWith =>
      __$$SearchChangedImplCopyWithImpl<_$SearchChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPrompts,
    required TResult Function() refreshed,
    required TResult Function(String promptId) promptSelected,
    required TResult Function() promptUnselected,
    required TResult Function(String search) searchChanged,
  }) {
    return searchChanged(search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPrompts,
    TResult? Function()? refreshed,
    TResult? Function(String promptId)? promptSelected,
    TResult? Function()? promptUnselected,
    TResult? Function(String search)? searchChanged,
  }) {
    return searchChanged?.call(search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPrompts,
    TResult Function()? refreshed,
    TResult Function(String promptId)? promptSelected,
    TResult Function()? promptUnselected,
    TResult Function(String search)? searchChanged,
    required TResult orElse(),
  }) {
    if (searchChanged != null) {
      return searchChanged(search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPrompts value) getPrompts,
    required TResult Function(_Refreshed value) refreshed,
    required TResult Function(_PromptSelected value) promptSelected,
    required TResult Function(_PromptUnselected value) promptUnselected,
    required TResult Function(_SearchChanged value) searchChanged,
  }) {
    return searchChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPrompts value)? getPrompts,
    TResult? Function(_Refreshed value)? refreshed,
    TResult? Function(_PromptSelected value)? promptSelected,
    TResult? Function(_PromptUnselected value)? promptUnselected,
    TResult? Function(_SearchChanged value)? searchChanged,
  }) {
    return searchChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPrompts value)? getPrompts,
    TResult Function(_Refreshed value)? refreshed,
    TResult Function(_PromptSelected value)? promptSelected,
    TResult Function(_PromptUnselected value)? promptUnselected,
    TResult Function(_SearchChanged value)? searchChanged,
    required TResult orElse(),
  }) {
    if (searchChanged != null) {
      return searchChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchChanged implements PromptEvent {
  const factory _SearchChanged(final String search) = _$SearchChangedImpl;

  String get search;
  @JsonKey(ignore: true)
  _$$SearchChangedImplCopyWith<_$SearchChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PromptState {
  PromptModelState get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PromptModelState data) initial,
    required TResult Function(PromptModelState data) loadInProgress,
    required TResult Function(PromptModelState data) loadSuccess,
    required TResult Function(PromptModelState data) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PromptModelState data)? initial,
    TResult? Function(PromptModelState data)? loadInProgress,
    TResult? Function(PromptModelState data)? loadSuccess,
    TResult? Function(PromptModelState data)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PromptModelState data)? initial,
    TResult Function(PromptModelState data)? loadInProgress,
    TResult Function(PromptModelState data)? loadSuccess,
    TResult Function(PromptModelState data)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgess value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgess value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgess value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PromptStateCopyWith<PromptState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromptStateCopyWith<$Res> {
  factory $PromptStateCopyWith(
          PromptState value, $Res Function(PromptState) then) =
      _$PromptStateCopyWithImpl<$Res, PromptState>;
  @useResult
  $Res call({PromptModelState data});

  $PromptModelStateCopyWith<$Res> get data;
}

/// @nodoc
class _$PromptStateCopyWithImpl<$Res, $Val extends PromptState>
    implements $PromptStateCopyWith<$Res> {
  _$PromptStateCopyWithImpl(this._value, this._then);

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
              as PromptModelState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PromptModelStateCopyWith<$Res> get data {
    return $PromptModelStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $PromptStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PromptModelState data});

  @override
  $PromptModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PromptStateCopyWithImpl<$Res, _$InitialImpl>
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
              as PromptModelState,
    ));
  }
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl({required this.data}) : super._();

  @override
  final PromptModelState data;

  @override
  String toString() {
    return 'PromptState.initial(data: $data)';
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
    required TResult Function(PromptModelState data) initial,
    required TResult Function(PromptModelState data) loadInProgress,
    required TResult Function(PromptModelState data) loadSuccess,
    required TResult Function(PromptModelState data) loadFailure,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PromptModelState data)? initial,
    TResult? Function(PromptModelState data)? loadInProgress,
    TResult? Function(PromptModelState data)? loadSuccess,
    TResult? Function(PromptModelState data)? loadFailure,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PromptModelState data)? initial,
    TResult Function(PromptModelState data)? loadInProgress,
    TResult Function(PromptModelState data)? loadSuccess,
    TResult Function(PromptModelState data)? loadFailure,
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
    required TResult Function(_LoadInProgess value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgess value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgess value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends PromptState {
  const factory _Initial({required final PromptModelState data}) =
      _$InitialImpl;
  const _Initial._() : super._();

  @override
  PromptModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadInProgessImplCopyWith<$Res>
    implements $PromptStateCopyWith<$Res> {
  factory _$$LoadInProgessImplCopyWith(
          _$LoadInProgessImpl value, $Res Function(_$LoadInProgessImpl) then) =
      __$$LoadInProgessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PromptModelState data});

  @override
  $PromptModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoadInProgessImplCopyWithImpl<$Res>
    extends _$PromptStateCopyWithImpl<$Res, _$LoadInProgessImpl>
    implements _$$LoadInProgessImplCopyWith<$Res> {
  __$$LoadInProgessImplCopyWithImpl(
      _$LoadInProgessImpl _value, $Res Function(_$LoadInProgessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadInProgessImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PromptModelState,
    ));
  }
}

/// @nodoc

class _$LoadInProgessImpl extends _LoadInProgess {
  const _$LoadInProgessImpl({required this.data}) : super._();

  @override
  final PromptModelState data;

  @override
  String toString() {
    return 'PromptState.loadInProgress(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadInProgessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadInProgessImplCopyWith<_$LoadInProgessImpl> get copyWith =>
      __$$LoadInProgessImplCopyWithImpl<_$LoadInProgessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PromptModelState data) initial,
    required TResult Function(PromptModelState data) loadInProgress,
    required TResult Function(PromptModelState data) loadSuccess,
    required TResult Function(PromptModelState data) loadFailure,
  }) {
    return loadInProgress(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PromptModelState data)? initial,
    TResult? Function(PromptModelState data)? loadInProgress,
    TResult? Function(PromptModelState data)? loadSuccess,
    TResult? Function(PromptModelState data)? loadFailure,
  }) {
    return loadInProgress?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PromptModelState data)? initial,
    TResult Function(PromptModelState data)? loadInProgress,
    TResult Function(PromptModelState data)? loadSuccess,
    TResult Function(PromptModelState data)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgess value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgess value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgess value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgess extends PromptState {
  const factory _LoadInProgess({required final PromptModelState data}) =
      _$LoadInProgessImpl;
  const _LoadInProgess._() : super._();

  @override
  PromptModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$LoadInProgessImplCopyWith<_$LoadInProgessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadSuccessImplCopyWith<$Res>
    implements $PromptStateCopyWith<$Res> {
  factory _$$LoadSuccessImplCopyWith(
          _$LoadSuccessImpl value, $Res Function(_$LoadSuccessImpl) then) =
      __$$LoadSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PromptModelState data});

  @override
  $PromptModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoadSuccessImplCopyWithImpl<$Res>
    extends _$PromptStateCopyWithImpl<$Res, _$LoadSuccessImpl>
    implements _$$LoadSuccessImplCopyWith<$Res> {
  __$$LoadSuccessImplCopyWithImpl(
      _$LoadSuccessImpl _value, $Res Function(_$LoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadSuccessImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PromptModelState,
    ));
  }
}

/// @nodoc

class _$LoadSuccessImpl extends _LoadSuccess {
  const _$LoadSuccessImpl({required this.data}) : super._();

  @override
  final PromptModelState data;

  @override
  String toString() {
    return 'PromptState.loadSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      __$$LoadSuccessImplCopyWithImpl<_$LoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PromptModelState data) initial,
    required TResult Function(PromptModelState data) loadInProgress,
    required TResult Function(PromptModelState data) loadSuccess,
    required TResult Function(PromptModelState data) loadFailure,
  }) {
    return loadSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PromptModelState data)? initial,
    TResult? Function(PromptModelState data)? loadInProgress,
    TResult? Function(PromptModelState data)? loadSuccess,
    TResult? Function(PromptModelState data)? loadFailure,
  }) {
    return loadSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PromptModelState data)? initial,
    TResult Function(PromptModelState data)? loadInProgress,
    TResult Function(PromptModelState data)? loadSuccess,
    TResult Function(PromptModelState data)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgess value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgess value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgess value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess extends PromptState {
  const factory _LoadSuccess({required final PromptModelState data}) =
      _$LoadSuccessImpl;
  const _LoadSuccess._() : super._();

  @override
  PromptModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFailureImplCopyWith<$Res>
    implements $PromptStateCopyWith<$Res> {
  factory _$$LoadFailureImplCopyWith(
          _$LoadFailureImpl value, $Res Function(_$LoadFailureImpl) then) =
      __$$LoadFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PromptModelState data});

  @override
  $PromptModelStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoadFailureImplCopyWithImpl<$Res>
    extends _$PromptStateCopyWithImpl<$Res, _$LoadFailureImpl>
    implements _$$LoadFailureImplCopyWith<$Res> {
  __$$LoadFailureImplCopyWithImpl(
      _$LoadFailureImpl _value, $Res Function(_$LoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadFailureImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PromptModelState,
    ));
  }
}

/// @nodoc

class _$LoadFailureImpl extends _LoadFailure {
  const _$LoadFailureImpl({required this.data}) : super._();

  @override
  final PromptModelState data;

  @override
  String toString() {
    return 'PromptState.loadFailure(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailureImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      __$$LoadFailureImplCopyWithImpl<_$LoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PromptModelState data) initial,
    required TResult Function(PromptModelState data) loadInProgress,
    required TResult Function(PromptModelState data) loadSuccess,
    required TResult Function(PromptModelState data) loadFailure,
  }) {
    return loadFailure(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PromptModelState data)? initial,
    TResult? Function(PromptModelState data)? loadInProgress,
    TResult? Function(PromptModelState data)? loadSuccess,
    TResult? Function(PromptModelState data)? loadFailure,
  }) {
    return loadFailure?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PromptModelState data)? initial,
    TResult Function(PromptModelState data)? loadInProgress,
    TResult Function(PromptModelState data)? loadSuccess,
    TResult Function(PromptModelState data)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgess value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgess value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgess value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure extends PromptState {
  const factory _LoadFailure({required final PromptModelState data}) =
      _$LoadFailureImpl;
  const _LoadFailure._() : super._();

  @override
  PromptModelState get data;
  @override
  @JsonKey(ignore: true)
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
