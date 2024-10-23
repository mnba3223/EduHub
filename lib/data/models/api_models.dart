// lib/models/api_models.dart
import 'package:json_annotation/json_annotation.dart';

part 'api_models.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T> {
  final T? data;
  final bool? error;
  final String? message;
  @JsonKey(name: 'code')
  final String? errorCode;

  BaseResponse({
    this.data,
    this.error,
    required this.message,
    this.errorCode,
  });

  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$BaseResponseFromJson(json, fromJsonT);
}

@JsonSerializable()
class EmptyResponse {
  const EmptyResponse();

  factory EmptyResponse.fromJson(Map<String, dynamic> json) =>
      _$EmptyResponseFromJson(json);

  Map<String, dynamic> toJson() => _$EmptyResponseToJson(this);
}

@JsonSerializable()
class LoginResponse {
  final String token;
  // final String userId;
  final String role;
  final LoginResponseData? data;

  LoginResponse({
    required this.token,
    // required this.userId,
    required this.data,
    required this.role,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}

@JsonSerializable()
class LoginResponseData {
  final int id;
  final String name;

  LoginResponseData({
    required this.id,
    required this.name,
  });

  factory LoginResponseData.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDataFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResponseDataToJson(this);
}

@JsonSerializable()
class LoginRequest {
  final String name;
  final String password;

  LoginRequest({required this.name, required this.password});

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}

@JsonSerializable()
class ProfileData {
  final String id;
  final String name;
  final String email;
  final String? avatar;
  final String? phone;

  ProfileData({
    required this.id,
    required this.name,
    required this.email,
    this.avatar,
    this.phone,
  });

  factory ProfileData.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileDataToJson(this);
}

@JsonSerializable()
class Lesson {
  final String id;
  final String title;
  final String description;
  final DateTime date;
  final String subjectId;

  Lesson({
    required this.id,
    required this.title,
    required this.description,
    required this.date,
    required this.subjectId,
  });

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);
  Map<String, dynamic> toJson() => _$LessonToJson(this);
}

@JsonSerializable()
class Subject {
  final String id;
  final String name;
  final String code;
  final int credits;

  Subject({
    required this.id,
    required this.name,
    required this.code,
    required this.credits,
  });

  factory Subject.fromJson(Map<String, dynamic> json) =>
      _$SubjectFromJson(json);
  Map<String, dynamic> toJson() => _$SubjectToJson(this);
}

@JsonSerializable()
class Assignment {
  final String id;
  final String title;
  final String description;
  final DateTime dueDate;
  final String subjectId;
  final bool isSubmitted;

  Assignment({
    required this.id,
    required this.title,
    required this.description,
    required this.dueDate,
    required this.subjectId,
    this.isSubmitted = false,
  });

  factory Assignment.fromJson(Map<String, dynamic> json) =>
      _$AssignmentFromJson(json);
  Map<String, dynamic> toJson() => _$AssignmentToJson(this);
}

@JsonSerializable()
class ExamDetails {
  final String id;
  final String name;
  final DateTime examDate;
  final String subjectId;
  final int duration;
  final int totalMarks;
  final List<ExamQuestion> questions;

  ExamDetails({
    required this.id,
    required this.name,
    required this.examDate,
    required this.subjectId,
    required this.duration,
    required this.totalMarks,
    required this.questions,
  });

  factory ExamDetails.fromJson(Map<String, dynamic> json) =>
      _$ExamDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$ExamDetailsToJson(this);
}

@JsonSerializable()
class ExamQuestion {
  final String id;
  final String question;
  final List<String> options;
  final int correctOptionIndex;
  final int marks;

  ExamQuestion({
    required this.id,
    required this.question,
    required this.options,
    required this.correctOptionIndex,
    required this.marks,
  });

  factory ExamQuestion.fromJson(Map<String, dynamic> json) =>
      _$ExamQuestionFromJson(json);
  Map<String, dynamic> toJson() => _$ExamQuestionToJson(this);
}

// 如果有需要自定義日期格式或其他特殊處理，可以創建一個工具類
class DateTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String json) => DateTime.parse(json);

  @override
  String toJson(DateTime object) => object.toIso8601String();
}

// 使用自定義轉換器的示例
@JsonSerializable()
class Event {
  final String id;
  final String title;

  @DateTimeConverter()
  final DateTime startTime;

  @DateTimeConverter()
  final DateTime endTime;

  Event({
    required this.id,
    required this.title,
    required this.startTime,
    required this.endTime,
  });

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
  Map<String, dynamic> toJson() => _$EventToJson(this);
}
