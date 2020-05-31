import 'package:flutter/material.dart';

class LeaderBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LeaderBoard Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "LeaderBoard",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
