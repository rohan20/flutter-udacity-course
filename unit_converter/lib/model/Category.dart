import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Category {
  final String name;
  final IconData iconData;
  final ColorSwatch colorSwatch;

  Category({
    @required this.name,
    @required this.iconData,
    @required this.colorSwatch,
  });
}
