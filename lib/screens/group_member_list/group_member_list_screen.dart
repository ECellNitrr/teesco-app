import 'package:flutter/material.dart';
import './widgets/create_list_tile.dart';

///This is the screen which would list all the members of the group
///It receives a string as parameter which would be the category of the members being shown
class GroupMemberList extends StatelessWidget {
  final String header;

  GroupMemberList(this.header);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.person_add),
          ),
        ],
        title: Text(
          header,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListTileCreate("Head Coordinator 1"),
            ListTileCreate("Head Coordinator 2"),
            ListTileCreate("Head Coordinator 3"),
            ListTileCreate("Head Coordinator 4"),
            ListTileCreate("Head Coordinator 5"),
            ListTileCreate("Head Coordinator 6"),
            ListTileCreate("Head Coordinator 7"),
            ListTileCreate("Head Coordinator 8"),
            ListTileCreate("Head Coordinator 9"),
            ListTileCreate("Head Coordinator 10"),
            ListTileCreate("Head Coordinator 11"),
            ListTileCreate("Head Coordinator 12"),
            ListTileCreate("Head Coordinator 13"),
            ListTileCreate("Head Coordinator 14"),
            ListTileCreate("Head Coordinator 15"),
          ],
        ),
      ),
    );
  }
}
