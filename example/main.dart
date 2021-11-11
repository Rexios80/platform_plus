import 'package:platform_plus/platform_plus.dart';

void someCode() async {
  if (platformPlus.isAndroidNative) {
    // Do something
  } else if (platformPlus.isAndroidWeb) {
    // Do something else
  }

  if (await platformPlus.isPhysicalDevice()) {
    // Do something
  }
}
