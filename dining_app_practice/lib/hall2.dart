//
//import 'package:flutter/material.dart';
//
//class hall2 extends StatelessWidget {
//
//  List<String> times = ['breakfast', 'lunch', 'dinner'];
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Colors.white,
//      appBar: AppBar(
//        title: Text('Crossroads'),
//        a
//
//      ),
//      body: ListView.builder(
//        itemCount: times.length,
//        itemBuilder: (context, position) {
//          final item = times[position];
//          return ListTile(
//            title: Text(item, style: TextStyle(fontSize: 22.0),)
//          );
//        }
//      )
//    );
//  }
//}

import 'package:flutter/material.dart';

class hall2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        position += 2;
        return Card(
          child: Padding(
            padding :const EdgeInsets.all(16.0),
            child: Text(position.toString(), style:
            TextStyle(fontSize: 22.0),),
          ),
        );
      },
    );
  }
}