import 'package:flutter/material.dart';
import 'package:teesco/screens/listOfOrgs/widgets.dart';

class ListOfOrganisations extends StatefulWidget {
  @override
  _ListOfOrganisationsState createState() => _ListOfOrganisationsState();
}

class _ListOfOrganisationsState extends State<ListOfOrganisations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(),
      ),
        body: Column(
          children: <Widget>[
            orgCard("Org1", 'Pos1'),
            orgCard("Org2", "Pos2"),
          ],
        ),
    );
  }
}
