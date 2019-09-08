import 'package:flutter/material.dart';
import 'dish_model.dart';
class favorites extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
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