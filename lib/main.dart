import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teesco/core/util/log_wrapper.dart';
import 'package:teesco/screens/login/login.dart';
import 'package:teesco/screens/login/login_repository.dart';
import 'injection_container.dart';
import 'screens/login/bloc/login_bloc.dart';

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
      title: "Teesco",
      home: BlocProvider(
        create: (context) => LoginBloc(APILoginRepository()),
        child: LoginScreen(),
      ),
    );
  }
}
