import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'pro_platform_interface.dart';

/// An implementation of [ProPlatform] that uses method channels.
class MethodChannelPro extends ProPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('pro');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}