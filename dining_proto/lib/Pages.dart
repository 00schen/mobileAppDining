import 'package:flutter/material.dart';

Widget buildMeal() {
  Widget title = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'Lunch',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                '11am-1pm',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );

  Widget selection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'Soup',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'New England Clam Chowder',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[800],
                ),
              ),
              Text(
                'Organic Split Pea Vegetable Soup',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[800],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );

  return Row(
    children: <Widget>[
      title,
      selection,
    ],
  );
}