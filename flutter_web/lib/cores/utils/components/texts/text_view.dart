import 'package:flutter/material.dart';
import 'package:flutter_web/cores/utils/helpers/responsive_text.dart';

class TextView extends StatelessWidget {
  /// Nullable Properties
  final String? text;
  final double? lineHeight;
  final EdgeInsets? padding;
  final Widget? placeholder;
  final double? letterSpacing;
  final FontWeight? fontWeight;

  /// Properties With Default Value
  final double rem;
  final bool isLoading;

  const TextView({
    super.key,
    required this.text,
    this.padding,
    this.fontWeight,
    this.lineHeight,
    this.placeholder,
    this.letterSpacing,
    this.rem = 1,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return SizedBox.shrink();
    }

    if (text == null && placeholder == null) {
      return SizedBox.shrink();
    }

    if (text == null && placeholder != null) {
      return placeholder!;
    }

    double fontSize = ResponsiveText.rem(context, fontSize: rem);
    double? height;
    if (lineHeight != null) {
      height = lineHeight! / (fontSize);
    }

    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Text(
        text!,
        style: TextStyle(
          height: height,
          fontSize: fontSize,
          letterSpacing: letterSpacing,
          fontWeight: fontWeight ?? FontWeight.normal,
        ),
      ),
    );
  }
}
