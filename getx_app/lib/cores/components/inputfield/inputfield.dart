import 'package:flutter/material.dart';

class Inputfield extends StatefulWidget {
  final bool autoFocus;
  final Widget? suffixIcon;
  final FocusNode? focusNode;
  const Inputfield({
    super.key,
    this.focusNode,
    this.suffixIcon,
    this.autoFocus = false,
  });

  @override
  State<Inputfield> createState() => _InputfieldState();
}

class _InputfieldState extends State<Inputfield> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: widget.focusNode,
      autofocus: widget.autoFocus,
      decoration: InputDecoration(
        constraints: BoxConstraints(
          maxWidth: 400,
        ),
        suffixIcon: widget.suffixIcon,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
