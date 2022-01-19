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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('platformPlus.isWeb: ${platformPlus.isWeb}'),
              Text(
                'platformPlus.isAndroidNative: ${platformPlus.isAndroidNative}',
              ),
              Text('platformPlus.isAndroidWeb: ${platformPlus.isAndroidWeb}'),
              Text('platformPlus.isIOSNative: ${platformPlus.isIOSNative}'),
              Text('platformPlus.isIOSWeb: ${platformPlus.isIOSWeb}'),
              Text(
                'platformPlus.isWindowsNative: ${platformPlus.isWindowsNative}',
              ),
              Text('platformPlus.isWindowsWeb: ${platformPlus.isWindowsWeb}'),
              Text('platformPlus.isMacOSNative: ${platformPlus.isMacOSNative}'),
              Text('platformPlus.isMacOSWeb: ${platformPlus.isMacOSWeb}'),
              Text('platformPlus.isLinuxNative: ${platformPlus.isLinuxNative}'),
              Text('platformPlus.isLinuxWeb: ${platformPlus.isLinuxWeb}'),
              Text(
                'platformPlus.isFuschiaNative: ${platformPlus.isFuschiaNative}',
              ),
              Text('platformPlus.isFuschiaWeb: ${platformPlus.isFuschiaWeb}'),
              Text(
                'platformPlus.supportsFirebase: ${platformPlus.supportsFirebase}',
              ),
              Text('platformPlus.isUnitTest: ${platformPlus.isUnitTest}'),
              FutureBuilder<bool>(
                future: platformPlus.isPhysicalDevice,
                builder: (context, snap) => Text(
                  'platformPlus.isPhysicalDevice: ${snap.data}',
                ),
              ),
              FutureBuilder<int>(
                future: platformPlus.androidVersionCode,
                builder: (context, snap) => Text(
                  'platformPlus.androidVersionCode: ${snap.data}',
                ),
              ),
              FutureBuilder<double>(
                future: platformPlus.iosVersion,
                builder: (context, snap) =>
                    Text('platformPlus.iosVersion: ${snap.data}'),
              ),
              FutureBuilder<IOSDevice>(
                future: platformPlus.iosDevice,
                builder: (context, snap) =>
                    Text('platformPlus.iosDevice: ${snap.data?.name}'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
