import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../common/constants/pref_keys.dart';

/// Contrato para gestionar almacenamiento de tokens de autenticación.
abstract class TokenStoreService {
  /// Lee el access token almacenado.
  Future<String?> readAccessToken();

  /// Lee el refresh token almacenado.
  Future<String?> readRefreshToken();

  /// Guarda access token y opcionalmente refresh token.
  Future<void> saveTokens({required String access, String? refresh});

  /// Limpia todos los tokens almacenados.
  Future<void> clearTokens();
}

/// Implementación de [TokenStoreService] usando Flutter Secure Storage.
class SecureStorageTokenStore implements TokenStoreService {
  final FlutterSecureStorage _storage;

  SecureStorageTokenStore({FlutterSecureStorage? storage})
    : _storage = storage ?? const FlutterSecureStorage();

  @override
  Future<String?> readAccessToken() => _storage.read(key: PrefKey.accessToken);

  @override
  Future<String?> readRefreshToken() =>
      _storage.read(key: PrefKey.refreshToken);

  @override
  Future<void> saveTokens({required String access, String? refresh}) async {
    await _storage.write(key: PrefKey.accessToken, value: access);
    if (refresh != null) {
      await _storage.write(key: PrefKey.refreshToken, value: refresh);
    }
  }

  @override
  Future<void> clearTokens() async {
    await _storage.delete(key: PrefKey.accessToken);
    await _storage.delete(key: PrefKey.refreshToken);
  }
}
