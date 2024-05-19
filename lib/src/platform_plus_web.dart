import 'package:platform_plus/platform_plus.dart' as base;
import 'package:platform_plus/src/model/ios_device.dart';
import 'package:platform_plus/src/model/web_renderer.dart';
import 'package:web/web.dart' as web;

/// Platform implementation for web
class PlatformPlus extends base.PlatformPlus {
  final _userAgent = web.window.navigator.userAgent;

  @override
  Future<void> init() async {}

  @override
  bool get isAndroidNative => false;

  @override
  bool get isAndroidWeb =>
      !RegExp(r'like android', caseSensitive: false).hasMatch(_userAgent) &&
      RegExp(r'android', caseSensitive: false).hasMatch(_userAgent);

  @override
  bool get isIOSNative => false;

  @override
  bool get isIOSWeb =>
      RegExp(r'iphone|ipod|ipad', caseSensitive: false).hasMatch(_userAgent);

  @override
  bool get isLinuxNative => false;

  @override
  bool get isLinuxWeb =>
      RegExp(r'linux', caseSensitive: false).hasMatch(_userAgent) &&
      !RegExp(r'android', caseSensitive: false).hasMatch(_userAgent);

  @override
  bool get isMacOSNative => false;

  @override
  bool get isMacOSWeb =>
      RegExp(r'macintosh', caseSensitive: false).hasMatch(_userAgent);

  @override
  bool get isWindowsNative => false;

  @override
  bool get isWindowsWeb =>
      RegExp(r'windows\s', caseSensitive: false).hasMatch(_userAgent);

  @override
  bool get isFuschiaNative => false;

  @override
  bool get isFuschiaWeb =>
      RegExp(r'fuchsia\s', caseSensitive: false).hasMatch(_userAgent);

  @override
  bool get isUnitTest => false;

  @override
  bool get isPhysicalDevice => true;

  @override
  int? get androidVersionCode => null;

  @override
  double? get iosVersion => null;

  @override
  IOSDevice get iosDevice {
    if (RegExp(r'iphone', caseSensitive: false).hasMatch(_userAgent)) {
      return IOSDevice.iPhone;
    } else if (RegExp(r'ipod', caseSensitive: false).hasMatch(_userAgent)) {
      return IOSDevice.iPad;
    } else if (RegExp(r'ipad', caseSensitive: false).hasMatch(_userAgent)) {
      return IOSDevice.iPod;
    } else {
      return IOSDevice.unknown;
    }
  }

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
