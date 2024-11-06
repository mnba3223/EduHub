import 'package:edutec_hub/data/models/api_model/api_response.dart';
import 'package:edutec_hub/data/models/contact_book/contact_book.dart';
import 'package:edutec_hub/data/models/contact_book/contact_book_detail.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'contact_book_api.g.dart';

@RestApi()
abstract class ContactBookApi {
  factory ContactBookApi(Dio dio, {String baseUrl}) = _ContactBookApi;
  @GET('/api/contact-books')
  Future<ApiResponse<List<ContactBook>>> getContactBooks(
    @Query('student_id') String studentId,
    @Query('date') String date,
  );

  // 當需要回傳單一物件時
  @GET('/api/contact-books/{id}')
  Future<ApiResponse<ContactBook>> getContactBook(
    @Path('id') String id,
  );

  // 當需要回傳詳細資料時
  @GET('/api/contact-books/daily')
  Future<ApiResponse<ContactBookDetail>> getDailyContactBook(
    @Query('student_id') String studentId,
    @Query('date') String date,
  );
}
