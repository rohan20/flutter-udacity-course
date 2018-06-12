import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class CategoryItem extends StatelessWidget {

  String _categoryName;

  CategoryItem({@required categoryName: ""}){
   this._categoryName = categoryName;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Container(
        height: 100.0,
        child: new Row(
          children: <Widget>[
            new Icon(Icons.cake),
            new Text(_categoryName),
          ],
        ),
      ),
    );
  }

}
