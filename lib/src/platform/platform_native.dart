import 'dart:io' as io show Platform;

import 'package:device_info_plus/device_info_plus.dart';
import 'package:platform_plus/src/platform/platform_base.dart';

/// Platform implementation for native platforms
class Platform extends PlatformBase {
  /// Allow const construction
  const Platform();

  @override
  bool get isAndroidNative => io.Platform.isAndroid;

  @override
  bool get isAndroidWeb => false;

  @override
  bool get isIOSNative => io.Platform.isIOS;

  @override
  bool get isIOSWeb => false;

  @override
  bool get isLinuxNative => io.Platform.isLinux;

  @override
  bool get isLinuxWeb => false;

  @override
  bool get isMacOSNative => io.Platform.isMacOS;

  @override
  bool get isMacOSWeb => false;

  @override
  bool get isWindowsNative => io.Platform.isWindows;

  @override
  bool get isWindowsWeb => false;

  @override
  bool get isFuschiaNative => io.Platform.isFuchsia;

  @override
  bool get isFuschiaWeb => false;

  @override
  Future<bool> isPhysicalDevice() async {
    final deviceInfo = DeviceInfoPlugin();

    if (isAndroidNative) {
      final androidInfo = await deviceInfo.androidInfo;
      return androidInfo.isPhysicalDevice ?? true;
    } else if (isIOSNative) {
      final iosInfo = await deviceInfo.iosInfo;
      return iosInfo.isPhysicalDevice;
    } else {
      // return true as a fallback
      return true;
    }
  }
}
