import 'package:flutter/material.dart';
import 'package:teesco/screens/login/widgets/password_field.dart';
import 'package:teesco/screens/user_registration/widgets/email_input.dart';
import 'package:teesco/screens/user_registration/widgets/institute_name_input.dart';
import 'package:teesco/screens/user_registration/widgets/phone_number_field.dart';
import 'package:teesco/screens/user_registration/widgets/confirm_password_field.dart';

class UserRegistration extends StatelessWidget {
  TextEditingController userNameController;
  TextEditingController emailController;
  TextEditingController passwordController;
  TextEditingController confirmPasswordController;
  TextEditingController phoneNumberController;
  TextEditingController instituteNameController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            child: SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: TextFormField(
                  controller: userNameController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    border: OutlineInputBorder(),
                    hintText: "Your name is ...",
                    labelText: "User Name",
                    suffixText: '*',
                    suffixStyle: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: EmailField(emailController),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: InstituteNameInput(
                  controller: instituteNameController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: PhoneNumberField(controller: phoneNumberController),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: PasswordField(passwordController),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: ComnfirmPasswordField(confirmPasswordController),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: RaisedButton(
                  onPressed: null,
                  child: Text('Sign Up'),
                ),
              ),
            ],
          ),
        ),
      ),
    )));
  }
}
