import 'package:flutter/material.dart';

class ConverterPage extends StatelessWidget {

  String _unitName;

  ConverterPage({@required unitName}){
    _unitName = unitName;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue[400],
        title: new Text(_unitName),
      ),
      body: new Container(
        color: Colors.blue[100],
      ),
    );
  }
}
