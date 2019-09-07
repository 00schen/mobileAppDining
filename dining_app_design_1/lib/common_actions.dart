import 'package:dining_app_design_1/drawer/drawer_model.dart';
class InitAction {}

class InitCompleteAction {
  InitCompleteAction(
      this.drawer,
      this.selectedDrawer,
      );

  final List<DrawerModel> drawer;
  final DrawerModel selectedDrawer;
}

class ChangeCurrentTheaterAction {
  ChangeCurrentTheaterAction(this.selectedDrawer);
  final DrawerModel selectedDrawer;
}
