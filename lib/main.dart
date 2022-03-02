import 'package:flutter/material.dart';
import 'package:henshe/first.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const LoginSignupUI());
}
class LoginSignupUI extends StatelessWidget {
  const LoginSignupUI({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
          title: "He N' She",
          home: First(),
          debugShowCheckedModeBanner: true,
          );
      }
}