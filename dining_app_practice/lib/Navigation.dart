import 'package:dining_app/theme.dart';
import 'package:flutter/material.dart';

import 'collapsing_list_tile.dart';
import 'navigation_model.dart';

class Navigation extends StatefulWidget {
  @override
  NavigationState createState() {
    return new NavigationState();
  }
}

class NavigationState extends State<Navigation> with SingleTickerProviderStateMixin {

  double maxWidth = 220;
  double minWidth = 20;
  bool isCollapsed = false;
  AnimationController _animationController;
  Animation<double> widthAnimation;
  int currentSelectedIndex = 0;


  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 300));
    widthAnimation = Tween<double>(begin: maxWidth, end: minWidth)
        .animate(_animationController);

  }
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController, builder: (context, widget) => getWidget(context, widget),);
  }

  Widget getWidget(context, widget) {
    return Material(
      elevation: 80.0,
      child: Container(
        width: widthAnimation.value,
        color: drawerBackgroundColor,
        child: Column(
          children: <Widget>[
            Divider(color: Colors.grey, height: 40.0,),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, counter) {
                  return Divider(height: 40.0);
                },
                itemBuilder: (context, counter) {
                  return CollapsingListTile(
                      onTap: () {
                        setState(() {
                          currentSelectedIndex = counter;
                        });
                      },
                      isSelected: currentSelectedIndex == counter,
                      title: navigationItems[counter].title,
                      icon: navigationItems[counter].icon,
                      animationController: _animationController
                  );
                },
                itemCount: navigationItems.length,
              ),
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    isCollapsed = !isCollapsed;
                    isCollapsed ? _animationController.reverse() : _animationController.forward();
                  });
                },
                child: AnimatedIcon(
                  icon: AnimatedIcons.close_menu,
                  progress: _animationController,
                  color: Colors.white,
                  size: 50.0,
                ),
            ),
            SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }
}
