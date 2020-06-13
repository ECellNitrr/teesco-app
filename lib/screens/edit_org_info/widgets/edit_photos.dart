import 'package:flutter/material.dart';



Widget editPhotos(Size screen, Function getWallImage, Function getProfileImage) {
    return Container(
      height: screen.height / 3.5,
      width: screen.width,
      child: Stack(
        children: <Widget>[
          Positioned(
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: IconButton(
              icon: Icon(
                Icons.mode_edit,
                color: Colors.white,
              ),
              onPressed: getWallImage,
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: IconButton(
              icon: Icon(
                Icons.mode_edit,
                color: Colors.white,
              ),
              onPressed: getProfileImage,
            ),
            ),
          ),
        ],
      ),
    );
  }