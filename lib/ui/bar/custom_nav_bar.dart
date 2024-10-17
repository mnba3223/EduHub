import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class ScaffoldWithNavBar extends StatelessWidget {
  const ScaffoldWithNavBar({Key? key, required this.child, required this.role})
      : super(key: key);
  final Widget child;
  final String role;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: _buildCurvedNavigationBar(context),
    );
  }

  Widget _buildCurvedNavigationBar(BuildContext context) {
    return CurvedNavigationBar(
      // backgroundColor: const Color.fromARGB(12, 0, 0, 0), // 設置為您想要的背景顏色
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      // color: const Color.fromARGB(12, 0, 0, 0), // 設置為您想要的導航欄顏色
      color: Colors.white,
      // buttonBackgroundColor: Colors.pink[200], // 設置為您想要的選中項目顏色
      buttonBackgroundColor: const Color.fromARGB(12, 0, 0, 0), // 設置為您想要的背景顏色
      // buttonBackgroundColor: Colors.transparent,
      height: 60,
      items: _getNavigationItems(),
      index: _calculateSelectedIndex(context),
      onTap: (index) => _onItemTapped(index, context),
    );
  }

  List<Widget> _getNavigationItems() {
    switch (role) {
      case 'student':
        return <Widget>[
          Icon(Icons.home, size: 30, color: Colors.black54),
          Icon(Icons.trending_up, size: 30, color: Colors.black54),
          Icon(Icons.calendar_today, size: 30, color: Colors.black54),
          Icon(Icons.person, size: 30, color: Colors.black54),
        ];
      case 'parent':
        return <Widget>[
          Icon(Icons.home, size: 30, color: Colors.white),
          // 添加更多家長角色的圖標
        ];
      case 'teacher':
        return <Widget>[
          Icon(Icons.home, size: 30, color: Colors.white),
          // 添加更多教師角色的圖標
        ];
      default:
        return <Widget>[
          Icon(Icons.home, size: 30, color: Colors.white),
        ];
    }
  }

  int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();
    if (role == 'student') {
      if (location.startsWith('/student-home')) return 0;
      if (location.startsWith('/student-announcements')) return 1;
      if (location.startsWith('/student-attendance')) return 2;
      if (location.startsWith('/student-more')) return 3;
    }
    // 添加家長和教師的邏輯
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (role) {
      case 'student':
        _onStudentItemTapped(index, context);
        break;
      case 'parent':
        _onParentItemTapped(index, context);
        break;
      case 'teacher':
        _onTeacherItemTapped(index, context);
        break;
    }
  }

  void _onStudentItemTapped(int index, BuildContext context) {
    log("switch student index: $index");
    // GoRouter.of(context).go('/student-home');
    switch (index) {
      case 0:
        GoRouter.of(context).go('/student-home');
        break;
      case 1:
        GoRouter.of(context).go('/student-announcements');
        break;
      case 2:
        GoRouter.of(context).go('/student-booking');
        break;
      case 3:
        GoRouter.of(context).go('/student-more');
        break;
    }
  }

  void _onParentItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).go('/parent-home');
        break;
      // 添加更多家長導航邏輯
    }
  }

  void _onTeacherItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).go('/teacher-home');
        break;
      // 添加更多教師導航邏輯
    }
  }
}
