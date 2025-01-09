import 'package:flutter_web/app.dart';
import 'package:flutter/material.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

Future<void> main() async {
  if (UniversalPlatform.isWeb){
    /// Remove the # from URL.
    usePathUrlStrategy();
  }

  runApp(App());
}
