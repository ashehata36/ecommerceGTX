import 'package:ecommerce/view/app_widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Welcome, ",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                CustomText(
                  text: "Sign Up",
                  fontSize: 18,
                  color: const Color.fromRGBO(0, 197, 105, 1),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: CustomText(
                text: "Sign in to Continue",
                fontSize: 14,
                color: const Color.fromRGBO(146, 146, 146, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
