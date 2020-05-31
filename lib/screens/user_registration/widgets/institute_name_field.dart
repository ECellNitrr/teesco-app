import 'package:flutter/material.dart';

///For Input of Institution
class InstituteNameField extends StatelessWidget {
  TextEditingController controller;
  InstituteNameField({
    @required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.school),
        border: OutlineInputBorder(),
        hintText: "Name of organization",
        labelText: "Institute",
        suffixText: '*',
        suffixStyle: TextStyle(color: Colors.red, fontSize: 20),
      ),
    );
  }
}
