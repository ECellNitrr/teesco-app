import 'package:flutter/material.dart';
import 'package:teesco/screens/group_list/widgets/group_list_card.dart';

class GroupList extends StatefulWidget {
  @override
  _GroupListState createState() => _GroupListState();
}

class _GroupListState extends State<GroupList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text(
          'Groups',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return GroupListCard();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF898989),
        child: Icon(Icons.add),
      ),
    );
  }
}
