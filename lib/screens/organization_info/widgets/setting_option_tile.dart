import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///This class takes in an icon and a name for the different settings button which are to be used
///by the admin and returns a button accordingly
class SettingOptionTile extends StatelessWidget {
  final String title;
  final Icon icon;

  SettingOptionTile({@required this.title, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
          width: 150,
          height: 40,
          child: FlatButton(
            color: Colors.grey,
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                icon,
                Text(title),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
