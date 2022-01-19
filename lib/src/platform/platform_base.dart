import 'package:flutter/foundation.dart';
import 'package:platform_plus/platform_plus.dart';
import 'package:platform_plus/src/platform/platform_native.dart'
    if (dart.library.js) 'package:platform_plus/src/platform/platform_web.dart';

/// Base class for getting platform information
abstract class Platform {
  /// Allow const construction
  const Platform();

  /// Create a [Platform] instance for the current platform
  factory Platform.forPlatform() => const PlatformImpl();

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

  /// [isWeb] || [isAndroidNative] || [isIOSNative] || [isMacOSNative]
  bool get supportsFirebase =>
      isWeb || isAndroidNative || isIOSNative || isMacOSNative;

  /// Native: Platform.environment.containsKey('FLUTTER_TEST')
  ///
  /// Web: false
  bool get isUnitTest;

  /// Android: DeviceInfoPlugin().androidInfo.isPhysicalDevice
  ///
  /// iOS: DeviceInfoPlugin().iosInfo.isPhysicalDevice
  ///
  /// Web: true
  Future<bool> get isPhysicalDevice;

  /// Android: DeviceInfoPlugin().androidInfo.version.sdkInt
  ///
  /// iOS: [AndroidVersionCode.none]
  ///
  /// Web: [AndroidVersionCode.none]
  Future<int> get androidVersionCode;

  /// Android: -1
  ///
  /// iOS: Parsed DeviceInfoPlugin().iosInfo.systemVersion
  ///
  /// Web: -1
  Future<double> get iosVersion;

  /// Android: IOSDevice.none
  /// 
  /// iOS: Parsed DeviceInfoPlugin().iosInfo.name
  /// 
  /// Web: IOSDevice.none
  Future<IOSDevice> get iosDevice;
}
