import 'package:flutter/foundation.dart';

abstract class PlatformBase {
  const PlatformBase();

  bool get isWeb => kIsWeb;
  bool get isAndroidNative;
  bool get isAndroidWeb;
  bool get isIOSNative;
  bool get isIOSWeb;
  bool get isWindowsNative;
  bool get isWindowsWeb;
  bool get isMacOSNative;
  bool get isMacOSWeb;
  bool get isLinuxNative;
  bool get isLinuxWeb;
  bool get isFuschiaNative;

  /// Currently unsupported
  bool get isFuschiaWeb;

  /// [isWeb] || [isAndroidNative] || [isIOSNative]
  /// Useful for knowing if things like Firebase can be used
  bool get isMobile => isWeb || isAndroidNative || isIOSNative;
}
