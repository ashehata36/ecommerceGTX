import 'package:flutter/material.dart';

import 'custom_text.dart';
class CustomSocialButton extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback function;
  CustomSocialButton({required this.imagePath,required this.text,required this.function});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed:function,
      child: ListTile(
        title: CustomText(
          text: text,
          fontSize: 14,
        ),
        leading: Image.asset(imagePath),
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: const BorderSide(
              color: Color.fromRGBO(112, 112, 112, 1),
            ),
          ),
        ),
      ),
    );
  }
}
