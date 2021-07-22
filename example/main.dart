import 'package:platform_plus/platform_plus.dart';

void someCode() async {
  if (platform.isAndroidNative) {
    // Do something
  } else if (platform.isAndroidWeb) {
    // Do something else
  }

  if (await platform.isPhysicalDevice()) {
    // Do something
  }
}
