import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../../models/api_models.dart';

part 'student_api.g.dart';

@RestApi()
abstract class StudentApi {
  factory StudentApi(Dio dio, {String baseUrl}) = _StudentApi;

  @POST('/api/Login')
  Future<LoginResponse> login(@Body() LoginRequest request);
}
