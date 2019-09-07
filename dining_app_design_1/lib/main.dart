import 'dart:async';

import 'package:flutter/material.dart';
import 'package:dining_app_design_1/common_actions.dart';
import 'package:dining_app_design_1/home_screen.dart';
import 'package:dining_app_design_1/app_state.dart';
import 'package:dining_app_design_1/store.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

Future<Null> main() async {
  var store = await createStore();
  runApp(new DiningApp(store));
}

class DiningApp extends StatefulWidget {
  DiningApp(this.store);
  final Store<AppState> store;

  @override
  _DiningAppState createState() => new _DiningAppState();
}



class _DiningAppState extends State<DiningApp> {

  @override
  void initState() {
    super.initState();
    widget.store.dispatch(new InitAction());
  }

  @override
  Widget build(BuildContext context) {
    return new StoreProvider<AppState>(
      store: widget.store,
      child: new MaterialApp(
        title: 'Dining',
        theme: new ThemeData(
          primaryColor:  const Color(0xFF02BB9F),
          primaryColorDark: const Color(0xFF167F67),
          accentColor: const Color(0xFFFFAD32),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}