import 'package:platform_plus/platform_plus.dart';

void main() async {
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

  if ((await platformPlus.androidVersionCode) >= AndroidVersionCode.s) {
    // Do something
  }

  if ((await platformPlus.iosVersion) >= 13) {
    // Do something
  }
}
