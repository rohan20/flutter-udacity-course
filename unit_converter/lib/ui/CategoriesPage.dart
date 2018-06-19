import 'package:flutter/material.dart';
import 'package:unit_converter/custom_widget/CategoryListItem.dart';
import 'package:unit_converter/util/Constants.dart';

class CategoriesPage extends StatelessWidget {
  final String _appTitle = "UNIT CONVERTER";

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: _appBar(),
        body: _unitConverterHomePageBody(),
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

  Widget _unitConverterHomePageBody() {
    return new ListView.builder(
      itemBuilder: (BuildContext context, int index) =>
          CategoryListItem(categoryName: Constants.categoryNameList[index], color: Constants.categoryColorList[index], iconData: Icons.cake),
      itemCount: Constants.categoryNameList.length,
    );
  }
}
