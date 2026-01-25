import 'package:uuid/uuid.dart';

/// Utility class for generating unique identifiers
///
/// This class provides a centralized way to generate UUIDs throughout the application.
/// It uses the uuid package to generate version 4 (random) UUIDs.
class UuidGenerator {
  static const _uuid = Uuid();

  /// Generates a new UUID v4 (random) string
  ///
  /// Returns a unique identifier in the format: xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx
  /// where x is any hexadecimal digit and y is one of 8, 9, A, or B.
  ///
  /// Example:
  /// ```dart
  /// final id = UuidGenerator.generate(); // "550e8400-e29b-41d4-a716-446655440000"
  /// ```
  static String generate() {
    return _uuid.v4();
  }

  /// Generates a new UUID v4 without hyphens
  ///
  /// Returns a unique identifier without dashes, useful for database primary keys
  /// or when a more compact format is needed.
  ///
  /// Example:
  /// ```dart
  /// final id = UuidGenerator.generateCompact(); // "550e8400e29b41d4a716446655440000"
  /// ```
  static String generateCompact() {
    return _uuid.v4().replaceAll('-', '');
  }

  /// Validates if a string is a valid UUID v4 format
  ///
  /// Returns true if the string matches the UUID v4 pattern, false otherwise.
  ///
  /// Example:
  /// ```dart
  /// final isValid = UuidGenerator.isValid("550e8400-e29b-41d4-a716-446655440000"); // true
  /// final isInvalid = UuidGenerator.isValid("invalid-uuid"); // false
  /// ```
  static bool isValid(String uuid) {
    try {
      Uuid.parse(uuid);
      return true;
    } catch (e) {
      return false;
    }
  }
}
