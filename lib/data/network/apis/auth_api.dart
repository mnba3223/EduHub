import 'package:dio/dio.dart' hide Headers;
import 'package:edutec_hub/data/models/api_model/api_models.dart';
import 'package:edutec_hub/data/models/api_model/api_response.dart';
import 'package:edutec_hub/data/models/auth/auth_data.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api.g.dart';

@RestApi()
abstract class AuthApi {
  factory AuthApi(Dio dio, {String baseUrl}) = _AuthApi;

  @POST('/api/Auth/login')
  @Headers({
    'Accept': '*/*',
    'Content-Type': 'application/json',
  })
  Future<ApiResponse<AuthData>> login(
    @Header('Authorization') String basicAuth,
    @Body() LoginRequest request,
  );

  @POST('/api/Auth/refresh-token')
  Future<ApiResponse<AuthData>> refreshToken(
    @Body() Map<String, String> refreshTokenData,
  );
}
