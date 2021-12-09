import 'package:browser_detector/browser_detector.dart' hide Platform;
import 'package:platform_plus/src/platform/platform_base.dart';

/// Platform implementation for web
class PlatformImpl extends Platform {
  static final _platform = BrowserDetector().platform;

  /// Allow const construction
  const PlatformImpl();

  @override
  bool get isAndroidNative => false;

  @override
  bool get isAndroidWeb => _platform.isAndroid;

  @override
  bool get isIOSNative => false;

  @override
  bool get isIOSWeb => _platform.isIOS;

  @override
  bool get isLinuxNative => false;

  @override
  bool get isLinuxWeb => _platform.isLinux;

  @override
  bool get isMacOSNative => false;

  @override
  bool get isMacOSWeb => _platform.isMacOS;

  @override
  bool get isWindowsNative => false;

  @override
  bool get isWindowsWeb => _platform.isWindows;

  @override
  bool get isFuschiaNative => false;

  @override
  bool get isFuschiaWeb => false;

  @override
  bool get isUnitTest => false;

  @override
  Future<bool> isPhysicalDevice() async => true;
}
