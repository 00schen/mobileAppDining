import 'package:flutter/material.dart';

class NavigationModel {
  String title;
  IconData icon;

  NavigationModel({this.title, this.icon});

}

List<NavigationModel> navigationItems = [
  NavigationModel(title: "Halls", icon: Icons.home),
  NavigationModel(title: "Foods", icon: Icons.fastfood),
  NavigationModel(title: "Favorites", icon: Icons.favorite),
  NavigationModel(title: "Setting", icon: Icons.account_circle),
];