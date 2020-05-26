import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:teesco/core/res/errors.dart';
import 'package:teesco/models/login.dart';
import 'package:teesco/screens/login/login_repository.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository loginRepository;

  LoginBloc(this.loginRepository);

  @override
  LoginState get initialState => LoginInitial();

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    yield LoginLoading();
    if (event is Login) {
      try {
        final token = await loginRepository.login(LoginModel(event.email, event.password));
        yield LoginLoaded(token);
      } on NetworkError {
        yield LoginError("Couldn't login. Is the device online?");
      } on InvalidCredentialsError {
        yield LoginError("Credentials did not match!");
      } on UserNotFoundError {
        yield LoginError("User not found!");
      } on UnknownError {
        yield LoginError("Something went wrong!");
      }
    } else if (event is FieldsUpdated) {
      yield LoginInitial();
    }
  }
}
