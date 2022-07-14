import 'package:flutter/material.dart';

class ContactBook extends StatelessWidget {
  List images = [
    'assets/rono.png',
    'assets/leo.png',
    'assets/valak.png',
    'assets/lalettan.png',
    'assets/quinn.png',
    'assets/pitt.png',
    'assets/spidey.png'
  ];
  List names = [
    'Ronaldo',
    'Messi',
    'Valak ❤️',
    'Lalettan',
    'Harley',
    'Brad pitt',
    'Spidey'
  ];
  List numbers = [
    '9895695325',
    '9654321123',
    '8465789987',
    '2255',
    '9895699366',
    '9447599955',
    '9487291703'

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Contacts"),
      ),
      body: ListView.builder(itemBuilder: (BuildContext,index){
        return Card(
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage(images[index])),
            title: Text(names[index]),
            subtitle: Text(numbers[index]),
            trailing: Icon(Icons.call),
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
