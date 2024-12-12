// part of 'attendance_cubit.dart';

// sealed class AttendanceState extends Equatable {
//   const AttendanceState();

//   @override
//   List<Object?> get props => [];
// }

// class AttendanceInitial extends AttendanceState {
//   const AttendanceInitial();
// }

// class AttendanceLoading extends AttendanceState {
//   const AttendanceLoading();
// }

// class AttendanceLoaded extends AttendanceState {
//   final List<AttendanceCourseRecord> records;
//   final AttendanceStatistics statistics;
//   final DateTime selectedDate;
//   final DateTime selectedMonth;

//   const AttendanceLoaded({
//     required this.records,
//     required this.statistics,
//     required this.selectedDate,
//     required this.selectedMonth,
//   });

//   @override
//   List<Object> get props => [
//         records,
//         statistics,
//         selectedDate,
//         selectedMonth,
//       ];

//   AttendanceLoaded copyWith({
//     List<AttendanceCourseRecord>? records,
//     AttendanceStatistics? statistics,
//     DateTime? selectedDate,
//     DateTime? selectedMonth,
//   }) {
//     return AttendanceLoaded(
//       records: records ?? this.records,
//       statistics: statistics ?? this.statistics,
//       selectedDate: selectedDate ?? this.selectedDate,
//       selectedMonth: selectedMonth ?? this.selectedMonth,
//     );
//   }

//   List<AttendanceCourseRecord> getRecordsForDate(DateTime date) {
//     return records
//         .where((record) => DateUtils.isSameDay(record.startTime, date))
//         .toList();
//   }
// }

// class AttendanceError extends AttendanceState {
//   final String message;

//   const AttendanceError(this.message);

//   @override
//   List<Object> get props => [message];
// }

// class LeaveRequestLoading extends AttendanceState {
//   const LeaveRequestLoading();
// }

// class LeaveRequestSuccess extends AttendanceState {
//   const LeaveRequestSuccess();
// }

// class LeaveRequestError extends AttendanceState {
//   final String message;

//   const LeaveRequestError(this.message);

//   @override
//   List<Object> get props => [message];
// }
