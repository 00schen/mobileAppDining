import 'dart:async';
import 'package:flutter/services.dart';
import 'package:dining_app_design_1/app_state.dart';
import 'package:dining_app_design_1/common_actions.dart';
import 'package:dining_app_design_1/drawer/drawer_model.dart';
import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DrawerMiddleware extends MiddlewareClass<AppState> {
  static const String kDefaultTheaterId = 'default_theater_id';

  final AssetBundle bundle;
  final SharedPreferences preferences;

  DrawerMiddleware(this.bundle, this.preferences);

  @override
  Future<Null> call(Store<AppState> store, action, NextDispatcher next) async {
    if (action is InitAction) {
      await _init(action, next);
    } else if (action is ChangeCurrentTheaterAction) {
      await _changeCurrentTheater(action, next);
    } else {
      next(action);
    }
  }

  Future<Null> _init(
      InitAction action,
      NextDispatcher next,
      ) async {
    List<DrawerModel> allTheaters = new List();

    DrawerModel theater = new DrawerModel(id: "1031", name: "Dining Halls");
    DrawerModel theater1 = new DrawerModel(id: "1014", name: "Dishes");
    DrawerModel theater2 = new DrawerModel(id: "1012", name: "Favorite Dishes");


    allTheaters.add(theater);
    allTheaters.add(theater1);
    allTheaters.add(theater2);


    next(new InitCompleteAction(allTheaters, allTheaters.first));
  }

  Future<Null> _changeCurrentTheater(
      ChangeCurrentTheaterAction action,
      NextDispatcher next,
      ) async {
    preferences.setString(kDefaultTheaterId, action.selectedDrawer.id);
    next(action);
  }
}