import 'package:flutter/foundation.dart';

abstract class PlatformBase {
  /// Do not instantiate
  const PlatformBase();

  /// [kIsWeb]
  bool get isWeb => kIsWeb;

  /// Platform.isAndroid
  bool get isAndroidNative;

  /// BrowserDetector().platform.isAndroid
  bool get isAndroidWeb;

  /// Platform.isIOS
  bool get isIOSNative;

  /// BrowserDetector().platform.isIOS
  bool get isIOSWeb;

  /// Platform.isWindows
  bool get isWindowsNative;

  /// BrowserDetector().platform.isWindows
  bool get isWindowsWeb;

  /// Platform.isMacOS
  bool get isMacOSNative;

  /// BrowserDetector().platform.isMacOS
  bool get isMacOSWeb;

  /// Platform.isLinux
  bool get isLinuxNative;

  /// BrowserDetector().platform.isLinux
  bool get isLinuxWeb;

  /// Platform.isFuschia
  bool get isFuschiaNative;

  /// Currently unsupported
  bool get isFuschiaWeb;

  /// [isWeb] || [isAndroidNative] || [isIOSNative]
  ///
  /// Useful for knowing if things like Firebase can be used
  bool get isMobile => isWeb || isAndroidNative || isIOSNative;

  /// On Android: DeviceInfoPlugin().androidInfo.isPhysicalDevice
  ///
  /// On iOS: DeviceInfoPlugin().iosInfo.isPhysicalDevice
  ///
  /// On web: true
  Future<bool> isPhysicalDevice();
}
