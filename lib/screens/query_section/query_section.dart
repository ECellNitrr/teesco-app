import 'package:flutter/material.dart';
import 'package:teesco/screens/query_section/widgets/query_data.dart';
import 'package:teesco/screens/query_section/widgets/query_message.dart';

class QuerySectionScreen extends StatelessWidget {
  List _data = dummyData().dummy;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Queries",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey,
            )),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.black,
                size: 30,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(
                Icons.account_circle,
                color: Colors.black,
                size: 30,
              ),
              onPressed: null),
          Padding(padding: EdgeInsets.only(right: 10.0))
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                reverse: true,
                itemCount: _data.length,
                padding: EdgeInsets.all(8),
                itemBuilder: (context, index) {
                  return queryMessage(
                      _data[index]['message_id'],
                      _data[index]['message'],
                      _data[index]['timestamp'],
                      _data[index]['name'],
                      _data[index]['isMe']);
                }),
          ),
          _buildMessageComposer()
        ],
      ),
    );
  }

  Widget _buildMessageComposer() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        height: 70.0,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
                child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(hintText: "Send a message.."),
            )),
            IconButton(
              icon: Icon(Icons.send),
              iconSize: 25.0,
              onPressed: () {},
            )
          ],
        ));
  }
}
