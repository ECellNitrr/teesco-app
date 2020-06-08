import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///This class returns a Custom Checkbox Tile which can be checked and unchecked
///IT receives a string as parameter in order to give the title of the checkbox
class PermissionChoiceTile extends StatefulWidget {
  final String title;

  PermissionChoiceTile(this.title);

  @override
  _PermissionChoiceTileState createState() => _PermissionChoiceTileState(title);
}

class _PermissionChoiceTileState extends State<PermissionChoiceTile> {
  final String s;
  bool b1 = false;

  _PermissionChoiceTileState(this.s);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(s),
      value: b1,
      onChanged: (bool value) {
        setState(() {
          b1 = value;
        });
      },
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}
