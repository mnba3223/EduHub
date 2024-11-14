import 'package:dio/dio.dart';
import 'package:edutec_hub/data/models/api_model/api_response.dart';
import 'package:edutec_hub/data/models/parent/parent.dart';

import 'package:retrofit/retrofit.dart';
part 'parent_api.g.dart';

@RestApi()
abstract class ParentApi {
  factory ParentApi(Dio dio, {String baseUrl}) = _ParentApi;

  @GET('/api/Parent/user/{userId}')
  Future<ApiResponse<Parent>> getParentByUserId(
    @Path('userId') int userId,
  );
}
