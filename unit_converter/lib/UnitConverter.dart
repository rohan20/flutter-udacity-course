import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UnitConverter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: AppBar(
          title: new Text("Unit Converter"),
        ),
        body: new Container(
          color: Colors.brown,
        ),
      ),
    );
  }
}
