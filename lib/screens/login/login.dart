import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:teesco/core/res/strings.dart';
import 'package:teesco/injection_container.dart';
import 'package:teesco/screens/home/home.dart';

import '../../core/util/log_wrapper.dart';
import 'bloc/login_bloc.dart';
import 'widgets/email_field.dart';
import 'widgets/login_button.dart';
import 'widgets/password_field.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SharedPreferences sharedPreferences = sl.get<SharedPreferences>();
    return Scaffold(
      body: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) async {
          if (state is LoginLoaded) {
            Log.i(tag: "Login", message: "User Logged In ${state.token}");
            await sharedPreferences.setString(S.tokenKey, state.token);
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));
          } else if (state is LoginError) {
            Scaffold.of(context).showSnackBar(SnackBar(content: Text(state.message)));
          }
        },
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            if (state is LoginInitial) {
              return _buildInitial();
            } else if (state is LoginLoading) {
              return _buildLoading();
            } else if (state is LoginLoaded) {
              return _buildSuccess(state.token);
            } else if (state is LoginError) {
              return _buildInitial();
            } else
              return _buildInitial();
          },
        ),
      ),
    );
  }

  Widget _buildInitial() {
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
              child: EmailField(emailController),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: PasswordField(passwordController),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: LoginButton(
                formKey: _formKey,
                email: emailController.text,
                password: passwordController.text,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildSuccess(String token) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(Icons.check_circle_outline),
          Text(
            "User Login Successful!",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
