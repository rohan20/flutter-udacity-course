import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class CategoryItem extends StatelessWidget {
  String _categoryName;

  CategoryItem({@required categoryName}) {
    _categoryName = categoryName;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.green[100],
      child: Container(
        height: 100.0,
        child: InkWell(
          splashColor: Colors.lightBlue,
          highlightColor: Colors.lightGreenAccent,
          borderRadius: BorderRadius.circular(50.0),
          onTap: () {
            print("Tapped " + _categoryName);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Container(
              child: new Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: new Icon(
                      Icons.cake,
                      size: 60.0,
                    ),
                  ),
                  new Text(
                    _categoryName,
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
}
