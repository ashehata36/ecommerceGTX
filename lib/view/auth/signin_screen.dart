import 'package:ecommerce/core/view_model/auth_viewmodel.dart';
import 'package:ecommerce/view/app_widgets/custom_button.dart';
import 'package:ecommerce/view/app_widgets/custom_social_button.dart';
import 'package:ecommerce/view/app_widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogInScreen extends GetWidget<AuthViewModel> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

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
        child: ListView(
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
                  onTap: () {
                    //Get.toNamed("/signup");
                    /*Get.showSnackbar(GetBar(
                      title: "AAAA",
                      borderRadius: 20,
                      message: "SSSSSSSSS",
                      isDismissible: true,
                      duration: const Duration(seconds: 3),
                      overlayBlur: 5,
                      snackPosition: SnackPosition.BOTTOM,
                      margin: const EdgeInsets.all(10),
                      animationDuration: const Duration(seconds: 1),
                    ));*/
                    /*Get.bottomSheet(
                      Column(
                        children: const [
                          ListTile(title: Text("AAAAAA"),leading: Icon(Icons.add),)
                        ],
                      ),
                      backgroundColor: Colors.redAccent,
                      elevation: 10,
                      enterBottomSheetDuration: const Duration(seconds: 2),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                        side: BorderSide(
                          color: Color.fromRGBO(112, 112, 112, 1),
                        ),
                      ),
                      barrierColor: Colors.black54
                    );*/
                    //Get.showOverlay(asyncFunction: ())
                  }
                  /*Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => SignUpScreen(),
                    ),
                  )*/
                  ,
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
              controller: _email,
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
              controller: _password,
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
                ),
              ),
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
            CustomSocialButton(
              imagePath: "assets/images/facebook.png",
              text: "Sign In with Facebook",
              function: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            CustomSocialButton(
              imagePath: "assets/images/google.png",
              text: "Sign In with Google",
              function: () => controller.signInWithGoogle(),
            ),
          ],
        ),
      ),
    );
  }
}
