import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:teesco/core/util/log_wrapper.dart';
import 'package:teesco/screens/home/home.dart';
import 'package:teesco/screens/login/cubit/login_cubit.dart';
import 'package:teesco/screens/login/login.dart';
import 'package:teesco/screens/login/login_repository.dart';
import 'core/res/strings.dart';
import 'injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();

  Log.i(
    tag: "main()",
    message: "Getit Initialization Done!\nRunning Application...",
  );

  runApp(Teesco());
}

class Teesco extends StatelessWidget {
  final SharedPreferences sharedPreferences = sl.get<SharedPreferences>();
  @override
  Widget build(BuildContext context) {
    String token = sharedPreferences.getString(S.tokenKey);
    return MaterialApp(
      title: "Teesco",
      home: token != null
          ? Home()
          : BlocProvider(
              create: (context) => LoginCubit(APILoginRepository()),
              child: LoginScreen(),
            ),
    );
  }
}
