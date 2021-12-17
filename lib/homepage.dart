import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:henshe/config/palette.dart';
import 'package:clipboard/clipboard.dart';
import 'package:henshe/game.dart';

// ignore: use_key_in_widget_constructors
class LoginSignupScreen extends StatefulWidget {
  @override
  _LoginSignupScreenState createState() => _LoginSignupScreenState();
}
class _LoginSignupScreenState extends State<LoginSignupScreen> {
  bool isSignupScreen = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: SizedBox(
              // ignore: sized_box_for_whitespace
              child: Container(
                height: 300,
                // ignore: prefer_const_constructors
                child: Container(
                  padding: const EdgeInsets.only(top: 2, left: 0),
                  color: const Color(0xFFff6666).withOpacity(.85),
                          margin: const EdgeInsets.only(top: 5),
                          child: Image.asset(
                              "assets/couple.png",
                              height: 50,
                              width: 300,
                              fit: BoxFit.fitWidth,
                            ),
                  ),
                ),
              ),
          ),
          //Main Contianer for Login and Signup
          AnimatedPositioned(
            duration: const Duration(milliseconds: 80),
            curve: Curves.bounceInOut,
            top: isSignupScreen ? 210 : 200,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 80),
              curve: Curves.bounceInOut,
              height: isSignupScreen ? 300 : 250,
              padding: const EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width - 80,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 15,
                        spreadRadius: 5),
                  ]),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isSignupScreen = false;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                "Enter the ID",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: !isSignupScreen
                                        ? Palette.activeColor
                                        : Palette.textColor1),
                              ),
                              if (!isSignupScreen)
                                Container(
                                  margin: const EdgeInsets.only(top: 3),
                                  height: 2,
                                  width: 55,
                                  color: Colors.orange,
                                )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isSignupScreen = true;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                "Generate an ID",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: isSignupScreen
                                        ? Palette.activeColor
                                        : Palette.textColor1),
                              ),
                              if (isSignupScreen)
                                Container(
                                  margin: const EdgeInsets.only(top: 3),
                                  height: 2,
                                  width: 55,
                                  color: Colors.orange,
                                )
                            ],
                          ),
                        )
                      ],
                    ),
                    if (isSignupScreen) buildSignupSection(),
                    if (!isSignupScreen) buildSigninSection()
                  ],
                ),
              ),
            ),
          ),
          // Trick to add the submit button
          buildBottomHalfContainer(false),
        ],
      ),
    );
  }

  Container buildSigninSection() {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          buildTextField(Icons.perm_identity, "Enter the auto-generated ID"),
        ],
      ),
    );
  }

  Container buildSignupSection() {
    return Container(
      margin: const EdgeInsets.only(top: 60),
      child: Column(
        children: [
          TextButton(
          style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 14),
            ),
            onPressed:(){
              var uuid = const Uuid().v1();
               FlutterClipboard.copy(uuid).then((value) => {
                                                          print('copied'),
                                                          showDialog(
                    context: context,
                    builder: (BuildContext context) => leadDialog),
                                                          });
              
            } ,
            child: const Text('Click to generate an ID', style: TextStyle(color: Color(0xFFA7BCC7)),),
          ),
                const SizedBox(
                  width: 30,),
                    ],
                  ),
                );
  }
  Dialog leadDialog = Dialog(
  child: Container(
    height: 40,
    width: 6,
    color: Colors.transparent,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
       children: <Widget>[
        Padding(
         padding: EdgeInsets.all(1),
          child:  Center(heightFactor: 2.3,
            child: Text(
            'Copied', textAlign: TextAlign.center,
            style:
             TextStyle(color: Colors.black, fontSize: 14, ),
          ),
        ),
        )
      ],
    ),
  ),
);

  TextButton buildTextButton(
      IconData icon, String title, Color backgroundColor) {
    return TextButton(
      onPressed: (
      ) {
      },
      style: TextButton.styleFrom(
          side: const BorderSide(width: 1, color: Colors.white),
          minimumSize: const Size(145, 40),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          primary: Colors.white,
          backgroundColor: backgroundColor), child: null,
    );
  }

  Widget buildBottomHalfContainer(bool showShadow) {
   return AnimatedPositioned(
      duration: const Duration(milliseconds: 700),
      curve: Curves.bounceInOut,
      top: isSignupScreen ? 460 : 410,
      right: 0,
      left: 0,
      child: Center(
        child: !isSignupScreen ? Container(
          height: 90,
          width: 90,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                if (showShadow)
                  BoxShadow(
                    color: Colors.black.withOpacity(.3),
                    spreadRadius: 1.5,
                    blurRadius: 10,
                  )
              ]),
          child: !showShadow
              ? Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient( 
                          colors: [Colors.red[100], Color(0xFFff6666)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.3),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: const Offset(0, 1))
                      ]),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_right, 
                    color: Colors.white, size: 40),
                    onPressed: () {
            setState(() {
                              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Game()
            )
                              );}
                  );
                    }
                )
              )
              : const Center(),
        ): const Center(),
      ),
    );
  }

Widget buildTextField(
   IconData icon, String hintText) {
   return Padding(
     padding: const EdgeInsets.only(bottom: 8.0),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Palette.iconColor,
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Palette.textColor1),
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Palette.textColor1),
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
          ),
          contentPadding: const EdgeInsets.all(10),
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 14, color: Palette.textColor1),
        ),
      ),
    );
  }
  }