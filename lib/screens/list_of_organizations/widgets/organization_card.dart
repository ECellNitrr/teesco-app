import 'package:flutter/material.dart';

class OrganizationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(                                      //Each card corresponds to a single organization
      color: Colors.grey[300],
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 30,
            ),
            Container(
              constraints: BoxConstraints(
                maxHeight: 80,
              ),
              padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'orgName',                                    //Pass the name of the organization here
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    'position',                                       //Pass the position of the person here
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
