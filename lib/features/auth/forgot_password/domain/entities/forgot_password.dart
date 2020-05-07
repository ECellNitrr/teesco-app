import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutter/foundation.dart';
part 'forgot_password.freezed.dart';




//ResoCoder Suggestions To use Maps with Bloc here
//Would replace after bloc addition if found needed

@freezed
abstract class getEmail with _$getEmail {

  const factory getEmail(String email,int otp) =Data;
  const factory getEmail.loading() = Loading;

  // const factory getEmail.error([String message])=  ErrorDetails;
  // Generating error  ErrorDetails
  // would be skipping that as no need seen basis here
  //Planning to handle it else where

}