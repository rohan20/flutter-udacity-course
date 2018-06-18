import 'package:flutter/material.dart';
import 'package:unit_converter/custom_widget/ConverterOptions.dart';
import 'package:unit_converter/custom_widget/ConverterValue.dart';
import 'package:meta/meta.dart';

class ConverterContainer extends StatelessWidget {
  final String labelText;
  final String hintText;

  ConverterContainer({@required this.labelText, @required this.hintText});

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new ConverterValue(
              hintText: hintText,
              labelText: labelText,
            ),
            new SizedBox(height: 12.0),
            new ConverterOptions(),
          ],
        ),
      ),
    );
  }
}
