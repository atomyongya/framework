import 'package:app/cores/components/texts/text_view.dart';
import 'package:flutter/material.dart';
import 'package:app/config/app_themes/app_colors.dart';

class AppButton extends StatelessWidget {
  final String label;
  final double? width;
  final Color? fontColor;
  final double? elevation;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final VoidCallback? onTap;
  final double? labelFontSize;
  final Color? backgroundColor;
  final double? borderRadiusValue;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? borderColor;
  final bool isLoading;
  final double? height;
  final FontWeight? fontWeight;
  final bool useFullWidth;
  final bool isValid;
  final double? space;
  final Color? focusColor;
  const AppButton({
    super.key,
    this.width,
    this.onTap,
    this.margin,
    this.height,
    this.elevation,
    this.fontColor,
    this.labelFontSize,
    required this.label,
    this.backgroundColor,
    this.borderRadiusValue,
    this.prefixIcon,
    this.suffixIcon,
    this.borderColor,
    this.isLoading = false,
    this.useFullWidth = true,
    this.fontWeight,
    this.padding,
    this.isValid = true,
    this.space,
    this.focusColor,
  });

  @override
  Widget build(BuildContext context) {
    double? currentWidth =
        width ?? (useFullWidth ? MediaQuery.sizeOf(context).width : null);

    VoidCallback? currentOnTap = onTap;
    Color currentBackgroundColor = backgroundColor ?? AppColors.teritery;
    if (!isValid) {
      currentOnTap = null;
      currentBackgroundColor = AppColors.grey;
    }

    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: margin ?? const EdgeInsets.symmetric(horizontal: 16),
        child: InkWell(
          focusColor: focusColor,
          onTap: currentOnTap,
          borderRadius: BorderRadius.circular(borderRadiusValue ?? 32),
          child: Container(
            height: height ?? 48,
            width: currentWidth,
            padding: padding ?? EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              border: Border.all(
                color: borderColor ?? currentBackgroundColor,
              ),
              borderRadius: BorderRadius.circular(borderRadiusValue ?? 32),
              color: currentBackgroundColor,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (prefixIcon != null) prefixIcon!,
                if (prefixIcon != null) SizedBox(width: space ?? 8),
                if (!isLoading)
                  Flexible(
                    child: TextView(
                      text: label,
                      fontSize: labelFontSize ?? 16,
                      fontWeight: fontWeight ?? FontWeight.w600,
                      color: fontColor ?? AppColors.light,
                    ),
                  )
                else
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: AppColors.light,
                    ),
                  ),
                if (suffixIcon != null) suffixIcon!,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
