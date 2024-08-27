import 'package:injectable/injectable.dart';

import '../../domain/repositories/user_storage_repository.dart';
import '../datasource/local/app_storage.dart';

@Injectable(as: UserStorageRepository)
class UserStorageRepositoryImpl extends UserStorageRepository {
  final AppStorage _appStorage;

  UserStorageRepositoryImpl(this._appStorage);

  @override
  String? getData(String key) {
    return _appStorage.getString(key);
  }

  @override
  Future<void> saveData(String key, String value) {
    return _appStorage.saveString(key, value);
  }

  @override
  int? getInt(String key) {
    return _appStorage.getInt(key);
  }

  @override
  Future<void> saveIntData(String key, int value) async {
    await _appStorage.saveInt(key, value);
  }

  @override
  Future<void> removeData(String key) {
    return _appStorage.remove(key);
  }
}
