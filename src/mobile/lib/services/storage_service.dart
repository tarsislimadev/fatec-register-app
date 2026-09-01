import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageService {
  static final TOKEN_KEY = 'token';

  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  Future<void> write({
    required String key, 
    required String value
  }) async {
    return await _storage.write(key: key, value: value);
  }

  Future<String?> read({
    required String key
  }) async {
    return await _storage.read(key: key);
  }

  Future<Map<String, dynamic>> readAll(
  ) {
    return _storage.readAll();
  }

  Future<void> deleteAll(
  ) async {
    return await _storage.deleteAll();
  }

  Future<String?> getToken() {
    return read(key: TOKEN_KEY);
  }

  Future<void> setToken(String token) {
    return write(key: TOKEN_KEY, value: token);
  }

  Future<void> setUserData(Map<String, dynamic> userData) async {
    for (final entry in userData.entries) {
      await write(key: entry.key, value: entry.value.toString());
    }
  }
}
