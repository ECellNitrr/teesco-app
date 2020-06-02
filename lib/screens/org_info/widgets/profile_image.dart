import 'package:flutter/material.dart';

Widget buildProfileImage(String url) {
  return Center(
    child: Container(
      width: 140.0,
      height: 140.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(80.0),
        border: Border.all(
          color: Colors.black,
          width: 10.0,
        ),
      ),
      child: url == null
          ? CircleAvatar(
              radius: 75,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.people,
                size: 70,
                color: Colors.black,
              ),
            )
          : CircleAvatar(
              radius: 75,
              backgroundImage: NetworkImage(url),
              backgroundColor: Colors.transparent,
            ),
    ),
  );
}
