import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Widget appBar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      FlatButton(
        onPressed: () {},
        child: Icon(Icons.search),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
        child: Text(
          "Teesco",
          style: TextStyle(color: Colors.black),
        ),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(55, 0, 0, 0),
        child: Container(
          constraints: BoxConstraints(
            maxWidth: 50,
          ),
          child: FlatButton(
            onPressed: () {},
            child: Icon(Icons.notifications_none),
          ),
        ),
      ),
      Container(

        decoration: BoxDecoration(
          color: Colors.grey,
          shape: BoxShape.circle,
//          image: DecorationImage(
//            fit: BoxFit.cover,
//            image: AssetImage(''),    ///Add the location of image here
//          ),
        ),
        constraints: BoxConstraints(
          maxHeight: 50,
          maxWidth: 50,
        ),
      ),
    ],
  );
}

Widget orgCard(String orgName, String position) {
  return Card(
    color: Colors.grey[300],
    margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 30,
          ),
          Container(
            constraints: BoxConstraints(
              maxHeight: 80,
            ),
            padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  orgName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  position,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
