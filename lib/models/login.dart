import 'package:equatable/equatable.dart';

class LoginModel extends Equatable {
  final String email;
  final String password;

  LoginModel(this.email, this.password);

  @override
  List<Object> get props => [email, password];
}
