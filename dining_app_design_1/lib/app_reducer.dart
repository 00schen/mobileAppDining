import 'package:dining_app_design_1/app_state.dart';
import 'package:dining_app_design_1/drawer/drawer_reducer.dart';

AppState appReducer(AppState state, dynamic action) {
  return new AppState(
    drawerState: drawerReducer(state.drawerState, action),
  );
}