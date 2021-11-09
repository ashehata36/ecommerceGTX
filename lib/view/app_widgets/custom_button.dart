import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String text;
  Color color;
  Color background;
  double fontSize;
  FontWeight fontWeight;

  CustomButton({
    required this.text,
    this.color = Colors.white,
    this.background = const Color.fromRGBO(0, 197, 105, 1),
    this.fontSize = 18,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
          border: Border.all(
            color: color.withOpacity(0.2),
          ),
          color: background,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
