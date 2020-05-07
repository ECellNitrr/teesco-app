import 'package:shared_preferences/shared_preferences.dart';
import 'package:teesco/core/res/strings.dart';

// This class contains the code for saving and retrieval of email and password of current user
class Preferences{
  Preferences(){}
// To set the Emailid of the current logging in user
  Future<bool> setEmail(String email) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(Strings.keyEmail, email);
    return true;
  }
// To set the password of the current logging in user
  Future<bool> setPassword(String password) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(Strings.keyPassword, password);
    return true;
  }
// To get the email of the current logged in user
  Future<String> getEmail() async{
    String _email;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _email=prefs.getString(Strings.keyEmail)??null;
    return _email;
  }
// To get the password of the current logged in user
  Future<String> getPassword() async{
    String _password;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _password=prefs.getString(Strings.keyPassword)??null;
    return _password;
  }
}