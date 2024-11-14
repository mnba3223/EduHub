import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher.freezed.dart';
part 'teacher.g.dart';

@freezed
class Teacher with _$Teacher {
  const factory Teacher({
    @JsonKey(name: 'teacher_id') required int teacherId,
    @JsonKey(name: 'teacher_name') required String teacherName,
    @JsonKey(name: 'teacher_email') required String teacherEmail,
    @JsonKey(name: 'teacher_phone') required String teacherPhone,
    @JsonKey(name: 'profile_image') String? profileImage,
    @JsonKey(name: 'school_id') required int schoolId,
    @JsonKey(name: 'user_id') required int userId,
    required String username,
  }) = _Teacher;

  factory Teacher.fromJson(Map<String, dynamic> json) =>
      _$TeacherFromJson(json);
}
