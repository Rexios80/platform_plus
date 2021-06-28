library platform_plus;

import 'package:platform_plus/platform_mobile.dart'
    if (dart.library.js) 'package:platform_plus/platform_web.dart';

const platform = Platform();
