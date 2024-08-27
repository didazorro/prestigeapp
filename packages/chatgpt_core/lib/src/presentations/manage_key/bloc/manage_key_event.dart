part of 'manage_key_bloc.dart';

@freezed
class ManageKeyEvent with _$ManageKeyEvent {
  const factory ManageKeyEvent.loadKey(String? identifier) = _LoadKey;
  const factory ManageKeyEvent.saveKey(String key) = _SaveKey;
  const factory ManageKeyEvent.removeKey() = _RemoveKey;
}
