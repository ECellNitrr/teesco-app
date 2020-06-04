import 'package:flutter/material.dart';

Widget profileWall(Size screenSize, String orgName, String orgTagLine) {
  return Container(
    child: Column(
      children: <Widget>[
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                orgName,
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(orgTagLine,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                  ))
            ],
          ),
          height: screenSize.height / 4,
          width: screenSize.width,
          decoration: BoxDecoration(color: Colors.grey),
        ),
      ],
    ),
  );
}
