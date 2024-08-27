abstract class UserStorageRepository {
  String? getData(String key);
  int? getInt(String key);
  Future<void> saveData(String key, String value);
  Future<void> saveIntData(String key, int value);
  Future<void> removeData(String key);
}
