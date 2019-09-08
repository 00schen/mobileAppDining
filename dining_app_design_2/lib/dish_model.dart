import 'package:meta/meta.dart';

class Dish {
  Dish({
    @required this.name,
    @required this.category,
    @required this.fav,
  });

  String name;
  String category;
  bool fav;
}