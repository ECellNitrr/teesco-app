import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tasks Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Tasks",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
