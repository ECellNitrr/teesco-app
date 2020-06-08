import 'package:flutter/material.dart';
import 'package:teesco/screens/org_info/widgets/about_block.dart';
import 'package:teesco/screens/org_info/widgets/profile_image.dart';
import 'package:teesco/screens/org_info/widgets/profile_wall.dart';

class OrganisationInfoScreen extends StatelessWidget {
  String _orgName = "Organisation Name";
  String _tagLine = "Organisation Tagline";
  String _aboutOrg =
      "This is a dummy text This is a dummy text This is a dummy text This is a dummy text This is a dummy text This is a dummy text This is a dummy text This is a dummy text This is a dummy text This is a dummy text This is a dummy text This is a dummy text ";
  String image;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: _buildBody(screenSize),
    );
  }

  Widget _buildBody(Size screenSize) {
    return Stack(
      children: <Widget>[
        profileWall(screenSize, _orgName, _tagLine),
        SafeArea(
          child: SingleChildScrollView(
              child: Column(
            children: <Widget>[
              SizedBox(height: screenSize.height / 7),
              buildProfileImage(image),
              SizedBox(height: 40),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "CAMPUS AMBASSADOR  ",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.info_outline)
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        color: Colors.black,
                        height: 2,
                        width: screenSize.width / 3,
                      ),
                      Text(
                        "  About  ",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        color: Colors.black,
                        height: 2,
                        width: screenSize.width / 3,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              buildAboutBlock(_aboutOrg, screenSize)
            ],
          )),
        )
      ],
    );
  }
}
