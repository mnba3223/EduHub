import 'package:dio/dio.dart' hide Headers;
import 'package:edutec_hub/data/models/api_model/api_models.dart';
import 'package:edutec_hub/data/models/api_model/api_response.dart';
import 'package:edutec_hub/data/models/auth/auth_data.dart';
import 'package:edutec_hub/data/models/booking/classroom_model.dart';

import 'package:retrofit/retrofit.dart';
part 'booking_api.g.dart';

@RestApi()
abstract class BookingApi {
  factory BookingApi(Dio dio, {String baseUrl}) = _BookingApi;

  @GET('/api/Classroom')
  Future<ApiResponse<List<Classroom>>> getClassrooms();

  @POST('/api/Classroom/Booking')
  Future<ApiResponse> createBooking(@Body() ClassroomBookingRequest request);
}
