import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Game extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<Game> {
  get background => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECF3F9),
      body: Column(
        children: [
           Container(
                height: 110,
                color: const Color(0xFFECF3F9),
              ),
          Expanded(
              child: Row(children: [
          Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: InkWell(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFff6666),
                        ),
                      child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/fem.png",
                                fit: BoxFit.contain,
                              ),
                            ])
                      ),
                      onTap: () {                          
                    print("tapped on container");
                    } 
                      )
                  ),
                  Expanded(
                      child: InkWell(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color(0xFF99e6e6),
                      ),
                      child: Align(
                          alignment: Alignment.center,
                              child: Container(
                            width: 300,
                            height: 410,
                            decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/male1.png"),
                              fit: BoxFit.cover,
                            ),
                        ),
                        margin: const EdgeInsets.only(bottom: 100),
                            ),
                      )
                    ),
                    
                      onTap: () {                          
                    print("tapped on container");
                    } 
                            )
                  )
              ]
              )
          )
        ]
              )
          )
        ]
      )
    );
  }
}


