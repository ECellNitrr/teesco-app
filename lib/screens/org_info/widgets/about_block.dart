import 'package:flutter/material.dart';

Widget buildAboutBlock(String _about, Size screenSize) {
  return Container(
    width: screenSize.width / 1.2,
    padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 6.0),
    decoration: BoxDecoration(
      color: Colors.grey,
      borderRadius: BorderRadius.circular(4.0),
    ),
    child: Text(
      _about,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: Colors.black,
        fontSize: 20.0,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}
