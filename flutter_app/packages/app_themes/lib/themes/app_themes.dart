import 'package:app_themes/utils/enums/theme_options.dart';
import 'package:flutter/material.dart';
import 'package:app_themes/themes/base_themes.dart';

class AppTheme extends BaseTheme {
  @override
  ThemeData lightTheme() {
    return ThemeData(
      primaryColor: Colors.red,
    );
  }

  @override
  ThemeData darkTheme() {
    return ThemeData();
  }

  @override
  ThemeData switchTheme({ThemeOptions? option}) {
    switch (option) {
      case ThemeOptions.light:
        return lightTheme();
      case ThemeOptions.dark:
        return darkTheme();
      default:
        return lightTheme();
    }
  }
}
