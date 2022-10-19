Platform Plus is a package for easily figuring out information about the platform your code is running on

## Features

| Property           | Use-case                                            |
| ------------------ | --------------------------------------------------- |
| isAndroidNative    | Android native                                      |
| isAndroidWeb       | Android browser                                     |
| isIOSNative        | iOS native                                          |
| isIOSWeb           | iOS browser                                         |
| isWindowsNative    | Windows native                                      |
| isWindowsWeb       | Windows browser                                     |
| isMacOSNative      | macOS native                                        |
| isMacOSWeb         | macOS browser                                       |
| isLinuxNative      | Linux native                                        |
| isLinuxWeb         | Linux browser                                       |
| isFuschiaNative    | Fuschia native                                      |
| isFuschiaWeb       | Fuschia browser (currently unsupported)             |
| supportsFirebase   | Web or Android native or iOS native or macOS native |
| isUnitTest         | Running with `flutter test`                         |
| isPhysicalDevice   | Running on a physical device (not an emulator)      |
| androidVersionCode | Android SDK version (see AndroidVersionCode)        |
| iosVersion         | iOS version                                         |
| iosDevice          | The iOS device (see IOSDevice)                      |
| isTestFlight       | If the app was installed from TestFlight            |

## Usage

<!-- embedme readme/usage.dart -->
```dart
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
}

```
