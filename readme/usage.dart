import 'package:platform_plus/platform_plus.dart';

void example() async {
  final platform = await PlatformPlus.platform;

  if (platform.isAndroidNative) {
    // Do something
  } else if (platform.isAndroidWeb) {
    // Do something else
  }

  if (platform.isPhysicalDevice) {
    // Do something
  }

  if (platform.isUnitTest) {
    // Do something
  }

  final androidVersionCode = platform.androidVersionCode;
  if ((androidVersionCode ?? -1) >= AndroidVersionCode.s) {
    // Do something
  }

  final iosVersion = platform.iosVersion;
  if ((iosVersion ?? -1) >= 13) {
    // Do something
  }

  final iosDevice = platform.iosDevice;
  if (iosDevice == IOSDevice.iPhone) {
    // Do something
  }
}
