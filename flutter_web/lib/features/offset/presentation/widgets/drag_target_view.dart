import 'package:flutter/material.dart';
import 'package:flutter_web/features/offset/domain/entities/item_entity.dart';
import 'package:flutter_web/features/offset/presentation/widgets/draggable_view.dart';

class DragTargetView extends StatefulWidget {
  const DragTargetView({
    super.key,
  });

  @override
  State<DragTargetView> createState() => _DragTargetViewState();
}

class _DragTargetViewState extends State<DragTargetView> {
  late ValueNotifier<List<ItemEntity>> _availableItemNotifier;
  @override
  void initState() {
    super.initState();
    _availableItemNotifier = ValueNotifier<List<ItemEntity>>([]);
  }

  @override
  void dispose() {
    _availableItemNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _availableItemNotifier,
      builder: (_, List<ItemEntity> items, __) {
        return Stack(
          children: <Widget>[
            Container(
              color: Colors.red,
              child: DragTarget<ItemEntity>(
                onAcceptWithDetails: (DragTargetDetails<ItemEntity> detail) {
                   _availableItemNotifier.value.add(detail.data.copyWith(
                    yAxis: detail.offset.dx - 200,
                    xAxis: detail.offset.dy - 200,
                  ));
                  setState(() {
                  });
                },
                builder: (
                  BuildContext context,
                  List<ItemEntity?> items,
                  ___,
                ) {
                  return Image.asset(
                    width: 600,
                    height: 600,
                    'assets/images/tshirt.png',
                  );
                },
              ),
            ),
            ...items.map(
              (ItemEntity data) {
                return Positioned(
                  left: data.xAxis,
                  top: data.yAxis,
                  child: DraggableView(data: data),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
