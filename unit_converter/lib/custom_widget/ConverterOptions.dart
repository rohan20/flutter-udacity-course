import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConverterOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
          child: new DropdownButton(items: _inputItems(), onChanged: null),
        ),
      ),
    );
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
}
