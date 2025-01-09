import 'package:equatable/equatable.dart';

enum ItemType {
  asset,
  localImage,
  networkImage,
  svgLocalImage,
  svgNetworkImage,
  customLocalImage,
}

class ItemEntity extends Equatable {
  /// Required Properties
  final String path;

  /// Nullable Properties
  final double? xAxis;
  final double? yAxis;
  final double? width;
  final int? hexColor;
  final double? height;

  /// Default Value Properties
  final ItemType type;
  const ItemEntity({
    required this.path,
    this.xAxis,
    this.yAxis,
    this.width,
    this.height,
    this.hexColor,
    this.type = ItemType.asset,
  });

  ItemEntity copyWith({
    double? xAxis,
    double? yAxis,
    double? width,
    double? height,
    int? hexColor,
  }) {
    return ItemEntity(
      path: path,
      xAxis: xAxis ?? this.xAxis,
      yAxis: yAxis ?? this.yAxis,
      width: width ?? this.width,
      height: height ?? this.height,
      hexColor: hexColor ?? this.hexColor,
    );
  }

  @override
  List<Object?> get props => <Object?>[path, xAxis, yAxis, width, height];
}
