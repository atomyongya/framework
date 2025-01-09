import 'package:flutter/material.dart';
import 'package:flutter_web/cores/utils/components/texts/text_view.dart';

class KeyValueText extends StatelessWidget {
  final String id;
  final String? value;
  final double? width;
  final double? idWidth;
  const KeyValueText({
    super.key,
    this.width,
    this.idWidth,
    required this.id,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return SizedBox(
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: idWidth ?? (size.width / 2),
            child: TextView(text: id),
          ),
          SizedBox(width: 24),
          TextView(text: value),
        ],
      ),
    );
  }
}
