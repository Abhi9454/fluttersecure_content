import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_secure_content/flutter_secure_content.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_secure_content');
  final List<MethodCall> log = List<MethodCall>();


  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      log.add(methodCall);
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    await FlutterSecureContent.addFlags();
    expect(log, <Matcher>[
      isMethodCall('addFlags',arguments: null),
    ],);
  });
}
