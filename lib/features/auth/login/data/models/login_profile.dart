import 'package:flutter/foundation.dart';

/// This data class represents all data necessary to create a login
class LoginProfile {
  final String username;
  final String password;

  LoginProfile({@required this.username, @required this.password})
      : assert(username != null),
        assert(password != null);

  Map<String, String> toJson() => {'username': username, "password": password};
}
