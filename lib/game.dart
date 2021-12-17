import 'package:flutter/material.dart';
// ignore: use_key_in_widget_constructors
class Game extends StatefulWidget {
  @override
 State<StatefulWidget> createState() =>  StartState();
}
class  StartState extends State<Game> {
  get background => null;

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
            children: [
              Expanded (
                child: Container(
                 width: 50,
  height: 1000,
                decoration:  BoxDecoration(
                borderRadius:  BorderRadius.circular(16.0),
                color: const Color(0xFFff6666),
                ),
                          child: Align(
              alignment: Alignment.bottomCenter,
                            child: Image.asset(
                              "assets/fem4.png",
                              height: 1500,
                              width: 1000,
                            ),
                            )
                ),
              ),Expanded (
                child: Container(
                 width: 50,
                  height: 1000,
                decoration:  BoxDecoration(
                borderRadius:  BorderRadius.circular(16.0),
                color: const Color(0xFF006666),
                ),
                child: Align(
              alignment: Alignment.bottomCenter,
                            child: Image.asset(
                              "assets/fem4.png",
                              height: 1500,
                              width: 1000,
                            ),
                            )
                ),
              ),
        ],
      )
    );
}
}