import 'package:flutter/material.dart';

///For Input of User Name
class UserNameInput extends StatelessWidget {
  String labelName;
  TextEditingController controller;
  UserNameInput({
    @required this.controller,
    @required this.labelName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          border: OutlineInputBorder(),
          hintText: "Your name is ...",
          labelText: "User Name",
        ),
      ),
    );
  }
}
