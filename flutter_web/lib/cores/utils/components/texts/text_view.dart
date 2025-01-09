import 'package:flutter/material.dart';
import 'package:flutter_web/cores/providers/responsive.dart';
import 'package:flutter_web/cores/utils/constants/app_colors.dart';

class TextView extends StatelessWidget {
  /// Nullable Properties
  final String? text;
  final Color? color;
  final double? lineHeight;
  final EdgeInsets? padding;
  final Widget? placeholder;
  final double? letterSpacing;
  final FontWeight? fontWeight;
  final TextOverflow? overflow;

  /// Properties With Default Value
  final double rem;
  final bool isLoading;

  const TextView({
    super.key,
    required this.text,
    this.color,
    this.padding,
    this.overflow,
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

    double fontSize = Responsive.text.rem(context, fontSize: rem);
    double? height;
    if (lineHeight != null) {
      height = lineHeight! / (fontSize);
    }

    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Text(
        text!,
        overflow: overflow ?? TextOverflow.ellipsis,
        style: TextStyle(
          height: height,
          fontSize: fontSize,
          letterSpacing: letterSpacing,
          color: color ?? AppColors.light,
          fontWeight: fontWeight ?? FontWeight.normal,
        ),
      ),
    );
  }
}
