import 'package:flutter/material.dart';
import 'package:app/config/app_themes/app_colors.dart';

class TextView extends StatelessWidget {
  final String? text;
  final Color? color;
  final bool loading;
  final int? maxLines;
  final double? fontSize;
  final EdgeInsets? margin;
  final double? lineHeight;
  final TextAlign? textAlign;
  final double? letterSpacing;
  final FontWeight? fontWeight;
  final Widget? loadingIndicator;

  const TextView({
    super.key,
    this.color,
    this.margin,
    this.maxLines,
    this.textAlign,
    this.fontWeight,
    this.lineHeight,
    required this.text,
    this.fontSize = 14,
    this.letterSpacing,
    this.loading = false,
    this.loadingIndicator,
  });

  @override
  Widget build(BuildContext context) {
    if (loading) {
      if (loadingIndicator != null) {
        return loadingIndicator!;
      }

      return const SizedBox.shrink();
    }

    if (text?.isEmpty ?? true) {
      return const SizedBox.shrink();
    }

    double? height;
    if (lineHeight != null) {
      height = lineHeight! / (fontSize ?? 14);
    }

    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: Text(
        text!,
        maxLines: maxLines,
        textAlign: textAlign ?? TextAlign.center,
        style: TextStyle(
          height: height,
          fontSize: fontSize,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing,
          color: color ?? AppColors.light,
        ),
      ),
    );
  }
}
