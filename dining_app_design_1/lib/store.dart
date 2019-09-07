import 'dart:async';

import 'package:flutter/services.dart';
import 'package:dining_app_design_1/app_reducer.dart';
import 'package:dining_app_design_1/app_state.dart';
import 'package:dining_app_design_1/drawer/drawer_middleware.dart';
import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<Store<AppState>> createStore() async {

  var prefs = await SharedPreferences.getInstance();

  return new Store(
    appReducer,
    initialState: new AppState.initial(),
    middleware: [
      new DrawerMiddleware(rootBundle, prefs),
    ],
  );

}