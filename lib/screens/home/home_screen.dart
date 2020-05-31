import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../injection_container.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SharedPreferences sharedPreferences = sl.get<SharedPreferences>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          /// "User Token from Shared Preferences:\n${sharedPreferences.getString(S.tokenKey)}",
         "Home Screen",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}