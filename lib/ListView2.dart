import 'package:flutter/material.dart';

class ListWithBuilder extends StatelessWidget {
  List images = [
    'assets/motherEarth.png',
    'assets/motherEarth.png',
    'assets/motherEarth.png',
  ];
  List names = [
    'mother',
    'earth',
    'nature'
  ];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
   appBar: AppBar(
   title: const Text("ListBuilder"),
   ),
   body: ListView.builder(itemBuilder: (BuildContext,index){
     return Card(
       child: ListTile(
         leading: CircleAvatar(backgroundImage: AssetImage(images[index])),
         title: Text(names[index]),
       ),
     );
   },
     itemCount: images.length,
     scrollDirection: Axis.vertical,
     padding: EdgeInsets.all(15),
   ),
   );
  }
}
