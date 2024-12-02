import 'dart:io';
import 'package:dio/dio.dart';
import 'package:edutec_hub/config/user_session.dart';
import 'package:edutec_hub/data/models/common/lesson.dart';
import 'package:edutec_hub/data/models/teacher/teacher_contact_book_model.dart';
import 'package:edutec_hub/data/network/apis/teacher_api.dart';
import 'package:edutec_hub/data/network/core/dio_client.dart';
import 'package:edutec_hub/data/network/core/exceptions.dart';
import 'package:path_provider/path_provider.dart';

abstract class TeacherContactBookRepository {
  Future<List<TeacherContactBook>> getContactBooks({
    DateTime? startDate,
    DateTime? endDate,
    int? studentId,
    int? lessonId,
  });

  Future<void> createContactBook({
    required String title,
    required int studentId,
    required int lessonId,
  });

  Future<void> addMessage({
    required int contactBookId,
    required String message,
    File? file,
  });

  Future<void> updateStatus({
    required int contactBookId,
    required String status,
  });

  Future<void> downloadFile(String fileUrl);

  Future<List<Lesson>> getTeacherLessons();

  Future<List<LessonStudent>> getLessonStudents(int lessonId);

  Future<void> updateContactBook({
    required int contactBookId,
    required String title,
    required String status,
  });
}

class TeacherContactBookRepositoryImpl implements TeacherContactBookRepository {
  final TeacherApi _api;
  final bool useMock;

  TeacherContactBookRepositoryImpl({
    TeacherApi? api,
    this.useMock = false,
  }) : _api = api ?? TeacherApi(DioClient().dio);

  int get _teacherId {
    final roleId = UserSession.instance.roleId;
    if (roleId == null) {
      throw ApiException('User not logged in');
    }
    return roleId;
  }

  @override
  Future<List<Lesson>> getTeacherLessons() async {
    try {
      final response = await _api.getTeacherLessons(_teacherId);
      if (response.success) {
        return response.data!;
      } else {
        throw ApiException(
          response.message,
          errorCode: response.code.toString(),
          errorDetails: response.data,
        );
      }
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  @override
  Future<List<TeacherContactBook>> getContactBooks({
    DateTime? startDate,
    DateTime? endDate,
    int? studentId,
    int? lessonId,
  }) async {
    if (useMock) {
      return _getMockContactBooks();
    }

    try {
      final response = await _api.getContactBooks(
        startDate: startDate?.toIso8601String(),
        endDate: endDate?.toIso8601String(),
        studentId: studentId,
        teacherId: _teacherId,
        lessonId: lessonId,
      );

      if (response.success) {
        return response.data!;
      } else {
        throw ApiException(
          response.message,
          errorCode: response.code.toString(),
          errorDetails: response.data,
        );
      }
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  @override
  Future<List<LessonStudent>> getLessonStudents(int lessonId) async {
    try {
      final response = await _api.getLessonStudents(lessonId);
      if (response.success) {
        return response.data ?? [];
      }
      throw ApiException(response.message);
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  @override
  Future<void> createContactBook({
    required String title,
    required int studentId,
    required int lessonId,
  }) async {
    // if (useMock) {
    //   return _getMockContactBook();
    // }

    try {
      final response = await _api.createContactBook({
        'title': title,
        'student_id': studentId,
        'teacher_id': _teacherId,
        'lesson_id': lessonId,
      });
      if (!response.success) {
        throw ApiException(response.message);
      }
      // if (response.success) {
      //   return response.data!;
      // } else {
      //   throw ApiException(
      //     response.message,
      //     errorCode: response.code.toString(),
      //     errorDetails: response.data,
      //   );
      // }
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  @override
  Future<void> addMessage({
    required int contactBookId,
    required String message,
    File? file,
  }) async {
    try {
      final response = await _api.addContactBookMessage(
        contactBookId: contactBookId,
        messageText: message,
        uploadFile: file,
      );

      if (!response.success) {
        throw ApiException(
          response.message,
          errorCode: response.code.toString(),
          errorDetails: response.data,
        );
      }
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  @override
  Future<void> updateContactBook({
    required int contactBookId,
    required String title,
    required String status,
  }) async {
    try {
      final data = {
        'title': title,
        'status': status,
      };

      final response = await _api.updateContactBook(contactBookId, data);
      if (!response.success) {
        throw ApiException(response.message);
      }
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  @override
  Future<void> updateStatus({
    required int contactBookId,
    required String status,
  }) async {
    if (useMock) return;

    try {
      final response = await _api.updateContactBook(
        contactBookId,
        {'status': status},
      );

      if (!response.success) {
        throw ApiException(
          response.message,
          errorCode: response.code.toString(),
          errorDetails: response.data,
        );
      }
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  @override
  Future<void> downloadFile(String fileUrl) async {
    try {
      final dio = Dio();
      final appDir = await getApplicationDocumentsDirectory();
      final fileName = fileUrl.split('/').last;
      final savePath = '${appDir.path}/$fileName';

      await dio.download(
        fileUrl,
        savePath,
        onReceiveProgress: (received, total) {
          if (total != -1) {
            final progress = received / total;
            print('Download progress: ${(progress * 100).toStringAsFixed(0)}%');
          }
        },
      );
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  // Mock 數據方法
  Future<List<TeacherContactBook>> _getMockContactBooks() async {
    await Future.delayed(const Duration(milliseconds: 800));
    return [
      TeacherContactBook(
        contactBookId: 1,
        studentId: 12,
        studentName: "test student 9",
        teacherId: _teacherId,
        teacherName: "test teacher",
        lessonId: 2,
        lessonTitle: "日語會話",
        lessonDate: DateTime.now(),
        title: "第一週學習狀況",
        status: "open",
        messages: [
          TeacherContactBookMessage(
            messageId: 1,
            messageText: "今天上課表現很好",
            messageType: "Teacher",
            uploadFile: "/uploads/test.png",
          ),
          TeacherContactBookMessage(
            messageId: 2,
            messageText: "謝謝老師",
            messageType: "Student",
            uploadFile: null,
          ),
        ],
      ),
    ];
  }

  Future<TeacherContactBook> _getMockContactBook() async {
    await Future.delayed(const Duration(milliseconds: 800));
    return TeacherContactBook(
      contactBookId: 1,
      studentId: 12,
      studentName: "test student 9",
      teacherId: _teacherId,
      teacherName: "test teacher",
      lessonId: 2,
      lessonTitle: "日語會話",
      lessonDate: DateTime.now(),
      title: "新增的聯絡簿",
      status: "open",
      messages: [],
    );
  }

  Future<TeacherContactBookMessage> _getMockMessage() async {
    await Future.delayed(const Duration(milliseconds: 800));
    return const TeacherContactBookMessage(
      messageId: 3,
      messageText: "新增的訊息",
      messageType: "Teacher",
      uploadFile: null,
    );
  }
}
