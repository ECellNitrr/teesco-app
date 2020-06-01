import 'package:flutter/material.dart';

class OrganisationListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Organisation List"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Organisations",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
