import 'package:flutter/material.dart';
import 'package:flutter_web/cores/utils/constants/app_colors.dart';

class LayersView extends StatefulWidget {
  const LayersView({super.key});

  @override
  State<LayersView> createState() => _LayersViewState();
}

class _LayersViewState extends State<LayersView> {
  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.sizeOf(context);
    return Container(
      width: 200,
      height: size.height,
      color: AppColors.background,
    );
  }
}
