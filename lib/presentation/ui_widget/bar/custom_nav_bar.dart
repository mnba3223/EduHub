import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'dart:developer' as developer;

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
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      color: Colors.white,
      buttonBackgroundColor: const Color.fromARGB(12, 0, 0, 0),
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
          Icon(Icons.home, size: 30, color: Colors.black54),
          Icon(Icons.child_care, size: 30, color: Colors.black54),
          Icon(Icons.message, size: 30, color: Colors.black54),
          Icon(Icons.settings, size: 30, color: Colors.black54),
        ];
      case 'teacher':
        return <Widget>[
          Icon(Icons.home, size: 30, color: Colors.black54),
          Icon(Icons.class_, size: 30, color: Colors.black54),
          Icon(Icons.assignment, size: 30, color: Colors.black54),
          Icon(Icons.schedule, size: 30, color: Colors.black54),
        ];
      default:
        return <Widget>[
          Icon(Icons.home, size: 30, color: Colors.black54),
        ];
    }
  }

  // 計算當前選中的索引
  int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();

    if (role == 'student') {
      if (location.startsWith('/student-home')) return 0;
      if (location.startsWith('/student-announcements')) return 1;
      if (location.startsWith('/student-booking')) return 2;
      if (location.startsWith('/student-more')) return 3;
    } else if (role == 'parent') {
      if (location.startsWith('/parent-home')) return 0;
      if (location.startsWith('/parent-children')) return 1;
      if (location.startsWith('/parent-messages')) return 2;
      if (location.startsWith('/parent-settings')) return 3;
    } else if (role == 'teacher') {
      if (location.startsWith('/teacher-home')) return 0;
      if (location.startsWith('/teacher-classes')) return 1;
      if (location.startsWith('/teacher-assignments')) return 2;
      if (location.startsWith('/teacher-schedule')) return 3;
    }
    return 0;
  }

  // 處理導航項目點擊事件
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

  // 學生導航項目點擊處理
  void _onStudentItemTapped(int index, BuildContext context) {
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

  // 家長導航項目點擊處理
  void _onParentItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).go('/parent-home');
        break;
      case 1:
        GoRouter.of(context).go('/parent-children');
        break;
      case 2:
        GoRouter.of(context).go('/parent-messages');
        break;
      case 3:
        GoRouter.of(context).go('/parent-settings');
        break;
    }
  }

  // 教師導航項目點擊處理
  void _onTeacherItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).go('/teacher-home');
        break;
      case 1:
        GoRouter.of(context).go('/teacher-classes');
        break;
      case 2:
        GoRouter.of(context).go('/teacher-assignments');
        break;
      case 3:
        GoRouter.of(context).go('/teacher-schedule');
        break;
    }
  }
}

// 定義導航項目的數據結構
class NavItem {
  final String route;
  final IconData icon;
  final String label;

  NavItem({required this.route, required this.icon, required this.label});
}

// 定義不同角色的導航項目
class NavItems {
  static final Map<String, List<NavItem>> items = {
    'student': [
      NavItem(route: '/student-home', icon: Icons.home, label: '首頁'),
      NavItem(
          route: '/student-announcements',
          icon: Icons.trending_up,
          label: '公告'),
      NavItem(
          route: '/student-booking', icon: Icons.calendar_today, label: '預約'),
      NavItem(route: '/student-more', icon: Icons.person, label: '更多'),
    ],
    'parent': [
      NavItem(route: '/parent-home', icon: Icons.home, label: '首頁'),
      NavItem(route: '/parent-children', icon: Icons.child_care, label: '子女'),
      NavItem(route: '/parent-messages', icon: Icons.message, label: '訊息'),
      NavItem(route: '/parent-settings', icon: Icons.settings, label: '設置'),
    ],
    'teacher': [
      NavItem(route: '/teacher-home', icon: Icons.home, label: '首頁'),
      NavItem(route: '/teacher-classes', icon: Icons.class_, label: '課程'),
      NavItem(
          route: '/teacher-assignments', icon: Icons.assignment, label: '作業'),
      NavItem(route: '/teacher-schedule', icon: Icons.schedule, label: '行程'),
    ],
  };
}

class ScaffoldWithNavBarV2 extends StatelessWidget {
  const ScaffoldWithNavBarV2(
      {super.key, required this.child, required this.role});
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
    final items = NavItems.items[role] ?? [];
    final index = _calculateSelectedIndex(context);

    developer.log(
        'Building CurvedNavigationBar: role=$role, items.length=${items.length}, calculated index=$index');

    if (items.isEmpty) {
      developer.log('警告：沒有為角色 "$role" 定義導航項');
      return const SizedBox.shrink(); // 返回一個空的小部件而不是導航欄
    }

    return Container(
      margin: EdgeInsets.only(top: 10.sp),
      child: CurvedNavigationBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        color: Colors.white,
        buttonBackgroundColor: const Color.fromARGB(12, 0, 0, 0),
        height: 60,
        items: items
            .map((item) => Icon(item.icon, size: 30, color: Colors.black54))
            .toList(),
        index: index,
        onTap: (index) => _onItemTapped(index, context),
      ),
    );
  }

  int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();
    final items = NavItems.items[role] ?? [];
    developer.log(
        'Calculating index: role=$role, location=$location, items.length=${items.length}');

    if (items.isEmpty) {
      developer.log('警告：沒有找到角色 "$role" 的導航項');
      return 0; // 如果沒有項目，返回 0
    }

    final index = items.indexWhere((item) => location.startsWith(item.route));
    if (index == -1) {
      developer.log('警告：找不到匹配的路由，返回默認索引 0');
      return 0; // 如果沒有匹配的路由，返回第一個項目的索引
    }

    developer.log('計算出的索引: $index');
    return index;
  }

  void _onItemTapped(int index, BuildContext context) {
    final items = NavItems.items[role] ?? [];
    if (index >= 0 && index < items.length) {
      developer.log('導航項被點擊: index=$index, route=${items[index].route}');
      GoRouter.of(context).go(items[index].route);
    } else {
      developer.log('警告：嘗試訪問無效的索引 $index');
    }
  }
}
