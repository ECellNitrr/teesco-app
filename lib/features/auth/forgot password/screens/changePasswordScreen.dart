import 'package:flutter/material.dart';
import 'package:teesco/features/auth/forgot%20password/widgets/passwordBox.dart';

class changePassword extends StatefulWidget {
  @override
  _changePasswordState createState() => _changePasswordState();
}

class _changePasswordState extends State<changePassword> {

  var boolShowPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Password"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            passwordBox(
                onPressedIcon:(){ setState(() {
                boolShowPassword=true;
                });},
                controllerTEC: null,
                labelPassword: "New Password",
                boolObscureText: boolShowPassword),

            Padding(padding: EdgeInsets.only(top: 10.0)),

            passwordBox(
                onPressedIcon: (){ setState(() {
                  showHide();
                });},
                controllerTEC: null,
                labelPassword: "Confirm Password",
                boolObscureText: boolShowPassword),

          ],
        ),

      ),
    );
  }

  @override
  void initState(){
    super.initState();
    boolShowPassword=false;
  }

  void showHide() {
    if (boolShowPassword==true) {
      setState(() {
        boolShowPassword =false;
      });
    }else{

      boolShowPassword =true;
    }
  }
}
