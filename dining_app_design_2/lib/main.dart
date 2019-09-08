import 'package:flutter/material.dart';
import 'halls.dart';
import 'dishes.dart';
import 'favorites.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget current_state = halls();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dining App"),
        leading: Builder(
          builder: (context) => IconButton(
            icon: new Icon(Icons.list),
            onPressed: () => Scaffold.of(context).openDrawer(),
          )
        )
      ),
      body: Center(
        child: current_state,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child:
              Stack(children: <Widget>[
                Positioned(bottom: 12.0,
                left: 16.0,
                child: Text("Dining App"))
              ]),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Icon(Icons.home),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text("Dining halls"),
                  )
                ],
              ),
              onTap:() {
                setState(() {
                  current_state = halls();
                });
                Navigator.pop(context);
                },
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Icon(Icons.list),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text("Dishes"),
                  )
                ],
              ),
              onTap:() {
                setState(() {
                  current_state = dishes();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Icon(Icons.favorite),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text("Favorites"),
                  )
                ],
              ),
              onTap:() {
                setState(() {
                  current_state = favorites();
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

