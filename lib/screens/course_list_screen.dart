import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/course_list_bloc.dart';

class CourseListScreen extends StatelessWidget {
  const CourseListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CourseListBloc()..add(LoadCourses()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Courses'),
        ),
        body: BlocBuilder<CourseListBloc, CourseListState>(
          builder: (context, state) {
            if (state is CourseListLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is CourseListLoaded) {
              return ListView.builder(
                itemCount: state.courses.length,
                itemBuilder: (context, index) {
                  final course = state.courses[index];
                  return ListTile(
                    title: Text(course.title),
                    subtitle: Text(course.description),
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/course/${course.id}',
                        arguments: course,
                      );
                    },
                  );
                },
              );
            } else if (state is CourseListError) {
              return Center(child: Text('Error: ${state.message}'));
            }
            return const Center(child: Text('No courses available'));
          },
        ),
      ),
    );
  }
}
