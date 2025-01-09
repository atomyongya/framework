import 'package:flutter/material.dart';
import 'package:flutter_web/config/router/app_routes.dart';
import 'package:flutter_web/cores/utils/constants/app_colors.dart';
import 'package:flutter_web/cores/utils/components/texts/text_view.dart';
import 'package:flutter_web/cores/utils/components/buttons/app_button.dart';

class ResponsiveScreen extends StatefulWidget {
  const ResponsiveScreen({super.key});

  @override
  State<ResponsiveScreen> createState() => _ResponsiveScreenState();
}

class _ResponsiveScreenState extends State<ResponsiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: <Widget>[
          TextView(text: 'Atom Yongya'),
          AppButton(
            onTap: () {
              AppRoutes.home.go(context);
            },
            label: 'Go to home',
          ),
        ],
      ),
    );
  }
}
