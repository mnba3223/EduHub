import 'package:edutec_hub/data/models/api_model/api_response.dart';
import 'package:edutec_hub/data/models/attendance/attendance_models.dart';
import 'package:edutec_hub/data/models/student/homework.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../../models/api_model/api_models.dart';

part 'student_api.g.dart';

@RestApi()
abstract class StudentApi {
  factory StudentApi(Dio dio, {String baseUrl}) = _StudentApi;

  @POST('/api/Login')
  Future<ApiResponse<LoginResponse>> login(@Body() LoginRequest request);

  // 作業相關的API
  @GET('/api/HomeWork/submissions/student/{studentId}')
  Future<ApiResponse<List<Homework>>> getHomeworks(
    @Path('studentId') String studentId,
  );

  @GET('/api/HomeWork/submissions/student/date/{date}')
  Future<ApiResponse<List<Homework>>> getHomeworksByDate(
    @Path('studentId') String studentId,
    @Path('date') String date,
  );

  @GET('/api/HomeWork/submissions/{id}')
  Future<ApiResponse<List<Homework>>> getHomeworkDetail(
    @Path('id') String id,
  );

  @PUT('/api/HomeWork/submissions/{submissionId}')
  @MultiPart()
  Future<ApiResponse> submitHomework(
    @Path('submissionId') int submissionId,
    @Part(name: 'student_id') int studentId,
    @Part(name: 'comment') String comment,
    @Part(name: 'status') String status,
    @Part(name: 'UploadedFile') List<MultipartFile> files,
  );

  // 出勤相關 API
  @GET('/api/Attendance/student/{studentId}/records')
  Future<ApiResponse<List<AttendanceCourseRecord>>> getAttendanceRecords(
    @Path('studentId') String studentId,
    @Query('startDate') String startDate,
    @Query('endDate') String endDate,
  );

  @GET('/api/Attendance/student/{studentId}/statistics')
  Future<ApiResponse<AttendanceStatistics>> getAttendanceStatistics(
    @Path('studentId') String studentId,
    @Query('startDate') String startDate,
    @Query('endDate') String endDate,
  );

  @POST('/api/Attendance/student/{studentId}/leave-requests')
  Future<ApiResponse> submitLeaveRequest(
    @Path('studentId') String studentId,
    @Body() Map<String, dynamic> form,
  );

  @DELETE('/api/Attendance/student/{studentId}/leave-requests/{requestId}')
  Future<ApiResponse> cancelLeaveRequest(
    @Path('studentId') String studentId,
    @Path('requestId') String requestId,
  );

  @GET('/api/Attendance/student/{studentId}/leave-requests')
  Future<ApiResponse<List<LeaveRequestRecord>>> getLeaveRequestHistory(
    @Path('studentId') String studentId,
  );

  @GET('/api/Attendance/records/{recordId}')
  Future<ApiResponse<AttendanceCourseRecord>> getAttendanceDetail(
    @Path('recordId') String recordId,
  );
}

// @RestApi()
// abstract class StudentApi {
//   factory StudentApi(Dio dio, {String baseUrl}) = _StudentApi;

//   @POST('/api/Login')
//   Future<LoginResponse> login(@Body() LoginRequest request);
//   // 作業相關的API

//   @GET('/api/HomeWork/submissions/student/{studentId}')
//   Future<List<Homework>> getHomeworks(@Path('studentId') String studentId);

//   @GET('/api/HomeWork/submissions/student/date/{date}')
//   Future<List<Homework>> getHomeworksByDate(
//     @Path('studentId') String studentId,
//     @Path('date') String date,
//   );

//   @GET('/api/HomeWork/submissions/{id}')
//   Future<List<Homework>> getHomeworkDetail(@Path('id') String id);

//   // @POST('/api/HomeWork/submissions/{id}/submit')
//   // @MultiPart()
//   // Future<void> submitHomework(
//   //   @Path('id') String id,
//   //   @Part(name: 'content') String content,
//   //   @Part(name: 'files') List<MultipartFile> files,
//   // );
//   // @POST('/api/HomeWork/{homeworkId}/submissions')
//   // @MultiPart()
//   // Future<void> submitHomework(
//   //   @Path('homeworkId') int homeworkId,
//   //   @Part(name: 'student_id') int studentId,
//   //   @Part(name: 'comment') String comment,
//   //   @Part(name: 'status') String status,
//   //   @Part(name: 'UploadedFile') List<MultipartFile> files,
//   // );

//   // 修改為 PUT 請求，並更新路徑
//   @PUT('/api/HomeWork/submissions/{submissionId}')
//   @MultiPart()
//   Future<void> submitHomework(
//     @Path('submissionId') int submissionId,
//     @Part(name: 'student_id') int studentId,
//     @Part(name: 'comment') String comment,
//     @Part(name: 'status') String status,
//     @Part(name: 'UploadedFile') List<MultipartFile> files,
//   );

//   // 出勤相關 API
//   @GET('/api/Attendance/student/{studentId}/records')
//   Future<List<AttendanceCourseRecord>> getAttendanceRecords(
//     @Path('studentId') String studentId,
//     @Query('startDate') String startDate,
//     @Query('endDate') String endDate,
//   );

//   @GET('/api/Attendance/student/{studentId}/statistics')
//   Future<AttendanceStatistics> getAttendanceStatistics(
//     @Path('studentId') String studentId,
//     @Query('startDate') String startDate,
//     @Query('endDate') String endDate,
//   );

//   @POST('/api/Attendance/student/{studentId}/leave-requests')
//   Future<void> submitLeaveRequest(
//     @Path('studentId') String studentId,
//     @Body() Map<String, dynamic> form,
//   );

//   @DELETE('/api/Attendance/student/{studentId}/leave-requests/{requestId}')
//   Future<void> cancelLeaveRequest(
//     @Path('studentId') String studentId,
//     @Path('requestId') String requestId,
//   );

//   @GET('/api/Attendance/student/{studentId}/leave-requests')
//   Future<List<LeaveRequestRecord>> getLeaveRequestHistory(
//     @Path('studentId') String studentId,
//   );

//   @GET('/api/Attendance/records/{recordId}')
//   Future<AttendanceCourseRecord> getAttendanceDetail(
//     @Path('recordId') String recordId,
//   );
// }

