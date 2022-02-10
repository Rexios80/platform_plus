import 'package:platform_plus/platform_plus.dart';

void example() async {
  if (platformPlus.isAndroidNative) {
    // Do something
  } else if (platformPlus.isAndroidWeb) {
    // Do something else
  }

  if (await platformPlus.isPhysicalDevice) {
    // Do something
  }

  if (platformPlus.isUnitTest) {
    // Do something
  }

  final androidVersionCode = await platformPlus.androidVersionCode;
  if ((androidVersionCode ?? -1) >= AndroidVersionCode.s) {
    // Do something
  }

  final iosVersion = await platformPlus.iosVersion;
  if ((iosVersion ?? -1) >= 13) {
    // Do something
  }

  final iosDevice = await platformPlus.iosDevice;
  if (iosDevice == IOSDevice.iPhone) {
    // Do something
  }
}
