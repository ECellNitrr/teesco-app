import 'package:flutter/material.dart';

class GroupListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFF2F2F2),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Overall Coordinators',
              style: TextStyle(fontSize: 20.0),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: Color(0xFFC4C4C4),
              ),
              padding: EdgeInsets.only(
                top: 3.0,
                bottom: 3.0,
                left: 5.0,
                right: 5.0,
              ),
              child: Text(
                '12',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
