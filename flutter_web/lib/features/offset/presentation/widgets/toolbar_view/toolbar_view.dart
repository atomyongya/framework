import 'package:flutter/material.dart';
import 'package:flutter_web/cores/utils/constants/app_colors.dart';
import 'package:flutter_web/features/offset/domain/entities/item_entity.dart';
import 'package:flutter_web/features/offset/presentation/widgets/draggable_view.dart';

class ToolbarView extends StatefulWidget {
  const ToolbarView({super.key});

  @override
  State<ToolbarView> createState() => _ToolbarViewState();
}

class _ToolbarViewState extends State<ToolbarView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Container(
      width: 200,
      height: size.height,
      color: AppColors.background,
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: <Widget>[
          DraggableView(
            data: ItemEntity(
              width: 100,
              height: 100,
              path: 'assets/images/tattoo.png',
            ),
          ),
        ],
      ),
    );
  }
}
