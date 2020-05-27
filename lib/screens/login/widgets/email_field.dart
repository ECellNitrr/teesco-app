import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teesco/screens/login/bloc/login_bloc.dart';

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
        onChanged: (_) => BlocProvider.of<LoginBloc>(context).add(FieldsUpdated()),
      ),
    );
  }

  String _validateEmail(String email) {
    RegExp emailRegx =
        RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

    if (email.isEmpty || !emailRegx.hasMatch(email)) {
      return "Please enter a valid email";
    }
    return null;
  }
}
