import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

///This class returns a list tile which would hold the name and details of member
///It receives a 'title' as a required named argument which is the name of the member and url of profile image as a named argument

class GroupMemberTile extends StatelessWidget {
  final String title, profilePicUrl;

  GroupMemberTile({@required this.title, this.profilePicUrl});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: profilePicture(),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 26,
        ),
      ),
    );
  }

  Widget profilePicture() {
    if (profilePicUrl == null) {
      return Icon(
        Icons.account_circle,
        size: 45,
      );
    } else {
      return FadeInImage.memoryNetwork(
        placeholder: kTransparentImage,
        image: profilePicUrl,
      );
    }
  }
}
