// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentImpl _$$StudentImplFromJson(Map<String, dynamic> json) =>
    _$StudentImpl(
      studentId: (json['student_id'] as num).toInt(),
      studentName: json['student_name'] as String,
      studentDob: DateTime.parse(json['student_dob'] as String),
      studentGender: json['student_gender'] as String,
      studentPhone: json['student_phone'] as String,
      studentAddress: json['student_address'] as String,
      studentEmail: json['student_email'] as String,
      profileImage: json['profile_image'] as String?,
      studentCode: json['student_code'] as String?,
      schoolId: (json['school_id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      username: json['username'] as String,
    );

Map<String, dynamic> _$$StudentImplToJson(_$StudentImpl instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'student_name': instance.studentName,
      'student_dob': instance.studentDob.toIso8601String(),
      'student_gender': instance.studentGender,
      'student_phone': instance.studentPhone,
      'student_address': instance.studentAddress,
      'student_email': instance.studentEmail,
      'profile_image': instance.profileImage,
      'student_code': instance.studentCode,
      'school_id': instance.schoolId,
      'user_id': instance.userId,
      'username': instance.username,
    };
