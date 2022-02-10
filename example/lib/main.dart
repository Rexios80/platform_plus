import 'package:flutter/material.dart';
import 'package:platform_plus/platform_plus.dart';

void main() {
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'isAndroidNative: ${platformPlus.isAndroidNative}',
                ),
                Text('isAndroidWeb: ${platformPlus.isAndroidWeb}'),
                Text('isIOSNative: ${platformPlus.isIOSNative}'),
                Text('isIOSWeb: ${platformPlus.isIOSWeb}'),
                Text(
                  'isWindowsNative: ${platformPlus.isWindowsNative}',
                ),
                Text('isWindowsWeb: ${platformPlus.isWindowsWeb}'),
                Text('isMacOSNative: ${platformPlus.isMacOSNative}'),
                Text('isMacOSWeb: ${platformPlus.isMacOSWeb}'),
                Text('isLinuxNative: ${platformPlus.isLinuxNative}'),
                Text('isLinuxWeb: ${platformPlus.isLinuxWeb}'),
                Text(
                  'isFuschiaNative: ${platformPlus.isFuschiaNative}',
                ),
                Text('isFuschiaWeb: ${platformPlus.isFuschiaWeb}'),
                Text(
                  'supportsFirebase: ${platformPlus.supportsFirebase}',
                ),
                Text('isUnitTest: ${platformPlus.isUnitTest}'),
                FutureBuilder<bool>(
                  future: platformPlus.isPhysicalDevice,
                  builder: (context, snap) => Text(
                    'isPhysicalDevice: ${snap.data}',
                  ),
                ),
                FutureBuilder<int?>(
                  future: platformPlus.androidVersionCode,
                  builder: (context, snap) => Text(
                    'androidVersionCode: ${snap.data}',
                  ),
                ),
                FutureBuilder<double?>(
                  future: platformPlus.iosVersion,
                  builder: (context, snap) => Text('iosVersion: ${snap.data}'),
                ),
                FutureBuilder<IOSDevice>(
                  future: platformPlus.iosDevice,
                  builder: (context, snap) =>
                      Text('iosDevice: ${snap.data?.name}'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
