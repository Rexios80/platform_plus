import 'dart:io' as io show Platform;

import 'package:device_info_plus/device_info_plus.dart';
import 'package:platform_plus/src/model/ios_device.dart';
import 'package:platform_plus/src/platform_plus_base.dart' as base;

/// Platform implementation for native platforms
class PlatformPlus extends base.PlatformPlus {
  late final IosDeviceInfo _iosInfo;
  late final AndroidDeviceInfo _androidInfo;

  @override
  Future<void> init() async {
    final deviceInfo = DeviceInfoPlugin();
    _iosInfo = await deviceInfo.iosInfo;
    _androidInfo = await deviceInfo.androidInfo;
  }

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
  bool get isPhysicalDevice {
    if (isAndroidNative) {
      return _androidInfo.isPhysicalDevice ?? true;
    } else if (isIOSNative) {
      return _iosInfo.isPhysicalDevice;
    } else {
      // return true as a fallback
      return true;
    }
  }

  @override
  int? get androidVersionCode {
    if (!isAndroidNative) return null;
    return _androidInfo.version.sdkInt;
  }

  @override
  double? get iosVersion {
    if (!isIOSNative) return null;
    return double.tryParse(_iosInfo.systemVersion ?? '');
  }

  @override
  IOSDevice get iosDevice {
    if (!isIOSNative) return IOSDevice.unknown;

    final name = _iosInfo.name ?? '';
    if (name.contains('iPod')) {
      return IOSDevice.iPod;
    } else if (name.contains('iPad')) {
      return IOSDevice.iPad;
    } else if (name.contains('iPhone')) {
      return IOSDevice.iPhone;
    } else {
      return IOSDevice.unknown;
    }
  }
}
