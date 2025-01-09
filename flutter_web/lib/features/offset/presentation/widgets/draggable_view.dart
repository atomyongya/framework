import 'package:flutter/material.dart';
import 'package:flutter_web/features/offset/domain/entities/item_entity.dart';

class DraggableView extends StatelessWidget {
  final ItemEntity data;

  const DraggableView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Draggable(
      data: data,
      onDragUpdate: (details) {
        data.copyWith(
          xAxis: details.delta.dx,
          yAxis: details.delta.dy,
        );
      },
      onDragEnd: (details) {
        data.copyWith(
          xAxis: details.offset.dx,
          yAxis: details.offset.dy,
        );
      },
      feedback: Image.asset(
        data.path,
        width: data.width ?? 100,
        height: data.height ?? 100,
      ),
      child: Image.asset(
        data.path,
        width: data.width ?? 100,
        height: data.height ?? 100,
      ),
    );
  }
}
