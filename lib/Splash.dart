import 'dart:async';

import 'package:flutter/material.dart';
import 'package:honeycomb/homepage.dart';

void main() {
  runApp(MaterialApp(home: SplashScreen(),theme: ThemeData(primarySwatch: Colors.yellow),));
}

class SplashScreen extends StatefulWidget {
  @override 
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State {
  @override
  void initState() {
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Homepage())));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(
              image: AssetImage("assets/motherEarth.png"),
              height: 200,
              width: 200,
            ),
            Text("honey comb"),
          ],
        ),
      ),
    );
  }
}
