import 'package:flutter/material.dart';

///For Input of Phone number
class PhoneNumberField extends StatelessWidget {
  String labelName;
  TextEditingController controller;
  PhoneNumberField({@required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.phone),
        border: OutlineInputBorder(),
        prefixText: "+91-",
        hintText: "",
        labelText: "Phone Number",
      ),
    );
  }
}
