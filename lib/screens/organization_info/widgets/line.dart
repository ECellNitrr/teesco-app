import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///Simple dart file to create a line for UI purpose
class Line extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: 2.0,
        width: 130.0,
        color: Colors.black,
      ),
    );
  } //this widget creates a line
}
