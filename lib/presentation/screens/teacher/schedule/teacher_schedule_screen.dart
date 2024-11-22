// 課表頁面
import 'package:flutter/material.dart';

class TeacherScheduleScreen extends StatelessWidget {
  const TeacherScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('課表'),
      ),
      body: const Center(
        child: Text('課表頁面'),
      ),
    );
  }
}
