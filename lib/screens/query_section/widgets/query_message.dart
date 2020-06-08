import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget queryMessage(
    int message_id, String message, int timestamp, String name, bool isMe) {
  return Container(
    margin: isMe
        ? EdgeInsets.only(top: 8.0, bottom: 8.0, left: 80.0)
        : EdgeInsets.only(top: 8.0, bottom: 8.0, right: 80.0),
    padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
    decoration: BoxDecoration(
      color: Colors.grey[300],
      borderRadius: isMe
          ? BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
              bottomLeft: Radius.circular(15.0))
          : BorderRadius.only(
              topRight: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0),
              topLeft: Radius.circular(15.0)),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(message),
        SizedBox(
          height: 15.0,
        ),
        Text(
          DateFormat.yMMMd()
              .format(DateTime.fromMillisecondsSinceEpoch(timestamp))
              .toString(),
          style: TextStyle(fontSize: 10.0),
        ),
      ],
    ),
  );
}
