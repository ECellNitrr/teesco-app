import 'package:flutter/material.dart';

class QuerySectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Query Section Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Query Section",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
