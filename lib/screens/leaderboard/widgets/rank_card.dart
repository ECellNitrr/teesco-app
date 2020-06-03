import 'package:flutter/material.dart';

Widget rankCard(String name, String score, String image, int index) {
  return Card(
    color: Color(0xFFF2F2F2),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
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
              score,
            ),
          ),
          Text(
            name,
            style: TextStyle(fontSize: 20.0),
          ),
          image == null
              ? Stack(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    ),
                    _buidBadge(index)
                  ],
                )
              : CircleAvatar(
                  radius: 10,
                  backgroundImage: NetworkImage(image),
                  backgroundColor: Colors.transparent,
                ),
        ],
      ),
    ),
  );
}

Widget _buidBadge(int index) {
  if (index == 0) {
    return Positioned(
      bottom: 4.0,
      right: 1.0,
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Icon(Icons.stars,color: Color(0xAAFFDF00),size: 30,),
      ),
    );
  } else if (index == 1) {
    return Positioned(
      bottom: 4.0,
      right: 1.0,
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Icon(Icons.stars,color: Color(0xAACD7F32),size: 30,),
      ),
    );
  } else if (index == 2) {
    return Positioned(
      bottom: 4.0,
      right: 1.0,
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Icon(Icons.stars,color: Color(0xAAaaa9ad),size: 30,),
      ),
    );
  } else {
    return Positioned(
      bottom: 0.0,
      right: 1.0,
      child: Container(
        height: 20,
        width: 20,
       
      ),
    );
  }
}
