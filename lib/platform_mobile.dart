import 'dart:io' as io show Platform;

import 'package:platform_plus/platform_base.dart';

class Platform extends PlatformBase {
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
}
