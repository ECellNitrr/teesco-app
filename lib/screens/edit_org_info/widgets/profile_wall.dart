
import 'dart:io';

import 'package:flutter/material.dart';

Widget profileWall(Size screen, File image) {

    return Container(
      height: screen.height / 3.5,
      width: screen.width,
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
      child: image != null
          ? Image.file(
              image,
              fit: BoxFit.cover,
            )
          : null,
    );
  }