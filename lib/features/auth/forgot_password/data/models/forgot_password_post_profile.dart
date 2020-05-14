import 'package:flutter/foundation.dart';

//Temporary holder for api change it acordingly when docs get updated

class ForgotPasswordModel {
  final int number;
  ForgotPasswordModel({
    @required this.number,
  });

  Map<String, int> toJson() => {'phoneNumber': number};
}
