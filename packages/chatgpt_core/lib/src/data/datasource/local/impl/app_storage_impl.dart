import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../app_storage.dart';

@Singleton(as: AppStorage)
class AppStorageImpl extends AppStorage {
  final Box<dynamic> _box;

  AppStorageImpl(this._box);

  @override
  Future<void> clear() {
    return _box.clear();
  }

  @override
  Future<bool?> getBool(String key) {
    return _box.get(key);
  }

  @override
  Future<double?> getDouble(String key) {
    return _box.get(key);
  }

  @override
  int? getInt(String key) {
    return _box.get(key);
  }

  @override
  String? getString(String key) {
    return _box.get(key);
  }

  @override
  Future<List<String>?> getStringList(String key) {
    return _box.get(key);
  }

  @override
  Future<void> remove(String key) {
    return _box.delete(key);
  }

  @override
  Future<void> saveBool(String key, bool value) {
    return _box.put(key, value);
  }

  @override
  Future<void> saveDouble(String key, double value) {
    return _box.put(key, value);
  }

  @override
  Future<void> saveInt(String key, int value) {
    return _box.put(key, value);
  }

  @override
  Future<void> saveString(String key, String value) {
    return _box.put(key, value);
  }

  @override
  Future<void> saveStringList(String key, List<String> value) {
    return _box.put(key, value);
  }
}
