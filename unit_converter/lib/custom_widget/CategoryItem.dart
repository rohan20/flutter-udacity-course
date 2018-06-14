import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:unit_converter/ui/ConverterPage.dart';
import 'package:unit_converter/util/Constants.dart';

class CategoryItem extends StatelessWidget {
  final double _itemHeight = 100.0;

  final String categoryName;
  final IconData iconData;
  final Color color;

  CategoryItem(
      {@required this.categoryName,
      @required this.color,
      @required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Constants.backgroundColor,
      child: Container(
        height: _itemHeight,
        child: InkWell(
          splashColor: color,
          highlightColor: color,
          borderRadius: BorderRadius.circular(_itemHeight / 2),
          onTap: () {
            print("Tapped " + categoryName);
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
                      iconData,
                      size: 60.0,
                    ),
                  ),
                  new Text(
                    categoryName,
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
    Navigator.of(context).push(new MaterialPageRoute(
        builder: (BuildContext context) => new ConverterPage(unitName: categoryName, unitColor: color)));
  }
}
