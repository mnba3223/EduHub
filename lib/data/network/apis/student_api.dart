import 'package:edutec_hub/data/models/api_model/api_response.dart';
import 'package:edutec_hub/data/models/attendance/attendance_models.dart';
import 'package:edutec_hub/data/models/attendance/leave_models.dart';
import 'package:edutec_hub/data/models/exam/student_exam.dart';
import 'package:edutec_hub/data/models/image_slider.dart';
import 'package:edutec_hub/data/models/student/homework.dart';
import 'package:edutec_hub/data/models/student/student.dart';

import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;
import '../../models/api_model/api_models.dart';

part 'student_api.g.dart';

@RestApi()
abstract class StudentApi {
  factory StudentApi(Dio dio, {String baseUrl}) = _StudentApi;

  @POST('/api/Login')
  Future<ApiResponse<LoginResponse>> login(@Body() LoginRequest request);

  @GET('/api/Student/user/{userId}')
  Future<ApiResponse<List<Student>>> getStudentByUserId(
    @Path('userId') int userId,
  );

  // 獲取作業列表
  @GET('/api/Homework/student/{studentId}')
  Future<ApiResponse<List<HomeworkListItem>>> getHomeworks(
    @Path('studentId') int studentId,
    @Query('startTime') String startTime,
    @Query('endTime') String endTime,
  );
  // 獲取作業詳情
  @GET('/api/Homework/submissions/{homework_id}')
  Future<ApiResponse<List<HomeworkSubmission>>> getHomeworkDetail(
    @Path('homework_id') int homeworkId, {
    @Query('student_id') required int studentId,
  });
  // 提交作業
  @PUT('/api/Homework/submissions/student/{submission_id}')
  @MultiPart()
  Future<ApiResponse> submitHomeworkMutiple(
    @Headers({
      'Content-Type': 'multipart/form-data',
      'Accept': '*/*',
    })
    @Path('submission_id')
    int submissionId, {
    @Part() required List<MultipartFile> UploadedFiles,
  });

  @PUT('/api/Homework/submissions/student/{submission_id}')
  @MultiPart()
  Future<ApiResponse> submitHomework(
    @Headers({
      'Content-Type': 'multipart/form-data',
      'Accept': '*/*',
    })
    @Path('submission_id')
    int submissionId, {
    @Part() required List<MultipartFile> UploadedFiles,
  });

  @GET('/api/Exam/student/{studentId}')
  Future<ApiResponse<List<StudentExam>>> getStudentExams(
    @Path('studentId') int studentId,
  );
  // // 出勤相關 API
  // @GET('/api/Attendance/student/{studentId}/records')
  // Future<ApiResponse<List<AttendanceCourseRecord>>> getAttendanceRecords(
  //   @Path('studentId') String studentId,
  //   @Query('startDate') String startDate,
  //   @Query('endDate') String endDate,
  // );

  // @GET('/api/Attendance/student/{studentId}/statistics')
  // Future<ApiResponse<AttendanceStatistics>> getAttendanceStatistics(
  //   @Path('studentId') String studentId,
  //   @Query('startDate') String startDate,
  //   @Query('endDate') String endDate,
  // );

  @GET('/api/Attendance/AttendanceNLeave')
  Future<ApiResponse<AttendanceResponse>> getAttendanceAndLeave({
    @Query('studentId') required int studentId,
  });

  // @GET('/api/Attendance/student/{studentId}/leave-requests')
  // Future<ApiResponse<List<LeaveRequestRecord>>> getLeaveRequestHistory(
  //   @Path('studentId') String studentId,
  // );

  // @GET('/api/Attendance/records/{recordId}')
  // Future<ApiResponse<AttendanceCourseRecord>> getAttendanceDetail(
  //   @Path('recordId') String recordId,
  // );

  // 獲取請假記錄列表
  @GET('/api/LeaveNotice')
  Future<ApiResponse<List<LeaveRecord>>> getLeaveRecords({
    @Query('studentId') required int studentId,
  });

  // 提交請假申請
  @PUT('/api/LeaveNotice/{student_id}')
  Future<ApiResponse> submitLeaveRequest(
    @Path('student_id') int studentId,
    @Body() FormData formData,
  );

  @GET('/api/ImageSlider')
  Future<ApiResponse<List<ImageSlider>>> getSliders();

  // 如果需要按角色獲取
  @GET('/api/ImageSlider/{role}/list')
  Future<ApiResponse<List<ImageSlider>>> getSlidersByRole(
    @Path('role') String role,
  );
}
