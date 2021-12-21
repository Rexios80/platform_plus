# platform_plus

Platform Plus is a package for easily figuring out information about the platform your code is running on.

Since `dart:io` is unavailable in web apps and `dart:js` is unavailable in native apps, the only way to do platform checks is with a conditional import like this: 

```
import 'package:platform_plus/platform_mobile.dart'
    if (dart.library.js) 'package:platform_plus/platform_web.dart';
```

That gets really annoying so this package handles it for you.

## Getting Started

```dart
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
```
