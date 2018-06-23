import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:unit_converter/model/Category.dart';
import 'package:unit_converter/ui/ConverterPage.dart';
import 'package:unit_converter/util/Constants.dart';

class CategoryListItem extends StatelessWidget {
  final double _itemHeight = 100.0;

  final Category category;

  CategoryListItem({@required this.category});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Constants.backgroundColor,
      child: Container(
        height: _itemHeight,
        child: InkWell(
          splashColor: category.colorSwatch,
          highlightColor: category.colorSwatch,
          borderRadius: BorderRadius.circular(_itemHeight / 2),
          onTap: () {
            print("Tapped " + category.name);
            _navigateToConverterPage(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Container(
              child: new Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: new Icon(
                      category.iconData,
                      size: 60.0,
                    ),
                  ),
                  new Text(
                    category.name,
                    style: TextStyle(fontSize: 24.0),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _navigateToConverterPage(BuildContext context) {
    Navigator.of(context).push(
          new MaterialPageRoute(
            builder: (BuildContext context) => new ConverterPage(
                  unitName: category.name,
                  unitColor: category.colorSwatch,
                ),
          ),
        );
  }
}
