import 'package:flutter/material.dart';

class HelloRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Container(
        color: Colors.green,
        height: 400.0,
        width: 300.0,
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: new Text("Hello Rectangle!"),
        ),
        body: HelloRectangle(),
      ),
    ),
  );
}
