import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

// Events
abstract class CourseListEvent extends Equatable {
  const CourseListEvent();

  @override
  List<Object> get props => [];
}

class LoadCourses extends CourseListEvent {}

// States
abstract class CourseListState extends Equatable {
  const CourseListState();

  @override
  List<Object> get props => [];
}

class CourseListInitial extends CourseListState {}

class CourseListLoading extends CourseListState {}

class CourseListLoaded extends CourseListState {
  final List<Course> courses;

  const CourseListLoaded(this.courses);

  @override
  List<Object> get props => [courses];
}

class CourseListError extends CourseListState {
  final String message;

  const CourseListError(this.message);

  @override
  List<Object> get props => [message];
}

// Model
class Course {
  final String id;
  final String title;
  final String description;

  Course({required this.id, required this.title, required this.description});
}

// BLoC
class CourseListBloc extends Bloc<CourseListEvent, CourseListState> {
  CourseListBloc() : super(CourseListInitial()) {
    on<LoadCourses>((event, emit) async {
      emit(CourseListLoading());
      try {
        // Simulating API call
        await Future.delayed(Duration(seconds: 1));
        final courses = [
          Course(
              id: '1',
              title: 'Flutter Basics',
              description: 'Learn the basics of Flutter'),
          Course(
              id: '2',
              title: 'Advanced Flutter',
              description: 'Master advanced Flutter concepts'),
        ];
        emit(CourseListLoaded(courses));
      } catch (e) {
        emit(CourseListError(e.toString()));
      }
    });
  }
}
