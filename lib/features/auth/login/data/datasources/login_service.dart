import 'package:chopper/chopper.dart';
import 'package:teesco/core/res/strings.dart';
import 'package:teesco/features/auth/login/data/models/login_profile.dart';

part 'login_service.chopper.dart';

@ChopperApi(baseUrl: "")
abstract class AuthService extends ChopperService {
  @Post(path: "login")
  Future<Response<Map<String, dynamic>>> login(@Body() LoginProfile login);


  static AuthService create() {
    final client = ChopperClient(
        baseUrl: Strings.API_URL,
        services: [
          _$AuthService(),
        ],
        converter: JsonConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
        ]);

    return _$AuthService(client);
  }
}
