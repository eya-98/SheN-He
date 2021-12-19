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
      backgroundColor: const Color(0xFFECF3F9),
      body: Column (
        children: [ 
                    Expanded(
                      child: Row(
                           children: [ Expanded (
                          child: Container(
                             width: 100,
                            height: 150,
                            decoration: const BoxDecoration(
                            color: Color(0xFFECF3F9)),
                          )
                           )
                           ]
                            )
                          ),
                   Expanded(
                     flex: 9,
                    child: Row(
                    children: [
                        Expanded (
                          child: InkWell(
                          child: Container(
                          width: 20,
                          height: 550,       
                          padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                          decoration:  BoxDecoration(
                          borderRadius:  BorderRadius.circular(16.0),
                          color: const Color(0xFFff6666),
                          ),
                              child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                                children: 
                                  [
                                    Image.asset(
                                    "assets/fem.png",width: 300, height: 400, fit: BoxFit.contain,
                                    ),
                                  ]
                                )
                              ),
                              onTap: () {
                                print("Tapped on container"); 
                              },
                          )
                          ),
                          Expanded (
                            child: InkWell(
                          child: Container(
                          width: 20,
                          height: 550,       
                          padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                          decoration:  BoxDecoration(
                          borderRadius:  BorderRadius.circular(16.0),
                          color: const Color(0xFF99e6e6),
                           ),
                              child: Align(
          alignment: Alignment.center,
          child: Column(
                                children: 
                                  [        
                                    Image.asset(
                                    "assets/male1.png",width: 540, height: 370, fit: BoxFit.fill,
                                    ),
                                  ]
                                )
                              ),
                          ),
                          onTap: () {
                                print("Tapped on container2"); 
                              },
                            )
                          )
        ],
      )
                  )
      ]
      )
        

       );
}
}