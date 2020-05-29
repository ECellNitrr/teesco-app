import 'package:flutter/material.dart';

///For Input of Institution
class InstituteNameInput extends StatelessWidget {
  String labelName;
  TextEditingController controller;
  InstituteNameInput({
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
          prefixIcon: Icon(Icons.school),
          border: OutlineInputBorder(),
          hintText: "Name of Organizetion",
          labelText: "Institute",
        ),
      ),
    );
  }
}
