import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///This class returns a Custom Checkbox Tile which can be checked and unchecked
///IT receives a string as parameter in order to give the title of the checkbox
class CustomListTile extends StatefulWidget {
  final String title;

  CustomListTile(this.title);

  @override
  _CustomListTileState createState() => _CustomListTileState(title);
}

class _CustomListTileState extends State<CustomListTile> {
  final String s;
  bool b1 = false;

  _CustomListTileState(this.s);

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
