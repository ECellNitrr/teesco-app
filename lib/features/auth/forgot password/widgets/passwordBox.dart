import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


//Modify as modifying the widget in scaffold
//Do Not remove any elements
/*
*
* Show hide password implementation is generating error
* if not fixed
* this widget would be deleted
*
* */

class passwordBox extends StatelessWidget {

  final GestureTapCallback onPressedIcon;
  final TextEditingController controllerTEC;
  final String labelPassword;
  bool boolObscureText;
  passwordBox({
    @required this.onPressedIcon,
    @required this.controllerTEC,
    @required this.labelPassword,
    @required this.boolObscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          IconButton(icon: Icon(Icons.remove_red_eye),
              onPressed:(){onPressedIcon;
              }),
          SizedBox(
            width: 3*MediaQuery.of(context).size.width/4,
            child: TextField(
              decoration: InputDecoration(
                labelText: labelPassword,
              ),
              controller: controllerTEC,
              keyboardType: TextInputType.text,
              obscureText:boolObscureText,
            ),
          ),
        ],
      ),
    );
  }

}
