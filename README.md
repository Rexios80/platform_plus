Platform Plus is a package for easily figuring out information about the platform your code is running on

## Features

| Property           | Use-case                                            |
| ------------------ | --------------------------------------------------- |
| isWeb              | Any browser                                         |
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

```dart
import 'package:platform_plus/platform_plus.dart';

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

if ((await platformPlus.iosDevice) == IOSDevice.iPhone) {
  // Do something
}
```
