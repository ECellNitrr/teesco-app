import 'package:flutter/material.dart';

class OrganisationInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Organisation Info Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Organisation Info",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
