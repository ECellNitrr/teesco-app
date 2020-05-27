import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:teesco/core/res/strings.dart';
import 'package:teesco/injection_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SharedPreferences sharedPreferences = sl.get<SharedPreferences>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "User Token from Shared Preferences:\n${sharedPreferences.getString(S.tokenKey)}",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
