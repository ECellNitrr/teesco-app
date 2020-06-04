import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './widgets/organization_info_body.dart';

///This is the screen through the details of a particular organization would be shown
///This can take 2 different forms according to the user
///If user is admin, then he can see all the settings and the details
///If the user is a member, then he can only see the details
///Note- in the #OrganizationInfoBody, pass 1 if user is admin else pass any other number
///
class OrganizationInfoScreen extends StatelessWidget {
  final String header;

  OrganizationInfoScreen(this.header);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Stack(
                overflow: Overflow.visible,
                alignment: AlignmentDirectional.bottomCenter,
                children: <Widget>[
                  Image.asset(
                    "assets/ecell_pic.jpg", //TODO replace with a proper image
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Positioned(
                    bottom: -60,
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage("assets/icon_ecell.png"),
                      //TODO replace with a proper image
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ],
              ),
              //This contains the background image and the logo
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    margin: EdgeInsets.fromLTRB(30, 80, 0, 0),
                    padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
                    child: Text(
                      'Position',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 80, 0, 0),
                    child: Icon(Icons.info_outline),
                  ),
                ],
              ),
              //This contains the position of the user and an i button
              OrganizationInfoBody(
                code: 1,
              ),
              //pass 1 for admin/ any other number for normal user
            ],
          ),
        ),
      ),
    );
  }
}
