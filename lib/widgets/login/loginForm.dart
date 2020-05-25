import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:teesco/constants.dart';

final _formKey = GlobalKey<FormState>();

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: _validateEmail,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                      hintText: "starman@spacex.com",
                      labelText: "Email"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: TextFormField(
                  validator: _validatePassword,
                  obscureText: !_passwordVisible,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.visibility),
                        onPressed: _togglePasswordVisibility,
                        // onPressed: ,
                      ),
                      border: OutlineInputBorder(),
                      hintText: "falconheavy@18",
                      labelText: "Password"),
                ),
              ),
              RaisedButton(
                onPressed: _onLoginKeyPressed,
                child: Text("Login"),
              )
            ],
          ),
        ));
  }

  void _onLoginKeyPressed() async {
    if (!_formKey.currentState.validate()) return;

    Response res = await post(baseURL + 'users/login/',
        body: {"email": "one@example.com", "password": "stringone"});

    Scaffold.of(context).showSnackBar(SnackBar(content: Text(res.body),));
  }

  void _togglePasswordVisibility() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  String _validateEmail(String email) {
    RegExp emailRegx = new RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

    if (email.isEmpty || !emailRegx.hasMatch(email)) {
      return "Please enter a valid email";
    }
    return null;
  }

  String _validatePassword(String password) {
    if (password.isEmpty) {
      return "Please enter password";
    }
    return null;
  }
}
