import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/components/exceptions/invalid_api_key_exception.dart';
import '../../../domain/usecase/text_generate_usecase.dart';
import '../../../domain/usecase/user_storage_usecase.dart';

part 'manage_key_event.dart';

part 'manage_key_state.dart';

part 'manage_key_bloc.freezed.dart';

const _testPrompt = 'Hello';

@injectable
class ManageKeyBloc extends Bloc<ManageKeyEvent, ManageKeyState> {
  final UserStorageUsecase _userStorageUsecase;
  final TextGenerateUsecase _textGenerateUsecase;

  ManageKeyBloc(
    @factoryParam String? identifier,
    this._userStorageUsecase,
    this._textGenerateUsecase,
  ) : super(const ManageKeyState.initial()) {
    on<_LoadKey>(_onLoadKey);
    on<_SaveKey>(_onSaveKey);
    on<_RemoveKey>(_onRemoveKey);
    add(_LoadKey(identifier));
  }

  FutureOr<void> _onSaveKey(
    _SaveKey event,
    Emitter<ManageKeyState> emit,
  ) async {
    final oldKey = _userStorageUsecase.getOpenAiKey();

    if (oldKey == event.key) {
      emit(const ManageKeyState.saveKeySuccess());

      return;
    }

    try {
      emit(const ManageKeyState.inProgress());

      // Set key before to make Dio can use it
      await _userStorageUsecase.setOpenAiKey(event.key);

      final result =
          await _textGenerateUsecase.generateTextFromPromptText(_testPrompt);

      if (result == null) {
        throw '';
      }

      emit(const ManageKeyState.saveKeySuccess());
    } on InvalidApiKeyException catch (_) {
      await _userStorageUsecase.removeOpenAiKey();

      emit(const ManageKeyState.invalidKey());
      if (oldKey != null) {
        await _userStorageUsecase.setOpenAiKey(oldKey);
      }

      return;
    } catch (_) {
      emit(const ManageKeyState.saveKeyFailure());
    }
  }

  FutureOr<void> _onLoadKey(
    _LoadKey event,
    Emitter<ManageKeyState> emit,
  ) {
    try {
      emit(const ManageKeyState.inProgress());

      final key = _userStorageUsecase.getOpenAiKey();

      emit(ManageKeyState.loadKeySuccess(key: key ?? ''));
    } catch (_) {
      emit(const ManageKeyState.loadKeyFailure());
    }
  }

  FutureOr<void> _onRemoveKey(
    _RemoveKey event,
    Emitter<ManageKeyState> emit,
  ) async {
    try {
      emit(const ManageKeyState.inProgress());

      await _userStorageUsecase.removeOpenAiKey();

      emit(const ManageKeyState.removeKeySuccess());
    } catch (_) {
      emit(const ManageKeyState.removeKeyFailure());
    }
  }
}
