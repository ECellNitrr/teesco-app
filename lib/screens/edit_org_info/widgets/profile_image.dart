import 'dart:io';

import 'package:flutter/material.dart';

Widget buildProfileImage(File image) {
    return Center(
      child: image != null
          ? CircleAvatar(
              radius: 75,
              backgroundImage: FileImage(image),
              backgroundColor: Color(0xff757575).withOpacity(.3),
            )
          : CircleAvatar(
              backgroundColor: Color(0xff757575),
              radius: 75,
            ),
    );
  }