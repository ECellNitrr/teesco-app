import 'package:flutter/material.dart';
import 'package:teesco/core/util/log_wrapper.dart';
import 'package:teesco/features/auth/forgot%20password/screens/foget_password_screen.dart';

import 'core/res/strings.dart';
import 'features/auth/forgot password/screens/change_password_screen.dart';
import 'features/auth/forgot password/screens/otp_screen.dart';
import 'injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();

  Log.i(
    tag: "HomeApp",
    message: "Initialization Done!\nRunning Application...",
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.app_name,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(Strings.app_name),
        ),
        body: Center(
          child: Text('Welcome to Teesco Application!'),
        ),
      ),
    );

  }
}
