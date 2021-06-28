import 'package:platform_plus/platform_plus.dart';

void someCode() {
  if (platform.isAndroidNative) {
    // Do something
  } else if (platform.isAndroidWeb) {
    // Do something else
  }
}
