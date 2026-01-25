import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../common/constants/pref_keys.dart';

/// Contract for device information service
abstract class DeviceInfoService {
  /// Gets a unique device identifier
  Future<String> getDeviceId();
}

/// Implementation of [DeviceInfoService] using device_info_plus
class DeviceInfoServiceImpl implements DeviceInfoService {
  final DeviceInfoPlugin _deviceInfo;
  final FlutterSecureStorage _secureStorage;

  DeviceInfoServiceImpl({
    DeviceInfoPlugin? deviceInfo,
    FlutterSecureStorage? secureStorage,
  }) : _deviceInfo = deviceInfo ?? DeviceInfoPlugin(),
       _secureStorage = secureStorage ?? const FlutterSecureStorage();

  @override
  Future<String> getDeviceId() async {
    try {
      // Check if we already have a stored device ID
      final storedDeviceId = await _secureStorage.read(key: PrefKey.deviceId);
      if (storedDeviceId != null && storedDeviceId.isNotEmpty) {
        return storedDeviceId;
      }

      // Generate a new device ID based on platform
      String deviceId;
      if (Platform.isAndroid) {
        final androidInfo = await _deviceInfo.androidInfo;
        // Use androidId if available, otherwise use model + brand + fingerprint
        deviceId = androidInfo.id.isNotEmpty
            ? androidInfo.id
            : '${androidInfo.model}_${androidInfo.brand}_${androidInfo.fingerprint}';
      } else if (Platform.isIOS) {
        final iosInfo = await _deviceInfo.iosInfo;
        // Use identifierForVendor if available, otherwise use model + systemVersion
        deviceId = iosInfo.identifierForVendor?.isNotEmpty == true
            ? iosInfo.identifierForVendor!
            : '${iosInfo.model}_${iosInfo.systemVersion}';
      } else {
        // Fallback for other platforms
        deviceId = 'unknown_${DateTime.now().millisecondsSinceEpoch}';
      }

      // Ensure the device ID is not empty
      if (deviceId.isEmpty) {
        deviceId = 'device_${DateTime.now().millisecondsSinceEpoch}';
      }

      // Store the device ID securely for future use
      await _secureStorage.write(key: PrefKey.deviceId, value: deviceId);

      return deviceId;
    } catch (e) {
      // Fallback to timestamp-based ID if anything fails
      final fallbackId = 'fallback_${DateTime.now().millisecondsSinceEpoch}';
      await _secureStorage.write(key: PrefKey.deviceId, value: fallbackId);
      return fallbackId;
    }
  }
}
