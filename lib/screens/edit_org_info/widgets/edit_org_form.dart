import 'package:flutter/material.dart';

const kTextFieldStyle = InputDecoration(
    contentPadding: EdgeInsets.only(
      left: 10.0,
      right: 10.0,
    ),
    border: OutlineInputBorder(),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff898989),
        width: 2.0,
      ),
    ));

Widget editOrganisationForm() {
  return Padding(
    padding: EdgeInsets.all(16.0),
    child: Form(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Organisation Name',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          TextField(
            cursorColor: Color(0xff898989),
            decoration: kTextFieldStyle,
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: <Widget>[
              Text(
                'Tagline',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          TextField(
            cursorColor: Color(0xff898989),
            decoration: kTextFieldStyle,
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: <Widget>[
              Text(
                'About',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          TextField(
            maxLines: 10,
            cursorColor: Color(0xff898989),
            decoration: kTextFieldStyle.copyWith(
              contentPadding: EdgeInsets.all(10.0),
            ),
          ),
        ],
      ),
    ),
  );
}
