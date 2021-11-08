import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;
  Color color;

  double fontSize;
  FontWeight fontWeight;
  AlignmentGeometry alignment;

  CustomText(
      {required this.text,
      this.color = Colors.black,
      this.fontSize = 18,
      this.fontWeight = FontWeight.normal,
      this.alignment = Alignment.topLeft});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
