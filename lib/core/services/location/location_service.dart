import 'package:geolocator/geolocator.dart';

/// Service wrapper around [Geolocator] to obtain device location data.
class LocationService {
  const LocationService();

  Future<Position> getCurrentPosition() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw const LocationServiceDisabledFailure();
    }

    var permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied ||
        permission == LocationPermission.unableToDetermine) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        throw const LocationPermissionDeniedFailure();
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw const LocationPermissionPermanentlyDeniedFailure();
    }

    if (permission != LocationPermission.always &&
        permission != LocationPermission.whileInUse) {
      throw const LocationPermissionDeniedFailure();
    }

    return Geolocator.getCurrentPosition(
      locationSettings: const LocationSettings(accuracy: LocationAccuracy.high),
    );
  }
}

class LocationServiceDisabledFailure implements Exception {
  const LocationServiceDisabledFailure([
    this.message = 'Los servicios de ubicación están desactivados.',
  ]);

  final String message;

  @override
  String toString() => message;
}

class LocationPermissionDeniedFailure implements Exception {
  const LocationPermissionDeniedFailure([
    this.message = 'Permiso de ubicación denegado.',
  ]);

  final String message;

  @override
  String toString() => message;
}

class LocationPermissionPermanentlyDeniedFailure implements Exception {
  const LocationPermissionPermanentlyDeniedFailure([
    this.message =
        'Los permisos de ubicación fueron denegados permanentemente.',
  ]);

  final String message;

  @override
  String toString() => message;
}
