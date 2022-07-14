
import 'package:flutter/material.dart';
import 'package:honeycomb/ListView2.dart';
import 'package:honeycomb/LoginPage.dart';
import 'package:honeycomb/homepage.dart';
import 'package:splash_screen_view/SplashScreenView.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget example1 = SplashScreenView(
      navigateRoute: Homepage(),
      duration: 5000,
      imageSize: 200,
      imageSrc: "motherEarth.png",
      text: "Mother Earth",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 40.0,
      ),
      colors: [
        /*Colors.purple,
        Colors.blue,
        Colors.yellow,
        Colors.red,*/
        Colors.green,
        Colors.greenAccent,
        Colors.lightGreen,
      ],
      backgroundColor: Colors.green.shade200,
    );

    return MaterialApp(
      title: 'Splash screen Demo',
      home: example1,
    );
  }
}