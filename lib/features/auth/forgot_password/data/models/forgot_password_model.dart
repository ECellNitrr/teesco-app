import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:teesco/core/error/failure.dart';
import 'package:teesco/core/res/strings.dart' as CONS;
part 'forgot_password_model.chopper.dart';

@ChopperApi(baseUrl: CONS.Strings.app_get_forgotPasswordURL)
abstract class PostPhoneNumberService extends ChopperService {
  //POST REQ FOR NUMBER

  @Get(path: '/{otpSent}')
  Future<Either<Failure, Response>> getPost(@Path('otpSent') int otpSent);

  static PostPhoneNumberService create() {
    final client = ChopperClient(
        baseUrl: CONS.Strings.app_get_otpSentURL,
        services: [
          _$PostApiService(),
        ],
        converter: JsonConverter());

    print(_$PostApiService(client).toString());

    return _$PostApiService(client);
  }
}
