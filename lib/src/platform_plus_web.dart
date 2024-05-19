import 'package:browser_detector/browser_detector.dart' hide Platform;
import 'package:platform_plus/platform_plus.dart' as base;
import 'package:platform_plus/src/model/ios_device.dart';
import 'package:platform_plus/src/model/web_renderer.dart';

/// Platform implementation for web
class PlatformPlus extends base.PlatformPlus {
  static final _platform = BrowserDetector().platform;

  @override
  Future<void> init() async {}

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
  bool get isPhysicalDevice => true;

  @override
  int? get androidVersionCode => null;

  @override
  double? get iosVersion => null;

  @override
  IOSDevice get iosDevice => IOSDevice.unknown;

  @override
  bool get isTestFlight => false;

  @override
  WebRenderer get webRenderer {
    if (const bool.fromEnvironment('FLUTTER_WEB_USE_SKIA')) {
      return WebRenderer.skia;
    } else if (const bool.fromEnvironment('FLUTTER_WEB_USE_SKWASM')) {
      return WebRenderer.wasm;
    } else {
      return WebRenderer.html;
    }
  }
}
