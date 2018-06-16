import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class ConverterValue extends StatelessWidget {

  String _hintText;
  String _labelText;

  ConverterValue({@required hintText, @required labelText}){
    _hintText = hintText;
    _labelText = labelText;
  }

  @override
  Widget build(BuildContext context) {
    return new TextField(
      decoration: new InputDecoration(
        border: const OutlineInputBorder(),
        hintText: _hintText,
        labelText: _labelText,
      ),
    );
  }

}