import 'package:app_themes/utils/enums/theme_options.dart';
import 'package:flutter/material.dart';

/// Class to manage theme of an app
abstract class BaseTheme {
  /// Light theme of an app.
  ThemeData lightTheme();

  /// Dark theme of an app.
  ThemeData darkTheme();

  /// Change themes
  ThemeData switchTheme({ThemeOptions? option});
}
