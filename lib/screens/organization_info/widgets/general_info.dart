import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './line.dart';

/// This widget creates the general information which could be viewed by anyone
/// This contains the details part of the organization
class GeneralInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Line(),
                Text(
                  "    About    ",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Line(),
              ],
            ),
          ), //This padding contains the two lines and the Text about
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
              color: Colors.grey[300],
              child: Text(
                  "This is dummy data This is dummy data This is dummy data This is dummy data This is dummy data This is dummy data "
                  "This is dummy data This is dummy data This is dummy data This is dummy data This is dummy data This is dummy data This is dummy data "
                  "This is dummy data This is dummy data This is dummy data This is dummy data This is dummy data This is dummy data "
                  "This is dummy data This is dummy data This is dummy data This is dummy data This is dummy data This is dummy data "
                  "This is dummy data This is dummy data This is dummy data This is dummy data This is dummy data This is dummy data This is dummy data"
                  "This is dummy data This is dummy data This is dummy data This is dummy data This is dummy data "),
            ),
          ), //This padding corresponds to the details which would be shown
        ],
      ),
    );
  } // This widget returns the general info
}
