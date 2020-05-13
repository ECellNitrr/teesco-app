import 'package:shared_preferences/shared_preferences.dart';
import 'package:teesco/core/res/strings.dart' as CONS;

class ForgotPasswordPrefs {
  Preferences() {}

  //Store Password Entered ?To maybe retrive it at login
  Future<bool> getPhoneNumber(String email) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(CONS.Strings.app_get_phoneNumber, email);
    return true;
  }

// To set the password of the current logging in user
  Future<bool> getPassword(String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(CONS.Strings.app_get_newPassword, password);
    return true;
  }
}
