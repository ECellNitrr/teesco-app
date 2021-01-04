import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:teesco/screens/edit_org_info/widgets/edit_org_form.dart';
import 'package:teesco/screens/edit_org_info/widgets/edit_photos.dart';
import 'package:teesco/screens/edit_org_info/widgets/profile_image.dart';
import 'package:teesco/screens/edit_org_info/widgets/profile_wall.dart';

class EditOrganisationScreen extends StatefulWidget {
  @override
  _EditOrganisationScreenState createState() => _EditOrganisationScreenState();
}

class _EditOrganisationScreenState extends State<EditOrganisationScreen> {
  File _profileImage, _wallImage;

  final picker = ImagePicker();

  Future getWallImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _wallImage = File(pickedFile.path);
    });
  }

  Future getProfileImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _profileImage = File(pickedFile.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Stack(
              children: <Widget>[
                profileWall(screenSize, _wallImage),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: screenSize.height / 7,
                    ),
                    buildProfileImage(_profileImage),
                  ],
                ),
                editPhotos(screenSize, getWallImage, getProfileImage),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            editOrganisationForm(),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.save,
        ),
        backgroundColor: Color(0xff898989),
        onPressed: () {},
      ),
    );
  }
}
