import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import './general_info.dart';
import './line.dart';
import './setting_option_tile.dart';

///This dart file makes up the details part of the screen
///If the user is an admin, this file would return settings button along with the details part
///else if the user is a general user, then this would return only the details part

class OrganizationInfoBody extends StatelessWidget {
  final int code;

  OrganizationInfoBody({@required this.code});

  @override
  Widget build(BuildContext context) {
    if (code == 1) {
      return Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Line(),
                  Text(
                    "  Manage  ",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Line(),
                ],
              ),
            ), //This Padding contains two lines and text MANAGE in between
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SettingOptionTile(
                  title: "Groups",
                  icon: Icon(Icons.group),
                ),
                SettingOptionTile(
                  title: "Progress",
                  icon: Icon(Icons.show_chart),
                ),
              ],
            ), //contains first 2 settings button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SettingOptionTile(
                  title: "Invite",
                  icon: Icon(Icons.person_add),
                ),
                SettingOptionTile(
                  title: "Certificate",
                  icon: Icon(Icons.card_membership),
                ),
              ],
            ), //contains 2nd 2 settings button
            SettingOptionTile(
                title: "LB settings", icon: Icon(MdiIcons.trophyAward)),
            GeneralInfo(),
          ],
        ),
      );
    } else {
      return GeneralInfo();
    }
  }
}
