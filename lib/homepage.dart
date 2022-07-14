import 'package:flutter/material.dart';
import 'package:honeycomb/FireSplash.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Homepage"),
      ),
      body: ListView(
        children:  [
          Padding(
            padding: EdgeInsets.all(15),
            child: Center(child: Text("LIST OF FOOD ITEMS")),
          ),
          GestureDetector(
            onTap:(){} ,
            child: Card(
              child: ListTile(
                leading: Icon(Icons.apple),
                title: Text("Apple"),
              ),
            ),
          ),
          Card(
            color: Colors.yellow,
            child: ListTile(
              leading: Icon(Icons.star,color: Colors.red,),
              title: Text("Banana"),
              subtitle: Text("minions love bananaaaa"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.umbrella,color: Colors.blue,),
            title: Text("jackfriut"),
          ),
          ListTile(
            leading: Icon(Icons.museum,color: Colors.green,),
            title: Text("Coffee"),
            trailing: Icon(Icons.arrow_back_sharp),
          ),
          ListTile(
            leading: Icon(Icons.bike_scooter,color: Colors.yellow,),
            title: Text("Oreo"),
          )
        ],
      ),
    );
  }

}