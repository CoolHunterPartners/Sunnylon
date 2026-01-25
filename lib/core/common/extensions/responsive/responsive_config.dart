import 'package:sizer/sizer.dart';

/// Configuration class for responsive design dimensions
/// Easily configurable for different design references
class ResponsiveConfig {
  // Mobile design reference dimensions
  static const double mobileWidth = 430.0;
  static const double mobileHeight = 935.0;

  // Tablet design reference dimensions
  static const double tabletWidth = 800.0;
  static const double tabletHeight = 1280.0;

  /// Get the appropriate width reference based on screen type
  static double get widthReference {
    return Device.screenType == ScreenType.tablet ? tabletWidth : mobileWidth;
  }

  /// Get the appropriate height reference based on screen type
  static double get heightReference {
    return Device.screenType == ScreenType.tablet ? tabletHeight : mobileHeight;
  }

  /// Check if current device is tablet
  static bool get isTablet => Device.screenType == ScreenType.tablet;

  /// Check if current device is mobile
  static bool get isMobile => Device.screenType == ScreenType.mobile;
}
