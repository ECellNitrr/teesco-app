import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
///This class returns a list tile which would hold the name and details of member
///It receives a string as parameter which is the name of the person

class ListTileCreate extends StatelessWidget {
  final String title;

  ListTileCreate(this.title);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.account_circle,
        size: 45,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 26,
        ),
      ),
    );
  }
}
