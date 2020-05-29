import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  const EmailField(this.controller);
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        validator: _validateEmail,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          border: OutlineInputBorder(),
          hintText: "example@email.com",
          labelText: "Email",
        ),
      ),
    );
  }

  String _validateEmail(String email) {
    RegExp emailRegx = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

    if (email.isEmpty || !emailRegx.hasMatch(email)) {
      return "Please enter a valid email";
    }
    return null;
  }
}
