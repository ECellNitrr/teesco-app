import 'package:flutter/material.dart';

class TaglineField extends StatelessWidget {
  const TaglineField(this.controller);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: "Enter Organisation's Tagline",
        labelText: "Tagline",
      ),
      onChanged: null,
    );
  }
}
