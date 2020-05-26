import 'package:equatable/equatable.dart';
import 'package:teesco/core/res/strings.dart';

class User extends Equatable {
  final String email;
  final String username;
  final String name;
  final String institution;
  final int countryCode;
  final int phoneNumber;

  User({
    this.email,
    this.username,
    this.name,
    this.institution,
    this.countryCode,
    this.phoneNumber,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      email: json[S.emailKey] as String,
      name: json[S.nameKey] as String,
      phoneNumber: json[S.passwordKey] as int,
      username: json[S.usernameKey] as String,
      institution: json[S.institutionKey] as String,
      countryCode: json[S.countryCodeKey] as int,
    );
  }

  @override
  List<Object> get props => [email];
}
