import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:teesco/features/auth/signup/user_information.dart';

String enteredValue;
UserInformation _userInformation = UserInformation();

class CardCreate extends StatefulWidget {
  CardCreate({
    this.detector,
    @required this.onChanged,
    @required this.string,
    this.numberForKeyboard,
    this.obscureText = false,
    this.typeOfTextField = 0,
    this.maxLengthAllowed = -1,
  });

  final GestureTapCallback onChanged;
  final GestureDetector detector;
  final String string;
  final int numberForKeyboard, typeOfTextField, maxLengthAllowed;
  final bool obscureText;

  @override
  _CardCreateState createState() => _CardCreateState();
}

class _CardCreateState extends State<CardCreate> {
  bool _visibilityOfPassword = true;

  ///This method is to change the visibility of the password each time the icon is pressed
  void _changeVisibilityOfPassword() {
    _visibilityOfPassword = !_visibilityOfPassword;
  }

  ///This method updates the Visibility Icon every time [_visibilityOfPassword] changes.
  Icon _iconForPasswordVisibility() {
    if (_visibilityOfPassword) {
      return Icon(Icons.visibility_off);
    } else
      return Icon(Icons.visibility);
  }

  /// inputs here are taken in the property [widget.numberForKeyboard]
  ///default text keyboard
  ///input 1 for phone number keyboard
  ///input 2 for e mail address keyboard
  ///input 3 for visiblePassword keyboard

  TextInputType keyboardType() {
    if (widget.numberForKeyboard == 1) return TextInputType.phone;
    if (widget.numberForKeyboard == 2) return TextInputType.emailAddress;
    if (widget.numberForKeyboard == 3) return TextInputType.visiblePassword;
    return TextInputType.text;
  }

  /// To Do -
  /// change in visibilityIcon
  /// inputs here are taken in[widget.typeOfTextField]
  /// by default we have a normal textField
  /// input 1 for password specific textField

  TextField _typeOfTextField() {
    if (widget.typeOfTextField == 1) {
      return TextField(
        maxLength: widget.maxLengthAllowed,
        onChanged: (String s) {
          _userInformation.storeData(s, widget.string);
        },
        keyboardType: keyboardType(),
        decoration: InputDecoration(
          suffixIcon: IconButton(
            iconSize: 30,
            //color: Colors.blue,
            splashColor: Colors.yellow,
            icon: _iconForPasswordVisibility(),
            onPressed: () {
              setState(() {
                _changeVisibilityOfPassword();
              });
            },
          ),
          fillColor: Colors.grey[400],
          hintText: widget.string,
        ),
        obscureText: _visibilityOfPassword,
      );
    } // This is for password Specific TextField (Close)
    return TextField(
      maxLength: widget.maxLengthAllowed,
      onChanged: (String s) {
        _userInformation.storeData(s, widget.string);
      },
      keyboardType: keyboardType(),
      decoration: InputDecoration(
        fillColor: Colors.grey[400],
        hintText: widget.string,
      ),
    );
  }

  Widget card() {
    return Padding(
      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: Container(
        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
        color: Colors.grey[400],
        child: _typeOfTextField(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return card();
  }
}

class ButtonCreate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        Fluttertoast.showToast(msg: "You have signed up successfully");
      },
      label: Text("        Sign Up        "),
      elevation: 0,
    );
  }
}


