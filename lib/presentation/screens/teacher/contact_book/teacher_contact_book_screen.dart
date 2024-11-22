// 聯絡簿頁面
import 'package:flutter/material.dart';

class TeacherContactScreen extends StatelessWidget {
  const TeacherContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('聯絡簿'),
      ),
      body: const Center(
        child: Text('聯絡簿頁面'),
      ),
    );
  }
}
