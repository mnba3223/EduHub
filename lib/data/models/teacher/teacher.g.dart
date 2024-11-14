// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeacherImpl _$$TeacherImplFromJson(Map<String, dynamic> json) =>
    _$TeacherImpl(
      teacherId: (json['teacher_id'] as num).toInt(),
      teacherName: json['teacher_name'] as String,
      teacherEmail: json['teacher_email'] as String,
      teacherPhone: json['teacher_phone'] as String,
      profileImage: json['profile_image'] as String?,
      schoolId: (json['school_id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      username: json['username'] as String,
    );

Map<String, dynamic> _$$TeacherImplToJson(_$TeacherImpl instance) =>
    <String, dynamic>{
      'teacher_id': instance.teacherId,
      'teacher_name': instance.teacherName,
      'teacher_email': instance.teacherEmail,
      'teacher_phone': instance.teacherPhone,
      'profile_image': instance.profileImage,
      'school_id': instance.schoolId,
      'user_id': instance.userId,
      'username': instance.username,
    };
