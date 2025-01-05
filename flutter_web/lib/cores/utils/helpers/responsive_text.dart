import 'package:flutter/material.dart';

class ResponsiveText {
  static const double smaller = .5;
  static const double small = 1;
  static const double medium = 1.5;
  static const double large = 2;

  static double baseFontSize(BuildContext context) {
    // 1% of screen width
    double fontSize = MediaQuery.sizeOf(context).width / 100;

    if (fontSize > 20) {
      // For larger screen.
      return 20;
    } else {
      return fontSize;
    }
  }

  static double rem(
    BuildContext context, {
    double fontSize = 1,
    double minFontSize = 14,
  }) {
    double newFontSize = fontSize * baseFontSize(context);
    if (newFontSize <= minFontSize) {
      return minFontSize;
    }

    return newFontSize;
  }
}
