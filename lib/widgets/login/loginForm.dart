import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                      hintText: "starman@spacex.com",
                      labelText: "Email"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.lock),
                      border: OutlineInputBorder(),
                      hintText: "starman@spacex.com",
                      labelText: "Password"),
                ),
              ),
              RaisedButton(
                onPressed: () {},
                child: Text("Login"),
              )
            ],
          ),
        ));
  }
}
