import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  String get email => 'email';
  String get password => 'password';
  String get code => 'code';
  String get userId => 'userId';

  final FlutterSecureStorage storage = const FlutterSecureStorage();

  Future<void> writeSecureData(String key, String value) async {
    await storage.write(key: key, value: value);
  }

  Future<String> readSecureData(String key) async {
    final value = await storage.read(key: key) ?? '';
    return value;
  }

  Future<void> deleteSecureData(String key) async {
    await storage.delete(key: key);
  }
}
