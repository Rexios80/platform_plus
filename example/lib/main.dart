import 'package:flutter/material.dart';
import 'package:platform_plus/platform_plus.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PlatformPlus.platform.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'platform_plus_example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('platform_plus_example'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Center(
            child: Column(
              children: [
                Text(
                  'isAndroidNative: ${PlatformPlus.platform.isAndroidNative}',
                ),
                Text('isAndroidWeb: ${PlatformPlus.platform.isAndroidWeb}'),
                Text('isIOSNative: ${PlatformPlus.platform.isIOSNative}'),
                Text('isIOSWeb: ${PlatformPlus.platform.isIOSWeb}'),
                Text(
                  'isWindowsNative: ${PlatformPlus.platform.isWindowsNative}',
                ),
                Text('isWindowsWeb: ${PlatformPlus.platform.isWindowsWeb}'),
                Text('isMacOSNative: ${PlatformPlus.platform.isMacOSNative}'),
                Text('isMacOSWeb: ${PlatformPlus.platform.isMacOSWeb}'),
                Text('isLinuxNative: ${PlatformPlus.platform.isLinuxNative}'),
                Text('isLinuxWeb: ${PlatformPlus.platform.isLinuxWeb}'),
                Text(
                  'isFuschiaNative: ${PlatformPlus.platform.isFuschiaNative}',
                ),
                Text('isFuschiaWeb: ${PlatformPlus.platform.isFuschiaWeb}'),
                Text(
                  'supportsFirebase: ${PlatformPlus.platform.supportsFirebase}',
                ),
                Text('isUnitTest: ${PlatformPlus.platform.isUnitTest}'),
                Text(
                  'isPhysicalDevice: ${PlatformPlus.platform.isPhysicalDevice}',
                ),
                Text(
                  'androidVersionCode: ${PlatformPlus.platform.androidVersionCode}',
                ),
                Text('iosVersion: ${PlatformPlus.platform.iosVersion}'),
                Text('iosDevice: ${PlatformPlus.platform.iosDevice.name}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
