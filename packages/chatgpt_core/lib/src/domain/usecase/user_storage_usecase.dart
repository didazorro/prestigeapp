import 'package:injectable/injectable.dart';

import '../repositories/user_storage_repository.dart';

const _openApiKey = 'openApiKey';

@injectable
class UserStorageUsecase {
  final UserStorageRepository _userStorageRepository;

  UserStorageUsecase(this._userStorageRepository);

  String? getString(String key) {
    return _userStorageRepository.getData(key);
  }

  int? getInt(String key) {
    return _userStorageRepository.getInt(key);
  }

  Future<void> setIntData(int value, String key) async {
    await _userStorageRepository.saveIntData(key, value);
  }

  String? getOpenAiKey() {
    return _userStorageRepository.getData(_openApiKey);
  }

  Future<void> setOpenAiKey(String key) {
    return _userStorageRepository.saveData(_openApiKey, key);
  }

  Future<void> removeOpenAiKey() {
    return _userStorageRepository.removeData(_openApiKey);
  }

  // Future<void> setOpenAIKey(String value) async {
  //   await _userStorageRepository.saveData(_openApiKey, value);
  // }
}
