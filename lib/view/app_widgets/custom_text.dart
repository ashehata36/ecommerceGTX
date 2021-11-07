import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;
  Color color ;
  double fontSize;
  FontWeight fontWeight;
  CustomText({required this.text,this.color = Colors.black,this.fontSize = 18,this.fontWeight = FontWeight.normal});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
