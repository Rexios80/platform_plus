import 'package:flutter/material.dart';
import 'package:platform_plus/platform_plus.dart';

late final PlatformPlus platform;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  platform = await PlatformPlus.platform;
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
                Text('isAndroidNative: ${platform.isAndroidNative}'),
                Text('isAndroidWeb: ${platform.isAndroidWeb}'),
                Text('isIOSNative: ${platform.isIOSNative}'),
                Text('isIOSWeb: ${platform.isIOSWeb}'),
                Text('isWindowsNative: ${platform.isWindowsNative}'),
                Text('isWindowsWeb: ${platform.isWindowsWeb}'),
                Text('isMacOSNative: ${platform.isMacOSNative}'),
                Text('isMacOSWeb: ${platform.isMacOSWeb}'),
                Text('isLinuxNative: ${platform.isLinuxNative}'),
                Text('isLinuxWeb: ${platform.isLinuxWeb}'),
                Text('isFuschiaNative: ${platform.isFuschiaNative}'),
                Text('isFuschiaWeb: ${platform.isFuschiaWeb}'),
                Text('supportsFirebase: ${platform.supportsFirebase}'),
                Text('isUnitTest: ${platform.isUnitTest}'),
                Text('isPhysicalDevice: ${platform.isPhysicalDevice}'),
                Text('androidVersionCode: ${platform.androidVersionCode}'),
                Text('iosVersion: ${platform.iosVersion}'),
                Text('iosDevice: ${platform.iosDevice.name}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
