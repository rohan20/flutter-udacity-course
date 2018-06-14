import 'package:flutter/material.dart';

class ConverterPage extends StatelessWidget {

  String _unitName;
  Color _unitColor;

  ConverterPage({@required unitName, @required Color unitColor}){
    _unitName = unitName;
    _unitColor = unitColor;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: _unitColor,
        title: new Text(_unitName),
      ),
      body: new Container(
        color: _unitColor,
      ),
    );
  }
}
