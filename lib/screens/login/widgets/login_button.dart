import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teesco/core/util/log_wrapper.dart';
import 'package:teesco/screens/login/bloc/login_bloc.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({this.formKey, this.email, this.password});
  final GlobalKey<FormState> formKey;
  final String email, password;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => _onLoginKeyPressed(context),
      child: Text("Login"),
    );
  }

  void _onLoginKeyPressed(BuildContext context) {
    // Validation
    if (!formKey.currentState.validate()) return;

    // This lint warning is not to be worried about as closing of sink is handled by BlocProvider.
    final LoginBloc loginBloc = BlocProvider.of<LoginBloc>(context);
    loginBloc.add(Login(email, password));
  }
}
