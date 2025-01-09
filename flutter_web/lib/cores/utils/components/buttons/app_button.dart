import 'package:flutter/material.dart';
import 'package:flutter_web/cores/providers/responsive.dart';
import 'package:flutter_web/cores/utils/constants/app_colors.dart';
import 'package:flutter_web/cores/utils/components/texts/text_view.dart';

class AppButton extends StatelessWidget {
  /// Required Property
  final String label;

  /// Nullable Property
  final VoidCallback? onTap;
  final double? radiusValue;
  final Color? backgroundColor;
  final MainAxisAlignment? mainAxisAlignment;

  const AppButton({
    super.key,
    required this.onTap,
    required this.label,
    this.radiusValue,
    this.backgroundColor,
    this.mainAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(radiusValue ?? 8),
      child: Responsive.widget.ink(
        context,
        mobileHeight: 200,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.primary,
          borderRadius: BorderRadius.circular(radiusValue ?? 8),
        ),
        child: Row(
          mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: TextView(
                text: label,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
