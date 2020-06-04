import 'package:flutter/material.dart';
import './widgets/group_member_tile.dart';

///This is the screen which would list all the members of the group
///It receives a string as parameter which would be the category of the members being shown (here header)
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
            GroupMemberTile(title: "Head Coordinator 1"),
            GroupMemberTile(title: "Head Coordinator 2"),
            GroupMemberTile(title: "Head Coordinator 3"),
            GroupMemberTile(title: "Head Coordinator 4"),
            GroupMemberTile(title: "Head Coordinator 5"),
            GroupMemberTile(title: "Head Coordinator 6"),
            GroupMemberTile(title: "Head Coordinator 7"),
            GroupMemberTile(title: "Head Coordinator 8"),
            GroupMemberTile(title: "Head Coordinator 9"),
            GroupMemberTile(title: "Head Coordinator 10"),
            GroupMemberTile(title: "Head Coordinator 11"),
            GroupMemberTile(title: "Head Coordinator 12"),
            GroupMemberTile(title: "Head Coordinator 13"),
            GroupMemberTile(title: "Head Coordinator 14"),
            GroupMemberTile(title: "Head Coordinator 15"),
          ],
        ),
      ),
      floatingActionButton: Icon(
        Icons.add_circle,
        size: 70,
      ),
    );
  }
}
