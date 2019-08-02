import 'package:dining_app/theme.dart';
import 'package:flutter/material.dart';
import 'Navigation.dart';
import 'hall1.dart';
import 'hall2.dart';
import 'hall3.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dining App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: drawerBackgroundColor,
        title: Text('Dining Halls'),
      ),
      body: Stack(
        children: <Widget>[
          Container(color: Colors.red,),
          Navigation(),
        ],
      )
    );
  }


//  @override
//  _MyHomePageState createState() => _MyHomePageState();
}

//class _MyHomePageState extends State<MyHomePage> {
//
//  List<Widget> halls = [hall1(), hall2(), hall3()];
//
//  @override
//  Widget build(BuildContext context) {
//    return PageView.builder(
//      itemBuilder: (context, position) {
//        position=position%3;
//        return halls[position];
//      },
//    );
//  }
//}


