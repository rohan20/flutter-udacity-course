import 'package:flutter/material.dart';
import 'package:unit_converter/model/Category.dart';

class Constants {
  static final backgroundColor = Colors.green[100];

  static const categoryNameList = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const categoryIconList = <IconData>[
    Icons.cake,
    Icons.cake,
    Icons.cake,
    Icons.cake,
    Icons.cake,
    Icons.cake,
    Icons.cake,
    Icons.cake,
  ];

  static const categoryColorList = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  static List<Category> getCategoriesList() {
    List<Category> list = new List();

    for (int i = 0; i < categoryNameList.length; i++) {
      list.add(new Category(
        name: categoryNameList[i],
        iconData: categoryIconList[i],
        colorSwatch: categoryColorList[i],
      ));
    }

    return list;
  }
}
