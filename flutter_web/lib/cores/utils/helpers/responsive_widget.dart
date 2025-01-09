import 'package:flutter/material.dart';
import 'package:flutter_web/cores/utils/constants/device_width.dart';

class ResponsiveWidget {
  Container container({
    double? webWidth,
    double? webHeight,
    double? tabletWidth,
    double? tabletHeight,
    double? mobileWidth,
    double? mobileHeight,
    Alignment? alignment,
    BoxDecoration? decoration,
    required Widget child,
  }) {
    double? width;
    double? height;
    if (webWidth != null) {
      width = webWidth;
      height = webHeight;
    }

    if (tabletWidth != null) {
      width = tabletWidth;
      height = tabletHeight;
    }

    if (mobileWidth != null) {
      width = mobileWidth;
      width = mobileHeight;
    }

    return Container(
      width: width,
      height: height,
      alignment: alignment,
      decoration: decoration,
      child: child,
    );
  }

  Ink ink(
    BuildContext context, {
    double? webWidth,
    double? webHeight,
    double? tabletWidth,
    double? tabletHeight,
    double? mobileWidth,
    double? mobileHeight,
    Alignment? alignment,
    EdgeInsets? padding,
    BoxDecoration? decoration,
    required Widget child,
  }) {
    double? width;
    double? height;

    Size size = MediaQuery.sizeOf(context);
    if (size.width > DeviceWidth.tablet) {
      width = webWidth;
      height = webHeight;
    }

    if (size.width > DeviceWidth.mobile && size.width <= DeviceWidth.tablet) {
      width = tabletWidth;
      height = tabletHeight;
    }

    if (size.width <= DeviceWidth.mobile) {
      width = mobileWidth;
      height = mobileHeight;
    }

    return Ink(
      width: width,
      height: height,
      padding: padding,
      decoration: decoration,
      child: child,
    );
  }
}
