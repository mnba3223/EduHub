// 請假通知頁面
import 'package:flutter/material.dart';

class TeacherLeaveScreen extends StatelessWidget {
  const TeacherLeaveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('請假通知'),
      ),
      body: const Center(
        child: Text('請假通知頁面'),
      ),
    );
  }
}
