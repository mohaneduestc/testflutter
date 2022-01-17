import 'package:flutter/material.dart';

class TextBold extends StatelessWidget {
  const TextBold(
      {required this.text,
      AlignmentGeometry? this.alignment,
      double? this.fontSize,
      Color? this.color});
  final String text;
  final alignment;
  final fontSize;
  final color;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment ?? Alignment.center,
      child: Text(
        text,
        style: TextStyle(
            color: color ?? Colors.white,
            fontSize: fontSize ?? 14,
            fontWeight: FontWeight.bold,
           ),
      ),
    );
  }
}
