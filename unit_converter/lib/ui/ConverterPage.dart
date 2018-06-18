import 'package:flutter/material.dart';
import 'package:unit_converter/custom_widget/ConverterContainer.dart';

class ConverterPage extends StatefulWidget {

  final String unitName;
  final Color unitColor;

  ConverterPage({@required this.unitName, @required this.unitColor});

  @override
  _ConverterPageState createState() {
    return new _ConverterPageState(unitName: this.unitName, unitColor: this.unitColor);
  }
}

class _ConverterPageState extends State<ConverterPage> {

  final String unitName;
  final Color unitColor;

  _ConverterPageState({@required this.unitName, @required this.unitColor});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: unitColor,
        title: new Text(unitName),
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
          new ConverterContainer(
            hintText: "Enter input value",
            labelText: "Input",
          ),
          const SizedBox(height: 12.0),
          new Icon(Icons.import_export),
          const SizedBox(height: 12.0),
          new ConverterContainer(
            hintText: "Output value",
            labelText: "Ouput",
          ),
        ],
      ),
    );
  }
}
