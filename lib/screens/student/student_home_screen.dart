import 'package:carousel_slider/carousel_slider.dart';
import 'package:edutec_hub/data/models/card_list.dart';
import 'package:edutec_hub/ui/bar/top_bar.dart';
import 'package:edutec_hub/ui/custom_widget/card.dart';
import 'package:edutec_hub/ui/custom_widget/slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StudentHomeScreen extends StatefulWidget {
  @override
  State<StudentHomeScreen> createState() => _StudentHomeScreenState();
}

class _StudentHomeScreenState extends State<StudentHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildTopBar(),
          Expanded(
            child: ListView(
              children: [
                // _buildSlider(),
                // Expanded(child: CarouselWithIndicatorDemo()),
                CustomCarouselWithIndicator(),
                // _buildPlaceholderSlider(),
                _buildTodaysCourse(),
                _buildMyCourse(),
                _buildContactBook(),
                _buildHomework(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopBar() {
    return FixedHeightSmoothTopBar(
      height: 180.h, // 使用 .h 來適應高度
      ellipticalRadius: 40.r, // 使用 .r 來適應半徑
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(20.w, 40.h, 20.w, 60.h),
          child: Column(
            children: [
              Row(
                children: [
                  // 头像
                  CircleAvatar(
                    backgroundColor: Colors.amber,
                    radius: 25,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.w), // 使用 .w 來適應左邊距
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '陳小明',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp, // 使用 .sp 來適應字體大小
                            ),
                          ),
                          Text(
                            'student@gmail.com',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14.sp, // 使用 .sp 來適應字體大小
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // 设置图标
                  Icon(Icons.settings, color: Colors.white),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSlider() {
    return Container(
      height: 200,
      margin: EdgeInsets.all(20),
      color: Colors.amber, // 替代實際的slider
      child: Center(child: Text('Slider', style: TextStyle(fontSize: 24))),
    );
  }

  Widget _buildPlaceholderSlider() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: 0.9,
      ),
      items: [Colors.red, Colors.green, Colors.blue]
          .map((color) => Container(
                color: color,
                child: Center(
                  child: Text(
                    'Slide ${[
                          Colors.red,
                          Colors.green,
                          Colors.blue
                        ].indexOf(color) + 1}',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ))
          .toList(),
    );
  }

  Widget _buildTodaysCourse() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
          child: Text(
            '今天課程',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        // CourseListView(
        //   // mainScreenAnimationController: widget.animationController,
        //   // mainScreenAnimation: widget.animation,
        //   courseList: CourseListData.todaysCourseList,
        // ),
        SelfAnimatedCourseListView(
          courseList: CourseListData.todaysCourseList,
        ),
      ],
    );
  }

  Widget _buildMyCourse() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
          child: Text(
            '我的課程',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        // CourseListView(
        //   // mainScreenAnimationController: widget.animationController,
        //   // mainScreenAnimation: widget.animation,
        //   courseList: CourseListData.myCourseList,
        // ),
        SelfAnimatedCourseListView(
          courseList: CourseListData.myCourseList,
        ),
      ],
    );
  }

  Widget _buildContactBook() {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('聯絡簿',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('日期'),
                Text('課程'),
                Text('MORE→'),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('日期'),
                Text('課程'),
                Text('MORE→'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHomework() {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('作業',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Container(height: 10, color: Colors.grey)),
                SizedBox(width: 10),
                Text('MORE→'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard(String title, Color color) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.egg_alt, color: Colors.orange),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Breakfast',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Bread, Peanut butter, Apple'),
                    Text('525 kcal',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
