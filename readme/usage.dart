import 'package:platform_plus/platform_plus.dart';

void example() async {
  await PlatformPlus.platform.init();

  if (PlatformPlus.platform.isAndroidNative) {
    // Do something
  } else if (PlatformPlus.platform.isAndroidWeb) {
    // Do something else
  }

  if (PlatformPlus.platform.isPhysicalDevice) {
    // Do something
  }

  if (PlatformPlus.platform.isUnitTest) {
    // Do something
  }

  final androidVersionCode = PlatformPlus.platform.androidVersionCode;
  if ((androidVersionCode ?? -1) >= AndroidVersionCode.s) {
    // Do something
  }

  final iosVersion = PlatformPlus.platform.iosVersion;
  if ((iosVersion ?? -1) >= 13) {
    // Do something
  }

  final iosDevice = PlatformPlus.platform.iosDevice;
  if (iosDevice == IOSDevice.iPhone) {
    // Do something
  }

  final webRenderer = PlatformPlus.platform.webRenderer;
  if (webRenderer == WebRenderer.wasm) {
    // Do something
  }
}
