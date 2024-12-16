// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_homework.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeacherHomeworkStatsImpl _$$TeacherHomeworkStatsImplFromJson(
        Map<String, dynamic> json) =>
    _$TeacherHomeworkStatsImpl(
      total: (json['total'] as num).toInt(),
      submitted: (json['submitted'] as num).toInt(),
      graded: (json['graded'] as num).toInt(),
    );

Map<String, dynamic> _$$TeacherHomeworkStatsImplToJson(
        _$TeacherHomeworkStatsImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'submitted': instance.submitted,
      'graded': instance.graded,
    };

_$TeacherHomeworkListItemImpl _$$TeacherHomeworkListItemImplFromJson(
        Map<String, dynamic> json) =>
    _$TeacherHomeworkListItemImpl(
      homeworkId: (json['homework_id'] as num).toInt(),
      lessonId: (json['lesson_id'] as num).toInt(),
      homeworkDescription: json['homework_description'] as String?,
      className: json['class_name'] as String,
      classroomName: json['classroom_name'] as String,
      startTime: DateTime.parse(json['homework_start_time'] as String),
      endTime: DateTime.parse(json['homework_end_time'] as String),
      status: json['status'] == null
          ? HomeworkStatus.ongoing
          : _parseHomeworkStatus(json['status'] as String?),
      teacherId: (json['teacher_id'] as num).toInt(),
      teacherName: json['teacher_name'] as String,
      uploadFile: json['upload_file'] as String?,
      totalStudents: (json['total_students'] as num).toInt(),
      submittedCount: (json['submitted_count'] as num).toInt(),
      ratingCount: (json['rating_count'] as num).toInt(),
    );

Map<String, dynamic> _$$TeacherHomeworkListItemImplToJson(
        _$TeacherHomeworkListItemImpl instance) =>
    <String, dynamic>{
      'homework_id': instance.homeworkId,
      'lesson_id': instance.lessonId,
      'homework_description': instance.homeworkDescription,
      'class_name': instance.className,
      'classroom_name': instance.classroomName,
      'homework_start_time': instance.startTime.toIso8601String(),
      'homework_end_time': instance.endTime.toIso8601String(),
      'status': _$HomeworkStatusEnumMap[instance.status]!,
      'teacher_id': instance.teacherId,
      'teacher_name': instance.teacherName,
      'upload_file': instance.uploadFile,
      'total_students': instance.totalStudents,
      'submitted_count': instance.submittedCount,
      'rating_count': instance.ratingCount,
    };

const _$HomeworkStatusEnumMap = {
  HomeworkStatus.ongoing: 'ongoing',
  HomeworkStatus.closed: 'closed',
};

_$TeacherHomeworkDetailImpl _$$TeacherHomeworkDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$TeacherHomeworkDetailImpl(
      homeworkId: (json['homeworkId'] as num).toInt(),
      homeworkDescription: json['homeworkDescription'] as String,
      lessonId: (json['lessonId'] as num).toInt(),
      lessonTitle: json['lessonTitle'] as String,
      classroomName: json['classroomName'] as String?,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      uploadFile: json['uploadFile'] as String?,
      stats:
          TeacherHomeworkStats.fromJson(json['stats'] as Map<String, dynamic>),
      submissions: (json['submissions'] as List<dynamic>)
          .map((e) =>
              TeacherHomeworkSubmission.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TeacherHomeworkDetailImplToJson(
        _$TeacherHomeworkDetailImpl instance) =>
    <String, dynamic>{
      'homeworkId': instance.homeworkId,
      'homeworkDescription': instance.homeworkDescription,
      'lessonId': instance.lessonId,
      'lessonTitle': instance.lessonTitle,
      'classroomName': instance.classroomName,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'uploadFile': instance.uploadFile,
      'stats': instance.stats,
      'submissions': instance.submissions,
    };

_$TeacherHomeworkSubmissionImpl _$$TeacherHomeworkSubmissionImplFromJson(
        Map<String, dynamic> json) =>
    _$TeacherHomeworkSubmissionImpl(
      submissionId: (json['submission_id'] as num).toInt(),
      studentId: (json['student_id'] as num).toInt(),
      studentName: json['student_name'] as String,
      submissionTime: json['submission_time'] == null
          ? null
          : DateTime.parse(json['submission_time'] as String),
      comment: json['comment'] as String?,
      grade: (json['rating'] as num?)?.toInt(),
      status: json['status'] == null
          ? SubmissionStatus.pending
          : _parseSubmissionStatus(json['status'] as String?),
      hasAttachment: json['has_Attachment'] as bool,
      uploadFileUrls: (json['upload_file_urls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$TeacherHomeworkSubmissionImplToJson(
        _$TeacherHomeworkSubmissionImpl instance) =>
    <String, dynamic>{
      'submission_id': instance.submissionId,
      'student_id': instance.studentId,
      'student_name': instance.studentName,
      'submission_time': instance.submissionTime?.toIso8601String(),
      'comment': instance.comment,
      'rating': instance.grade,
      'status': _$SubmissionStatusEnumMap[instance.status]!,
      'has_Attachment': instance.hasAttachment,
      'upload_file_urls': instance.uploadFileUrls,
    };

const _$SubmissionStatusEnumMap = {
  SubmissionStatus.submitted: 'submit',
  SubmissionStatus.pending: 'pending',
  SubmissionStatus.graded: 'graded',
};
