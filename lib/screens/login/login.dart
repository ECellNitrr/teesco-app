import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:teesco/core/res/strings.dart';
import 'package:teesco/core/util/log_wrapper.dart';
import 'package:teesco/injection_container.dart';
import 'package:teesco/screens/home/home.dart';
import 'package:teesco/screens/login/cubit/login_cubit.dart';

import 'widgets/email_field.dart';
import 'widgets/password_field.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SharedPreferences sharedPreferences = sl.get<SharedPreferences>();
    return Scaffold(
      body: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) async {
          if (state is LoginSuccess) {
            Log.i(tag: "Login", message: "User Logged In ${state.token}");
            await sharedPreferences.setString(S.tokenKey, state.token);
            await Future.delayed(Duration(seconds: 1));
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));
          } else if (state is LoginError) {
            Scaffold.of(context).showSnackBar(SnackBar(content: Text(state.message)));
          }
        },
        builder: (context, state) {
          if (state is LoginInitial) {
            return _buildInitial(context);
          } else if (state is LoginLoading) {
            return _buildLoading();
          } else if (state is LoginSuccess) {
            return _buildSuccess(state.token);
          } else {
            return _buildInitial(context);
          }
        },
      ),
    );
  }

  Widget _buildInitial(BuildContext context) {
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
              child: RaisedButton(
                onPressed: () => _login(context),
                child: Text("Login"),
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

  void _login(BuildContext context) {
    final cubit = context.read<LoginCubit>();
    if (_formKey.currentState.validate())
      cubit.login(emailController.text, passwordController.text);
  }
}
