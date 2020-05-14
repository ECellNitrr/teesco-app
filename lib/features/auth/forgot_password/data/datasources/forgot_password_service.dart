import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:teesco/core/error/failure.dart';
import 'package:teesco/core/res/strings.dart' as CONS;
import '../models/forgot_password_post_profile.dart';
part '../models/forgot_password_model.chopper.dart';

@ChopperApi(baseUrl: CONS.Strings.app_get_forgotPasswordURL)
abstract class PostPhoneNumberService extends ChopperService {
  //POST REQ FOR NUMBER
  @Get(path: '/{otpSent}')
  Future<Either<Failure, Response>> confirmOtp(@Path('otpSent') int otpSent);

  //Post data Phone Number
  @Post()
  Future<Either<Failure, Response<Map<String, dynamic>>>>
      postForgotPasswordNumber(
    @Body() ForgotPasswordModel body,
  );

  static PostPhoneNumberService create() {
    final client = ChopperClient(
        baseUrl: CONS.Strings.app_get_otpSentURL,
        services: [
          _$ForgotPasswordService(),
        ],
        converter: JsonConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
        ]);

    print(_$ForgotPasswordService(client).toString());

    return _$ForgotPasswordService(client);
  }
}
