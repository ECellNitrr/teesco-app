part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();
}

class LoginInitial extends LoginState {
  const LoginInitial();
  @override
  List<Object> get props => [];
}

class LoginLoading extends LoginState {
  const LoginLoading();
  @override
  List<Object> get props => [];
}

class LoginLoaded extends LoginState {
  final String token;
  const LoginLoaded(this.token);
  @override
  List<Object> get props => [token];
}

class LoginError extends LoginState {
  final String message;
  const LoginError(this.message);
  @override
  List<Object> get props => [message];
}
