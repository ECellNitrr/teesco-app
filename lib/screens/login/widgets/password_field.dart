import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teesco/screens/login/bloc/login_bloc.dart';

class PasswordField extends StatefulWidget {
  const PasswordField(this.controller);
  final TextEditingController controller;
  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _passwordVisible;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: widget.controller,
        validator: _validatePassword,
        obscureText: !_passwordVisible,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock),
          suffixIcon: IconButton(
            icon: _passwordVisible ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
            onPressed: _togglePasswordVisibility,
          ),
          border: OutlineInputBorder(),
          hintText: "p@ssw0rd",
          labelText: "Password",
        ),
        onChanged: (_) => BlocProvider.of<LoginBloc>(context).add(FieldsUpdated()),
      ),
    );
  }

  String _validatePassword(String password) {
    if (password.isEmpty) {
      return "Please enter password";
    }
    return null;
  }

  void _togglePasswordVisibility() => setState(() => _passwordVisible = !_passwordVisible);
}
