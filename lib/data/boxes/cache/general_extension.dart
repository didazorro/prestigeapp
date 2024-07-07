part of '../../boxes.dart';

extension GeneralCacheExtension on CacheBox {
  Map<String, dynamic>? getInstagramCache(String path) {
    final key = '${BoxKeys.instagramCacheKeyPrefix}$path';
    return box.get(
      key,
    );
  }

  Future<void> setInstagramCache(
    String path,
    Map<String, dynamic>? data,
  ) async {
    final key = '${BoxKeys.instagramCacheKeyPrefix}$path';
    if (data == null) {
      return box.delete(key);
    }
    return box.put(key, data);
  }

  Map<String, dynamic>? getCurrentLocationCache() {
    const key = BoxKeys.currentLocation;
    var value = box.get(
      key,
    );
    return value != null ? Map<String, dynamic>.from(value) : null;
  }

  Future<void> setCurrentLocationCache(
    Map<String, dynamic>? data,
  ) async {
    const key = BoxKeys.currentLocation;
    if (data == null) {
      return box.delete(key);
    }
    return box.put(key, data);
  }

  int? getCurrentBranchCache() {
    const key = BoxKeys.currentBranch;
    var value = box.get(
      key,
    );
    return int.tryParse('$value');
  }

  Future<void> setCurrentBranchCache(
    int? value,
  ) async {
    const key = BoxKeys.currentBranch;
    if (value == null) {
      return box.delete(key);
    }
    return box.put(key, value);
  }
}
