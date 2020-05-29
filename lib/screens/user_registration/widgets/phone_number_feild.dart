import 'package:flutter/material.dart';

///For Input of Phone number
class PhoneNumberFeild extends StatelessWidget {
  String labelName;
  TextEditingController controller;
  PhoneNumberFeild({
    @required this.controller,
    @required this.labelName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.phone),
          border: OutlineInputBorder(),
          prefixText: "+91-",
          hintText: "",
          labelText: "Phone Number",
        ),
      ),
    );
  }
}
