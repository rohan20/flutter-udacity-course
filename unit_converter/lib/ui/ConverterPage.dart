import 'package:flutter/material.dart';
import 'package:unit_converter/custom_widget/ConverterValue.dart';

class ConverterPage extends StatelessWidget {
  String _unitName;
  Color _unitColor;

  ConverterPage({@required unitName, @required Color unitColor}) {
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
      body: _converterBody(),
    );
  }

  Container _converterBody() {
    return new Container(
      color: Colors.white,
      child: new Column(
        children: <Widget>[
          const SizedBox(height: 24.0),
          new Container(
            color: Colors.blue[100],
            child: new Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: ConverterValue(
                hintText: "Enter input value",
                labelText: "Input",
              ),
            ),
          ),
          const SizedBox(height: 12.0),
          new Icon(Icons.import_export),
          const SizedBox(height: 12.0),
          new Container(
            color: Colors.teal[100],
            child: new Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: ConverterValue(
                hintText: "Enter output value",
                labelText: "Output",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
