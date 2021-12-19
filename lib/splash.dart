import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
 State<StatefulWidget> createState() =>  StartState();
}
class  StartState extends State<Splash> with TickerProviderStateMixin {
  AnimationController _controller;
  @override
   void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
  }  
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFff6666),
        body: Center(child: ListView(
          padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
          children: [
            Lottie.asset(
              'lottie/heart.json',
              width: 40,
  height: 300,
      controller: _controller,
              onLoaded: (composition) {
                // Configure the AnimationController with the duration of the
                // Lottie file and start the animation.
                _controller
                  ..duration = const Duration(seconds: (5))
                  ..forward(); 
              },
        )
          ]
      )
      )
    )
    );
  }
}