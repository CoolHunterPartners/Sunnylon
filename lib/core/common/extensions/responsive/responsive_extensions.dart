import 'package:sizer/sizer.dart';

import 'responsive_config.dart';

export 'package:sizer/sizer.dart';

export 'responsive_config.dart';

extension ResponsiveCalculation on num {
  ///
  /// Returns the percent [Height] based on the current screen type
  /// Automatically uses mobile (935) or tablet (1280) reference height
  ///
  /// Example usage:
  /// ```dart
  /// double buttonHeight = 50.dH;  // 50px from design reference
  /// double containerHeight = 200.dH;  // 200px from design reference
  /// ```
  ///
  double get dH => (this / ResponsiveConfig.heightReference) * 100.h;

  ///
  /// Returns the percent [Width] based on the current screen type
  /// Automatically uses mobile (430) or tablet (800) reference width
  ///
  /// Example usage:
  /// ```dart
  /// double buttonWidth = 100.dW;  // 100px from design reference
  /// double margin = 16.dW;  // 16px from design reference
  /// ```
  ///
  double get dW => (this / ResponsiveConfig.widthReference) * 100.w;

  ///
  /// Returns the percent [Font Size] based on the current screen type
  /// Automatically uses mobile (430) or tablet (800) reference width
  ///
  /// Example usage:
  /// ```dart
  /// double titleSize = 24.fS;  // 24px from design reference
  /// double bodySize = 16.fS;  // 16px from design reference
  /// ```
  ///
  double get fS => dW;
}

/// Additional utility extensions for responsive design
extension ResponsiveUtils on num {
  ///
  /// Returns value only for mobile devices
  ///
  /// Example usage:
  /// ```dart
  /// double mobileOnlyWidth = 100.mobile;  // Only applies on mobile
  /// ```
  ///
  double get mobile => ResponsiveConfig.isMobile ? dW : 0;

  ///
  /// Returns value only for tablet devices
  ///
  /// Example usage:
  /// ```dart
  /// double tabletOnlyWidth = 100.tablet;  // Only applies on tablet
  /// ```
  ///
  double get tablet => ResponsiveConfig.isTablet ? dW : 0;

  ///
  /// Returns different values based on screen type
  ///
  /// Example usage:
  /// ```dart
  /// double responsiveWidth = 100.responsive(
  ///   mobile: 80,   // Use 80 for mobile
  ///   tablet: 120   // Use 120 for tablet
  /// );
  ///
  /// double responsiveMargin = 16.responsive(
  ///   mobile: 12,   // 12px margin on mobile
  ///   tablet: 24    // 24px margin on tablet
  /// );
  /// ```
  ///
  double responsive({required double mobile, required double tablet}) {
    return ResponsiveConfig.isTablet ? tablet : mobile;
  }
}
