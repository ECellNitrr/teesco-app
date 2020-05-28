import 'package:flutter/material.dart';
class NameField extends StatelessWidget {
  const NameField(this.controller);
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter Name of Organisation",
          labelText: "Organisation Name",
        ),
        onChanged: null,
      ),
    );
  }
}
