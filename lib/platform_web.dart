import 'package:browser_detector/browser_detector.dart';
import 'package:platform_plus/platform_base.dart';

class Platform extends PlatformBase {
  static final platform = BrowserDetector().platform;
  static const singleton = Platform._();

  const Platform._();

  @override
  bool get isAndroidNative => false;

  @override
  bool get isAndroidWeb => platform.isAndroid;

  @override
  bool get isIOSNative => false;

  @override
  bool get isIOSWeb => platform.isIOS;

  @override
  bool get isLinuxNative => false;

  @override
  bool get isLinuxWeb => platform.isLinux;

  @override
  bool get isMacOSNative => false;

  @override
  bool get isMacOSWeb => platform.isMacOS;

  @override
  bool get isWindowsNative => false;

  @override
  bool get isWindowsWeb => platform.isWindows;

  @override
  bool get isFuschiaNative => false;

  @override
  bool get isFuschiaWeb => false;

  @override
  Future<bool> isPhysicalDevice() async => true;
}
