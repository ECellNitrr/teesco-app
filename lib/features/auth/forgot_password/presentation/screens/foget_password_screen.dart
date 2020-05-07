import 'package:flutter/material.dart';
import 'package:teesco/features/auth/forgot_password/domain/entities/forgot_password.dart';
import 'package:teesco/features/auth/forgot_password/presentation/screens/otp_screen.dart';


class ForgetOTPScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ForgetScreen();
  }
}



class ForgetScreen extends StatefulWidget {
  @override
  _ForgetScreenState createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Fogot Password"),
      ),
      body:Center(


          child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            SizedBox(
              width: 3*MediaQuery.of(context).size.width/4,
              child: TextFormField(

                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  labelText: "Registered Phone Number..",
                  prefixText: "+91-",
                ),
                keyboardType: TextInputType.phone,
                //onFieldSubmitted: _onPhoneEntered(),

              ),
            ),
            Padding(padding: EdgeInsets.only(top: 25)),
            MaterialButton(
                child: Text("Generate OTP"),
                color: Colors.blue,
                splashColor: Colors.blueGrey,
                onPressed: _onPhoneEntered
               ),
          ],
          ),

      ),
    );
  }

  _onPhoneEntered() {

    //Shared Pref Store  Implementation and Otp genrate and



    //For Now just Navigates to other screen command is placed here

    Navigator.push(
        context,new MaterialPageRoute(
        builder: (context)=>OtpScreen(),
    ));


  }
}
