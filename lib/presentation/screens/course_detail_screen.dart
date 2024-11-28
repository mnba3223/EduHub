import 'package:flutter/material.dart';
import '../../state_management/blocs/course_list_bloc.dart';

class CourseDetailScreen extends StatelessWidget {
  final String courseId;

  const CourseDetailScreen({Key? key, required this.courseId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // For now, we'll use a dummy course. In a real app, you'd fetch this from a repository or API.
    // final course = Course(
    //   id: courseId,
    //   title: 'Course $courseId',
    //   description: 'This is the detailed description for Course $courseId.',
    // );

    return Scaffold(
      appBar: AppBar(
        title: Text("course.title"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "  course.title",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Text(
              "  course.description",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement enrollment functionality
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Enrolled in ${"course.title"}')),
                );
              },
              child: const Text('Enroll'),
            ),
          ],
        ),
      ),
    );
  }
}
