import 'package:flutter/material.dart';
import 'package:henshe/homepage.dart';
import 'dart:async';
// ignore: use_key_in_widget_constructors
class First extends StatefulWidget {
  @override
 State<StatefulWidget> createState() =>  StartState();
}
class  StartState extends State<First> {
  get background => null;

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFff6666),
      body:Center(
        child: Container(
                  padding: const EdgeInsets.only(top: 2, left: 0),
                          child: Image.asset(
                              "assets/heart.png",
                              height: 500,
                              width: 400,
                            ),
                
      )  ),);
  }
  @override
void initState() {
 Timer(const Duration(seconds: 2), (){
Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> 
 LoginSignupScreen()));
});
 super.initState();
}
}
  