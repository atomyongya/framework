import 'package:flutter/material.dart';
import 'package:flutter_web/cores/utils/constants/app_colors.dart';
import 'package:flutter_web/features/offset/presentation/widgets/drag_target_view.dart';

class CanvasView extends StatefulWidget {
  const CanvasView({super.key});

  @override
  State<CanvasView> createState() => _CanvasViewState();
}

class _CanvasViewState extends State<CanvasView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.teritery,
      alignment: Alignment.center,
      child: DragTargetView(
      ),
    );
  }
}
