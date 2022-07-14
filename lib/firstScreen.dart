import 'package:flutter/material.dart';

void main(){
  runApp(LauncherScreen());
}

class LauncherScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text("My app"),
       ),
       body: Center(
         child: Text("My First app",style: TextStyle(color: Colors.purple,fontSize: 20),
         ),
       ),
     ),
   );
  }
}