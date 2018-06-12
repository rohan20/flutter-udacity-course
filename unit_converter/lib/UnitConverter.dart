import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UnitConverter extends StatelessWidget {
  final String _appTitle = "UNIT CONVERTER";
  final Color _backgroundColor = Colors.green[100];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: AppBar(
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
        ),
        body: new Container(
          color: _backgroundColor,
        ),
      ),
    );
  }
}
