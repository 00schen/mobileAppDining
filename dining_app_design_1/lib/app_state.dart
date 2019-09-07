import 'package:dining_app_design_1/drawer/drawer_state.dart';
import 'package:meta/meta.dart';

@immutable
class AppState {
  final DrawerState drawerState;

  AppState({
    @required this.drawerState,
  });

  factory AppState.initial() {
    return new AppState(
      drawerState: new DrawerState.initial(),
    );
  }
}