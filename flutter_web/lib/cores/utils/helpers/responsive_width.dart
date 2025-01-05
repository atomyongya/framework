import 'package:flutter/material.dart';

class ResponsiveWidth {
  static double width(GlobalKey globalKey){
    RenderBox? box = globalKey.currentContext?.findRenderObject() as RenderBox?;
    if (box == null){
      return 200;
    }

    double width = box.size.width;
    return width;
  }
}
