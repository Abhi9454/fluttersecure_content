import 'dart:async';

import 'package:flutter/services.dart';

class FlutterSecureContent {


  static const MethodChannel _channel =
  const MethodChannel('secure_window');


  static Future<bool> addFlags() async {
    print('Add flag called');
    return await _channel.invokeMethod("addFlags");
  }
}
