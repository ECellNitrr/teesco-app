import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:teesco/core/res/colors.dart' as color;

import 'keyboardCommon.dart';

class otpScreen extends StatefulWidget {
  @override
  _otpScreenState createState() => _otpScreenState();
}

class _otpScreenState extends State<otpScreen> {
  @override
  Widget build(BuildContext context) {
    //Here are the list of OTP boxes with there properties
    List<Widget> widgetList = [
      //OTP bloc
      Padding(
        padding: EdgeInsets.only(left: 0.0, right: 2.0),
        child: Container(
          color: color.Colors.transparent,
        ),
      ),

      //First OTP block
      Padding(
        padding: EdgeInsets.only(right: 2.0, left: 2.0),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            border: Border.all(
              width: 1.0,
              color: Color.fromRGBO(0, 0, 0, 0.1),
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: TextField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
            ],
            enabled: false,
            controller: otpBoxController1,
            autofocus: false,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.black,
            ),
          ),
        ),
      ),

      //Second OTP block
      Padding(
        padding: EdgeInsets.only(right: 2.0, left: 2.0),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            border: Border.all(
              width: 1.0,
              color: Color.fromRGBO(0, 0, 0, 0.1),
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: TextField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
            ],
            enabled: false,
            controller: otpBoxController2,
            autofocus: false,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.black,
            ),
          ),
        ),
      ),

      //Third OTP block

      Padding(
        padding: EdgeInsets.only(right: 2.0, left: 2.0),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            border: Border.all(
              width: 1.0,
              color: Color.fromRGBO(0, 0, 0, 0.1),
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: TextField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
            ],
            enabled: false,
            controller: otpBoxController3,
            autofocus: false,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.black,
            ),
          ),
        ),
      ),

      //Forth OTP block

      Padding(
        padding: EdgeInsets.only(right: 2.0, left: 2.0),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            border: Border.all(
              width: 1.0,
              color: Color.fromRGBO(0, 0, 0, 0.1),
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: TextField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
            ],
            enabled: false,
            controller: otpBoxController4,
            autofocus: false,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.black,
            ),
          ),
        ),
      ),

      //Fifth OTP block

      Padding(
        padding: EdgeInsets.only(right: 2.0, left: 2.0),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            border: Border.all(
              width: 1.0,
              color: Color.fromRGBO(0, 0, 0, 0.1),
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: TextField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
            ],
            enabled: false,
            controller: otpBoxController5,
            autofocus: false,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.black,
            ),
          ),
        ),
      ),

      //Sixth OTP block

      Padding(
        padding: EdgeInsets.only(right: 2.0, left: 2.0),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            border: Border.all(
              width: 1.0,
              color: Color.fromRGBO(0, 0, 0, 0.1),
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: TextField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
            ],
            enabled: false,
            controller: otpBoxController6,
            autofocus: false,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.black,
            ),
          ),
        ),
      ),

      //End OTP Block
      Padding(
        padding: EdgeInsets.only(left: 2.0, right: 0.0),
        child: new Container(
          color: Colors.transparent,
        ),
      ),
    ];

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Enter OTP"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  //UI MAIN
                  //Heading
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "Verfiy your number",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  //SubHeading
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, top: 4.0, right: 16.0),
                    child: Text(
                      "Type the OTP sent to",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  //ShredPrefernce Phone number here
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, top: 2.0, right: 30.0),
                    child: Text(
                      "ShredPrefPhoneNo",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  //Timer For OTP
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0, left: 175),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.timer),
                        Padding(
                          padding: EdgeInsets.only(left: 4.0),
                          child: Text("Tic Tic.."),

                          //Add Timer Element Here
                          //Animation Controller or by Bloc
                          //As per Requirements
                        )
                      ],
                    ),
                  )
                ],
              ),
              flex: 90,
            ),

            //Here lies OTP Boxes
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  GridView.count(
                    crossAxisCount: 8,
                    mainAxisSpacing: 10.0,
                    shrinkWrap: true,
                    primary: false,
                    scrollDirection: Axis.vertical,
                    children: List<Container>.generate(
                      8,
                      (int index) => Container(
                        child: widgetList[index],
                      ),
                    ),
                  )
                ],
              ),
              flex: 20,
            ),

            Flexible(

              child:keyBoard(
                onPressed0: (){
                  inputTextToFeild("0");
                },
                onPressed1: (){
                  inputTextToFeild("0");
                },
                onPressed2: (){
                  inputTextToFeild("0");
                },
                onPressed3: (){
                  inputTextToFeild("0");
                },
                onPressed4: (){
                  inputTextToFeild("0");
                },
                onPressed5: (){
                  inputTextToFeild("0");
                },
                onPressed6: (){
                  inputTextToFeild("0");
                },
                onPressed7: (){
                  inputTextToFeild("0");
                },
                onPressed8: (){
                  inputTextToFeild("0");
                },
                onPressed9: (){
                  inputTextToFeild("0");
                },
                onPressedDel: deleteText,
                onPressedSubmit: matchOtp,
                widgetDel: Icon(Icons.more),
                widgetSubmit: Icon(Icons.send),
              ),
              flex: 90,
            ),

          ],
        ),
      ),
    );
  }

  //InputTOTextFeild
  void inputTextToFeild(String str){

  }

  //delete Text
  void deleteText(){

  }

  //MatchOTP
  void  matchOtp(){

  }


  //OTP Feilds Controllers:
  TextEditingController otpBoxController1 = TextEditingController();
  TextEditingController otpBoxController2 = TextEditingController();
  TextEditingController otpBoxController3 = TextEditingController();
  TextEditingController otpBoxController4 = TextEditingController();
  TextEditingController otpBoxController5 = TextEditingController();
  TextEditingController otpBoxController6 = TextEditingController();

  //Master Controller
  TextEditingController otpEnteredController = TextEditingController();

  //Memory leaks prevention
  @override
  void dispose() {
    super.dispose();
    otpBoxController1.dispose();
    otpBoxController2.dispose();
    otpBoxController3.dispose();
    otpBoxController4.dispose();
    otpBoxController5.dispose();
    otpBoxController6.dispose();
    otpEnteredController.dispose();
  }

  //Init State Here Set up Main controller playground
  @override
  void initState() {
    super.initState();
    otpEnteredController = otpBoxController1;
    //Put the initial cursor in  first block
  }
}
