import 'package:flutter/material.dart';
import 'package:teesco/screens/leaderboard/widgets/leaderboard_dummy_dart.dart';
import 'package:teesco/screens/leaderboard/widgets/rank_card.dart';

class LeaderBoardScreen extends StatelessWidget {
  List _data = dummyData().dummy;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "LeaderBoard",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: null,
        ),
        centerTitle: true,
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
      body: _buildScreen(),
    );
  }

  Widget _buildScreen() {
    return ListView.builder(
        itemCount: _data.length,
        padding: EdgeInsets.all(8),
        itemBuilder: (context, index) {
          return rankCard(_data[index]['name'], _data[index]['score'],
              _data[index]['image'], index);
        });
  }
}
