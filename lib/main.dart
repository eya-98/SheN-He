import 'package:flutter/material.dart';
import 'package:henshe/homepage.dart';

void main() {
 runApp(const LoginSignupUI());
}

class LoginSignupUI extends StatelessWidget {
  const LoginSignupUI({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "He N' She",
      home: LoginSignupScreen(),
    );
  }
}