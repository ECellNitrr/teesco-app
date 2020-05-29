import 'package:flutter/material.dart';
import 'package:teesco/screens/user_registration/widgets/institute_name_input.dart';
import 'package:teesco/screens/user_registration/widgets/phone_number_feild.dart';
import 'package:teesco/screens/user_registration/widgets/signup_button.dart';
import 'package:teesco/screens/user_registration/widgets/username_input.dart';
import 'package:teesco/screens/user_registration/widgets/confirm_password_feild.dart';
import '../login/widgets/email_field.dart';
import '../login/widgets/password_field.dart';

//TODO: Name feild Widget     W1
//TODO: Email Feild Widget    W5
//TODO: Name of Institute     W1
//TODO: Phone Number          W2
//TODO: Password              W3
//TODO: Confirm Password      W3
//TODO: Register Button       W4

class Registration extends StatelessWidget {
  TextEditingController EmailController;
  TextEditingController PasswordController;
  TextEditingController ConfirmPasswordController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Form(child:
            DraggableScrollableSheet(builder: (context, scrollController) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            controller: scrollController,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child:
                        UserNameInput(controller: null, labelName: 'User Name'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: EmailField(EmailController),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: InstituteNameInput(
                        controller: null, labelName: "Institite Name"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: PhoneNumberFeild(
                        controller: null, labelName: " Phone Number"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: PasswordField(PasswordController),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: ComnfirmPasswordField(ConfirmPasswordController),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SignUpButton(),
                  ),
                ],
              ),
            ),
          );
        })),
      ),
    );
  }
}
