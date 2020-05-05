import 'package:shared_preferences/shared_preferences.dart';

// This class contains the constants - Email id Key and Password key
class Constant{
final String key_Email="email";
final String key_Password="password";
}

// This class contains the code for saving and retrieval of email and password of current user
class Preferences{
  Preferences(){}
// To set the Emailid of the current logging in user
  Future<bool> set_Email(String email) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(Constant().key_Email, email);
    return true;
  }
// To set the password of the current logging in user
  Future<bool> set_Password(String password) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(Constant().key_Password, password);
    return true;
  }
// To get the email of the current logged in user
  Future<String> get_Email() async{
    String _email;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _email=prefs.getString(Constant().key_Email)??null;
    return _email;
  }
// To get the password of the current logged in user
  Future<String> get_Password() async{
    String _password;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _password=prefs.getString(Constant().key_Password)??null;
    return _password;
  }
}