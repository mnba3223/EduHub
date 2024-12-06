// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classroom_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassroomImpl _$$ClassroomImplFromJson(Map<String, dynamic> json) =>
    _$ClassroomImpl(
      classroomId: (json['classroom_id'] as num).toInt(),
      classroomName: json['classroom_name'] as String,
      classroomDescription: json['classroom_description'] as String?,
      peopleNumber: (json['classroom_people_number'] as num).toInt(),
      weekdayPrice: (json['weekday_price'] as num).toDouble(),
      weekendPrice: (json['weekend_price'] as num).toDouble(),
      classroomImage: json['classroom_image'] as String?,
      bookings: (json['Bookings'] as List<dynamic>?)
          ?.map((e) => Booking.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ClassroomImplToJson(_$ClassroomImpl instance) =>
    <String, dynamic>{
      'classroom_id': instance.classroomId,
      'classroom_name': instance.classroomName,
      'classroom_description': instance.classroomDescription,
      'classroom_people_number': instance.peopleNumber,
      'weekday_price': instance.weekdayPrice,
      'weekend_price': instance.weekendPrice,
      'classroom_image': instance.classroomImage,
      'Bookings': instance.bookings,
    };

_$BookingImpl _$$BookingImplFromJson(Map<String, dynamic> json) =>
    _$BookingImpl(
      bookingId: (json['booking_id'] as num).toInt(),
      bookingDate: DateTime.parse(json['booking_date'] as String),
      startTime: json['booking_start_time'] as String?,
      endTime: json['booking_end_time'] as String?,
      isOccupied: (json['isOccupied'] as num).toInt(),
    );

Map<String, dynamic> _$$BookingImplToJson(_$BookingImpl instance) =>
    <String, dynamic>{
      'booking_id': instance.bookingId,
      'booking_date': instance.bookingDate.toIso8601String(),
      'booking_start_time': instance.startTime,
      'booking_end_time': instance.endTime,
      'isOccupied': instance.isOccupied,
    };

_$ClassroomBookingRequestImpl _$$ClassroomBookingRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassroomBookingRequestImpl(
      studentId: (json['student_id'] as num).toInt(),
      classroomId: (json['classroom_id'] as num).toInt(),
      bookingDate: DateTime.parse(json['booking_date'] as String),
      startTime: json['booking_start_time'] as String,
      endTime: json['booking_end_time'] as String,
      totalAmount: (json['total_amount'] as num).toDouble(),
    );

Map<String, dynamic> _$$ClassroomBookingRequestImplToJson(
        _$ClassroomBookingRequestImpl instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'classroom_id': instance.classroomId,
      'booking_date': instance.bookingDate.toIso8601String(),
      'booking_start_time': instance.startTime,
      'booking_end_time': instance.endTime,
      'total_amount': instance.totalAmount,
    };
