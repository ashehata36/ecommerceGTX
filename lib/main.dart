import 'package:ecommerce/view/auth/signin_screen.dart';
import 'package:ecommerce/view/auth/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:showcaseview/showcaseview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'E-Commerce App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShowCaseWidget(
        builder: Builder(builder: (_) => const LogInScreen()),
      ),
      routes: {
        '/signup': (_)=>SignUpScreen()
      },
    );
  }
}
