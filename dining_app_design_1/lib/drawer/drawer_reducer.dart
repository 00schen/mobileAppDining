import 'package:dining_app_design_1/common_actions.dart';
import 'package:dining_app_design_1/drawer/drawer_state.dart';
import 'package:redux/redux.dart';

final drawerReducer = combineReducers<DrawerState>([
  new TypedReducer<DrawerState, InitCompleteAction>(_initComplete),
  new TypedReducer<DrawerState, ChangeCurrentTheaterAction>(
      _currentTheaterChanged),
]);

DrawerState _initComplete(DrawerState state, InitCompleteAction action) {
  return state.copyWith(
    currentTheater: action.selectedDrawer,
    theaters: action.drawer,
  );
}

DrawerState _currentTheaterChanged(DrawerState state, ChangeCurrentTheaterAction action) {
  return state.copyWith(currentTheater: action.selectedDrawer);
}