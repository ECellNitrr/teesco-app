import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teesco/core/util/log_wrapper.dart';
import 'package:toast/toast.dart';
import 'core/res/strings.dart';
import 'features/Auth/login/presentation/pages/LoginScreen.dart';
import 'features/home/HomeScreen.dart';
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
    return BlocListener(
      listener: (context, state) {
        /*if (state is AuthUnauthenticated) {
          if (state.justLoggedOut) {
            Toast.show("Logged out", context, duration: 1);
          }
        }*/
      },
      child: MaterialApp(
        title: Strings.app_name,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        /*home: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            if (state is AuthUnauthenticated) {
              return LoginScreen();
            }
            if (state is AuthAuthenticated) {
              return HomeScreen();
            } else
              return Center(
                child: CircularProgressIndicator(),
              );
          },
        ),*/
      ),
    );
  }
}