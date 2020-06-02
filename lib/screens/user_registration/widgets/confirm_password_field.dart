import 'package:flutter/material.dart';

///Confirm Password Widget
class ComnfirmPasswordField extends StatefulWidget {
  const ComnfirmPasswordField(this.confirmPController);
  final TextEditingController confirmPController;

  @override
  _ComnfirmPasswordFieldState createState() => _ComnfirmPasswordFieldState();
}

class _ComnfirmPasswordFieldState extends State<ComnfirmPasswordField> {
  bool _passwordVisible;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.confirmPController,
      validator: _confirmPassword,
      obscureText: !_passwordVisible,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
        suffixIcon: IconButton(
          icon: _passwordVisible
              ? Icon(Icons.visibility)
              : Icon(Icons.visibility_off),
          onPressed: _togglePasswordVisibility,
        ),
        border: OutlineInputBorder(),
        hintText: "p@ssw0rd",
        labelText: "Confirm Password",
      ),
    );
  }

  String _confirmPassword(String password) {
    //TODO: Logic for getting password here and implementing check method
    if (password.isEmpty) {
      return "Please enter password";
    }
    return null;
  }

  void _togglePasswordVisibility() =>
      setState(() => _passwordVisible = !_passwordVisible);
}
