import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: new Text("Hello Rectangle!"),
        ),
        body: Container(
          color: Colors.green,
        ),
      ),
    ),
  );
}
