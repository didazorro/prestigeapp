part of 'manage_key_bloc.dart';

@freezed
class ManageKeyState with _$ManageKeyState {
  const ManageKeyState._();

  const factory ManageKeyState.initial() = _Initial;

  const factory ManageKeyState.inProgress() = _InProgress;

  const factory ManageKeyState.loadKeySuccess({required String key}) =
      LoadKeySuccess;

  const factory ManageKeyState.loadKeyFailure() = _LoadKeyFailure;

  const factory ManageKeyState.removeKeySuccess() = _RemoveKeySuccess;

  const factory ManageKeyState.removeKeyFailure() = _RemoveKeyFailure;

  const factory ManageKeyState.saveKeySuccess() = _SaveKeySuccess;

  const factory ManageKeyState.saveKeyFailure() = _SaveKeyFailure;

  const factory ManageKeyState.invalidKey() = _InvalidKey;
}
