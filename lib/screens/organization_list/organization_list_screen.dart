import 'package:flutter/material.dart';
import './widgets/organization_card.dart';

/// this is the screen which will be displayed when the user wants to see the list of organisations of which he is a part
/// Each organisation would have a card which would display the logo, name and the position

class OrganizationListScreen extends StatefulWidget {
  @override
  _OrganizationListScreenState createState() => _OrganizationListScreenState();
}

class _OrganizationListScreenState extends State<OrganizationListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.search),
        title: Text("Teesco"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications_none),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.account_circle),
          ),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          OrganizationCard('Organization 1', 'Position 1'),
          OrganizationCard('Organization 2', 'Position 2'),
        ],
      ),
    );
  }
}
