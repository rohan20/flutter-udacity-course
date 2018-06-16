import 'package:flutter/material.dart';
import 'package:unit_converter/custom_widget/ConverterValue.dart';

class ConverterPage extends StatelessWidget {
  String _unitName;
  Color _unitColor;

  ConverterPage({@required unitName, @required Color unitColor}) {
    _unitName = unitName;
    _unitColor = unitColor;
  }

  List<DropdownMenuItem<String>> _inputItems() {
    List<DropdownMenuItem<String>> list = new List();
    list.add(new DropdownMenuItem(child: Text("1")));
    list.add(new DropdownMenuItem(child: Text("2")));
    list.add(new DropdownMenuItem(child: Text("3")));
    list.add(new DropdownMenuItem(child: Text("4")));
    list.add(new DropdownMenuItem(child: Text("5")));
    list.add(new DropdownMenuItem(child: Text("6")));
    list.add(new DropdownMenuItem(child: Text("7")));
    list.add(new DropdownMenuItem(child: Text("8")));
    list.add(new DropdownMenuItem(child: Text("9")));
    list.add(new DropdownMenuItem(child: Text("10")));

    return list;
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new ConverterValue(
                    hintText: "Enter input value",
                    labelText: "Input",
                  ),
                  new SizedBox(height: 12.0),
                  new Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        child: new DropdownButton(
                            items: _inputItems(), onChanged: null),
                      ),
                    ),
                  ),
                ],
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
