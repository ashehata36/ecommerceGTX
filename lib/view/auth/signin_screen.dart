import 'package:ecommerce/view/app_widgets/custom_button.dart';
import 'package:ecommerce/view/app_widgets/custom_text.dart';
import 'package:ecommerce/view/auth/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

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
      body: Container(
        padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Welcome, ",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                GestureDetector(
                  child: CustomText(
                    text: "Sign Up",
                    fontSize: 18,
                    color: const Color.fromRGBO(0, 197, 105, 1),
                  ),
                  onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => SignUpScreen(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: CustomText(
                text: "Sign in to Continue",
                fontSize: 14,
                color: const Color.fromRGBO(146, 146, 146, 1),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              style: const TextStyle(fontSize: 25),
              decoration: InputDecoration(
                  label: CustomText(
                    text: "Email",
                    fontSize: 14,
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(0, 197, 105, 1),
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 15),
                  hintText: "iamdavid@gmail.com"),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: true,
              style: const TextStyle(fontSize: 25),
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 15),
                  label: CustomText(
                    text: "Password",
                    fontSize: 14,
                  ),
                  hintText: "",
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(0, 197, 105, 1),
                    ),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomText(
              text: "Forgot Password?",
              fontSize: 14,
              alignment: Alignment.topRight,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(text: "SIGN IN"),
            const SizedBox(
              height: 30,
            ),
            CustomText(
              text: "-OR-",
              fontSize: 18,
              alignment: Alignment.center,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: "Sign In with Facebook",
              fontSize: 14,
              background: Colors.white,
              color: Colors.black,
              icon: FontAwesomeIcons.facebook,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: "Sign In with Google",
              fontSize: 14,
              background: Colors.white,
              color: Colors.black,
              icon: FontAwesomeIcons.google,
            ),
          ],
        ),
      ),
    );
  }
}
