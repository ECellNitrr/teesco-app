import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teesco/features/auth/signup/custom_widgets.dart';
import 'package:teesco/features/auth/signup/user_information.dart';

void main() => runApp(MaterialApp(
      home: SignUpScreen(),
      theme: new ThemeData(
        primarySwatch: Colors.grey,
      ),
    ));

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('SignUp Page')),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        width: 70,
                        height: 70,
                        child: Image.asset('assets/images/e_cell_icon_2.png')),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Text(
                        'Welcome To Teesco',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                ), // Contains the Image and the text "welcome to Teesco"
                Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: <Widget>[
                    Container(
                      width: 380,

                      margin: EdgeInsets.fromLTRB(10, 10, 10, 15),
                      padding: EdgeInsets.fromLTRB(0, 10, 5, 30),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5,
                            spreadRadius: 3,
                            offset: Offset(
                              0,
                              5,
                            ),
                          )
                        ],
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: Column(
                        children: <Widget>[
                          CardCreate(
                            string: ('Enter your name'),
                            onChanged: () {
                              print("Called");
                            },
                          ),
                          CardCreate(
                            string: ('Enter e-mail address'),
                            onChanged: () {},
                            numberForKeyboard: 2,
                          ),
                          CardCreate(
                            string: ('Institution name'),
                            onChanged: () {},
                          ),
                          CardCreate(
                            string: ('Phone Number'),
                            onChanged: () {},
                            maxLengthAllowed: 10,
                            numberForKeyboard: 1,
                          ),
                          CardCreate(
                            string: ('Country Code'),
                            onChanged: () {},
                            maxLengthAllowed: 6,
                          ),
                          CardCreate(
                            string: ('Enter password'),
                            typeOfTextField: 1,
                            onChanged: () {},
                            numberForKeyboard: 3,
                            obscureText: true,
                          ),
                          CardCreate(
                            string: ('Re-enter Password'),
                            onChanged: () {},
                            typeOfTextField: 1,
                            numberForKeyboard: 3,
                            obscureText: true,
                          ),
                        ],
                      ), //Contains all the text Fields
                    ),
                    ButtonCreate(),
                  ],
                ),
                Container(
                  width: 100,
                  height: 30,
                  child: FlatButton(
                    textColor: Colors.red,
                    child: Text('Sign in'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  width: 200,
                  height: 30,
                  child: FlatButton(
                    textColor: Colors.red,
                    child: Text('Forgot Password'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
