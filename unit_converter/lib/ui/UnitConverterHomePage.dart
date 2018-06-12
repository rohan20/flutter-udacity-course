import 'package:flutter/material.dart';
import 'package:unit_converter/custom_widget/CategoryItem.dart';

class UnitConverterHomePage extends StatelessWidget {
  final String _appTitle = "UNIT CONVERTER";
  final Color _backgroundColor = Colors.green[100];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: _appBar(),
        body: _unitConverterBody(),
      ),
    );
  }

  AppBar _appBar() {
    return new AppBar(
      backgroundColor: _backgroundColor,
      elevation: 0.0,
      title: Center(
        child: new Text(
          _appTitle,
          style: TextStyle(
            color: Colors.black,
            fontSize: 22.0,
          ),
        ),
      ),
    );
  }

  Widget _unitConverterBody() {
    return new Container(
      color: _backgroundColor,
      child: Column(
        children: <Widget>[
          CategoryItem(
            categoryName: "Length",
          ),
          CategoryItem(
            categoryName: "Area",
          ),
          CategoryItem(
            categoryName: "Volume",
          ),
          CategoryItem(
            categoryName: "Mass",
          ),
//            CategoryItem(categoryName: "Time",),
//            CategoryItem(categoryName: "Digital Storage",),
//            CategoryItem(categoryName: "Energy",),
//            CategoryItem(categoryName: "Currency",),
        ],
      ),
    );
  }
}
