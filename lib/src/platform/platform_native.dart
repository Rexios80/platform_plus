import 'dart:io' as io show Platform;

import 'package:device_info_plus/device_info_plus.dart';
import 'package:platform_plus/platform_plus.dart';

/// Platform implementation for native platforms
class PlatformImpl extends Platform {
  /// Allow const construction
  const PlatformImpl();

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
  bool get isUnitTest => io.Platform.environment.containsKey('FLUTTER_TEST');

  @override
  Future<bool> get isPhysicalDevice async {
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

  @override
  Future<int?> get androidVersionCode async {
    if (!isAndroidNative) return null;

    final androidInfo = await DeviceInfoPlugin().androidInfo;
    return androidInfo.version.sdkInt;
  }

  @override
  Future<double?> get iosVersion async {
    if (!isIOSNative) return null;

    final iosInfo = await DeviceInfoPlugin().iosInfo;
    return double.tryParse(iosInfo.systemVersion ?? '');
  }

  @override
  Future<IOSDevice> get iosDevice async {
    if (!isIOSNative) return IOSDevice.none;

    final iosInfo = await DeviceInfoPlugin().iosInfo;
    final name = iosInfo.name ?? '';
    if (name.contains('iPod')) {
      return IOSDevice.iPod;
    } else if (name.contains('iPad')) {
      return IOSDevice.iPad;
    } else if (name.contains('iPhone')) {
      return IOSDevice.iPhone;
    } else {
      return IOSDevice.none;
    }
  }
}
