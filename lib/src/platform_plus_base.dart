import 'package:platform_plus/src/platform/platform_native.dart'
    if (dart.library.js) 'package:platform_plus/src/platform/platform_web.dart';

/// Access to platform information
const platformPlus = Platform();
