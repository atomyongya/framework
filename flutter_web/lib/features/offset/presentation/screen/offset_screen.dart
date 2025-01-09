import 'package:flutter/material.dart';
import 'package:flutter_web/cores/utils/constants/app_colors.dart';
import 'package:flutter_web/cores/utils/components/texts/text_view.dart';

class OffsetScreen extends StatefulWidget {
  const OffsetScreen({super.key});

  @override
  State<OffsetScreen> createState() => _OffsetScreenState();
}

class _OffsetScreenState extends State<OffsetScreen> {
  ValueNotifier<Offset?> valueNotifier = ValueNotifier<Offset?>(null);

  @override
  void dispose() {
    valueNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          TextView(text: 'Something is going on inside this app'),
          Transform.translate(
            offset: Offset(0, -40),
            child: TextView(
              text: 'Position',
              rem: 2,
            ),
          ),
        ],
      ),
    );
  }
}

    // return Scaffold(
    //   backgroundColor: AppColors.background,
    //   body: Stack(
    //     children: <Widget>[
    //       CanvasView(),
    //       Positioned(
    //         left: 0,
    //         child: LayersView(),
    //       ),
    //       Positioned(
    //         right: 0,
    //         child: ToolbarView(),
    //       ),
    //     ],
    //   ),
    // );