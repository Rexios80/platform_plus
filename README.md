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

## Usage

<!-- embedme readme/usage.dart -->
```dart
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

```
