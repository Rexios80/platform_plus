import 'package:flutter/foundation.dart';
import 'package:platform_plus/platform_plus.dart';
import 'package:platform_plus/src/platform_plus_native.dart'
    if (dart.library.js) 'package:platform_plus/src/platform_plus_web.dart'
    as impl;

/// Base class for getting platform information
abstract class PlatformPlus {
  /// Allow const construction
  const PlatformPlus();

  /// Create a [PlatformPlus] instance for the current platform
  static Future<PlatformPlus> forPlatform() async {
    final platform = impl.PlatformPlus();
    await platform.init();
    return platform;
  }

  /// Initialize the platform implementation
  Future<void> init();

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

  /// [kIsWeb] || [isAndroidNative] || [isIOSNative] || [isMacOSNative]
  ///
  /// Check https://firebase.flutter.dev to make sure the Firebase services
  /// you're using actually support all these platforms
  bool get supportsFirebase =>
      kIsWeb || isAndroidNative || isIOSNative || isMacOSNative;

  /// Native: Platform.environment.containsKey('FLUTTER_TEST')
  ///
  /// Web: false
  bool get isUnitTest;

  /// Android: DeviceInfoPlugin().androidInfo.isPhysicalDevice
  ///
  /// iOS: DeviceInfoPlugin().iosInfo.isPhysicalDevice
  ///
  /// Other platforms: true
  bool get isPhysicalDevice;

  /// Android: DeviceInfoPlugin().androidInfo.version.sdkInt
  ///
  /// Other platforms: null
  int? get androidVersionCode;

  /// iOS: Parsed DeviceInfoPlugin().iosInfo.systemVersion
  ///
  /// Other platforms: null
  double? get iosVersion;

  /// iOS: Parsed DeviceInfoPlugin().iosInfo.name
  ///
  /// Other platforms: [IOSDevice.unknown]
  IOSDevice get iosDevice;
}
