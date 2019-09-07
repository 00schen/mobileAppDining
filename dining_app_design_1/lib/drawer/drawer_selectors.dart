import 'package:dining_app_design_1/app_state.dart';
import 'package:dining_app_design_1/drawer/drawer_model.dart';

DrawerModel currentDrawerSelector(AppState state) => state.drawerState.currentTheater;

List<DrawerModel> drawerSelector(AppState state) => state.drawerState.theaters;