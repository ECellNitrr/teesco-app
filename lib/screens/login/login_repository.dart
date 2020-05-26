import 'dart:convert';

import 'package:teesco/core/res/errors.dart';
import 'package:teesco/core/res/strings.dart';
import 'package:teesco/core/util/log_wrapper.dart';
import 'package:teesco/models/login.dart';
import 'package:http/http.dart' as http;

abstract class LoginRepository {
  /// Takes in a `LoginModel` object and returns the user's `token`
  Future<String> login(LoginModel loginModel);
}

class FakeLoginRepository implements LoginRepository {
  @override
  Future<String> login(LoginModel loginModel) async {
    // Simulate network delay
    await Future.delayed(Duration(seconds: 1));

    // Dummy Data
    return "Token 9935a8b04f2de7f5dec8f9e92a1893822b034dc7";
  }
}

class APILoginRepository implements LoginRepository {
  @override
  Future<String> login(LoginModel loginModel) async {
    http.Response response;
    try {
      response = await http.post(
        S.loginUrl,
        body: <String, dynamic>{
          S.emailKey: loginModel.email,
          S.passwordKey: loginModel.password,
        },
      );
    } catch (e) {
      print(e);
      throw NetworkError();
    }

    // Handled 400 already in validation.
    if (response.statusCode == 401) {
      throw InvalidCredentialsError();
    } else if (response.statusCode == 404) {
      throw UserNotFoundError();
    } else if (response.statusCode != 202) {
      Log.e(tag: "Loggin In", message: "Unknown API response code -> ${response.statusCode}");
      throw UnknownError();
    }

    String token;
    try {
      token = (json.decode(response.body) as Map<String, dynamic>)[S.tokenKey];
    } catch (e) {
      Log.e(tag: "Loggin In", message: "Parsing response to json to get token. Error: $e");
      throw UnknownError();
    }

    return token;
  }
}
