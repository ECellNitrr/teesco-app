import 'package:flutter/material.dart';
import 'package:teesco/features/auth/forgot%20password/widgets/password_box.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {

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
            PasswordBox(
                onPressedIcon:(){ setState(() {
                boolShowPassword=true;
                });},
                controllerTEC: null,
                labelPassword: "New Password",
                boolObscureText: boolShowPassword),

            Padding(padding: EdgeInsets.only(top: 10.0)),

            PasswordBox(
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
    boolShowPassword=true;
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
