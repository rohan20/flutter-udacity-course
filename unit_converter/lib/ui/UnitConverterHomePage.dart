import 'package:flutter/material.dart';
import 'package:unit_converter/custom_widget/CategoryItem.dart';
import 'package:unit_converter/util/Constants.dart';

class UnitConverterHomePage extends StatelessWidget {
  final String _appTitle = "UNIT CONVERTER";

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
      backgroundColor: Constants.backgroundColor,
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
      child: Column(
        children: <Widget>[
          CategoryItem(
            categoryName: "Length",
            color: Colors.blueAccent,
            iconData: Icons.cake,
          ),
          CategoryItem(
            categoryName: "Area",
            color: Colors.yellowAccent,
            iconData: Icons.cake,
          ),
          CategoryItem(
            categoryName: "Volume",
            color: Colors.redAccent,
            iconData: Icons.cake,
          ),
          CategoryItem(
            categoryName: "Mass",
            color: Colors.purpleAccent,
            iconData: Icons.cake,
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
