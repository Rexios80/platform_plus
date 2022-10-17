import 'package:flutter_test/flutter_test.dart';
import 'package:platform_plus/platform_plus.dart';

void main() {
  test('isUnitTest', () async {
    final platform = await PlatformPlus.platform;
    expect(platform.isUnitTest, true);
  });
}
