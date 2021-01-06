import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:teesco/core/res/errors.dart';
import 'package:teesco/core/res/strings.dart';
import 'package:teesco/screens/login/login_repository.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepository _loginRepository;
  LoginCubit(this._loginRepository) : super(LoginInitial());

  Future<void> login(String email, String password) async {
    try {
      emit(LoginLoading());
      String token = await _loginRepository.login(email, password);
      emit(LoginSuccess(token));
    } on NetworkError {
      emit(LoginError(S.networkError));
    } on ValidationError catch (e) {
      emit(LoginError(e.description));
    } on ResponseException catch (e) {
      emit(LoginError(e.message));
    }
  }
}
