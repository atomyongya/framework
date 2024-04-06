import 'package:flutter/widgets.dart';
import 'package:widgets/texts/text_view/text_view_options.dart';

/// Default text view.
class TextView extends StatelessWidget {
  const TextView({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.options,
    this.fontWeight,
  });

  /// [text] : String - Text to display.
  final String text;

  /// [color] : Color? - Color of a text.
  final Color? color;

  /// [fontSize] : double? - Size of a text.
  final double? fontSize;

  /// [options] : TextViewOptions? - Type of a text.
  final TextViewOptions? options;

  /// [fontWeight] : FontWeight? - FontWeight of a text.
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    switch (options) {
      case TextViewOptions.title:
        return Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        );

      case TextViewOptions.subtitle:
        return Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: fontSize,
          ),
        );

      default:
        return Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: fontSize,
          ),
        );
    }
  }
}
