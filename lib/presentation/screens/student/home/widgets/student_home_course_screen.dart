import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:edutec_hub/data/models/course/course.dart';

class SelfAnimatedCourseListView extends StatefulWidget {
  final List<dynamic> items;
  final bool isToday;

  const SelfAnimatedCourseListView({
    Key? key,
    required this.items,
    this.isToday = false,
  }) : super(key: key);

  @override
  _SelfAnimatedCourseListViewState createState() =>
      _SelfAnimatedCourseListViewState();
}

class _SelfAnimatedCourseListViewState extends State<SelfAnimatedCourseListView>
    with TickerProviderStateMixin {
  late AnimationController mainScreenAnimationController;
  late Animation<double> mainScreenAnimation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    mainScreenAnimationController = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );
    mainScreenAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: mainScreenAnimationController,
        curve: const Interval(0, 0.5, curve: Curves.fastOutSlowIn),
      ),
    );
    animationController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );

    mainScreenAnimationController.forward();
    animationController.forward();
  }

  @override
  void dispose() {
    mainScreenAnimationController.dispose();
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: mainScreenAnimationController,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: mainScreenAnimation,
          child: Transform(
            transform: Matrix4.translationValues(
              0.0,
              30 * (1.0 - mainScreenAnimation.value),
              0.0,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: List.generate(
                  widget.items.length,
                  (index) {
                    final Animation<double> animation = Tween<double>(
                      begin: 0.0,
                      end: 1.0,
                    ).animate(
                      CurvedAnimation(
                        parent: animationController,
                        curve: Interval(
                          (1 / widget.items.length) * index,
                          1.0,
                          curve: Curves.fastOutSlowIn,
                        ),
                      ),
                    );

                    // 添加一个右边距的 Container
                    return Container(
                      margin: EdgeInsets.only(
                        right: index == widget.items.length - 1
                            ? 20.w
                            : 16.w, // 最后一个项目有额外的右边距
                      ),
                      child: widget.isToday
                          ? TodayLessonCard(
                              lesson: widget.items[index] as StudentLesson,
                              animation: animation,
                              animationController: animationController,
                            )
                          : CourseCard(
                              course: widget.items[index] as Course,
                              animation: animation,
                              animationController: animationController,
                            ),
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class CourseCard extends StatelessWidget {
  final Course course;
  final Animation<double> animation;
  final AnimationController animationController;

  const CourseCard({
    Key? key,
    required this.course,
    required this.animation,
    required this.animationController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: animation,
          child: Transform(
            transform: Matrix4.translationValues(
              100 * (1.0 - animation.value),
              0.0,
              0.0,
            ),
            child: Container(
              width: 130.w,
              margin: EdgeInsets.only(right: 16.w),
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      top: 32.h,
                      bottom: 16.h,
                    ),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(int.parse(
                                  '0xFF${course.courseColor.substring(1)}'))
                              .withOpacity(0.6),
                          offset: const Offset(1.1, 4.0),
                          blurRadius: 8.0,
                        ),
                      ],
                      gradient: LinearGradient(
                        colors: [
                          Color(int.parse(
                              '0xFF${course.courseColor.substring(1)}')),
                          Color(int.parse(
                                  '0xFF${course.courseColor.substring(1)}'))
                              .withOpacity(0.8),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(8.r),
                        bottomLeft: Radius.circular(8.r),
                        topLeft: Radius.circular(8.r),
                        topRight: Radius.circular(54.r),
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(
                        top: 54.h,
                        left: 16.w,
                        right: 16.w,
                        bottom: 16.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            course.courseName,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                              letterSpacing: 0.2,
                              color: Colors.white,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            course.subjectName,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              letterSpacing: 0.2,
                              color: Colors.white.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // 圓形背景
                  Positioned(
                    top: 0,
                    left: 8.w,
                    child: Container(
                      width: 84.w,
                      height: 84.w, // 使用 width 來保持圓形
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  // 圖片
                  Positioned(
                    top: 2.h,
                    left: 10.w,
                    child: ClipOval(
                      child: Image.network(
                        course.courseImage,
                        width: 80.w,
                        height: 80.w, // 使用 width 來保持圓形
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            width: 80.w,
                            height: 80.w,
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.error,
                              color: Colors.white,
                              size: 30.sp,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class TodayLessonCard extends StatelessWidget {
  final StudentLesson lesson;
  final Animation<double> animation;
  final AnimationController animationController;

  const TodayLessonCard({
    Key? key,
    required this.lesson,
    required this.animation,
    required this.animationController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color cardColor = Color(
      int.parse('0xFF${lesson.courseColor.trim().substring(1)}'),
    );

    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: animation,
          child: Transform(
            transform: Matrix4.translationValues(
              100 * (1.0 - animation.value),
              0.0,
              0.0,
            ),
            child: IntrinsicWidth(
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 32.h),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: cardColor.withOpacity(0.3),
                          offset: const Offset(0, 4.0),
                          blurRadius: 8.0,
                        ),
                      ],
                      color: cardColor,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(24.r),
                        bottomLeft: Radius.circular(16.r),
                        topLeft: Radius.circular(16.r),
                        topRight: Radius.circular(54.r), // 恢復右上角的大圓角
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(24.w, 48.h, 24.w, 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          lesson.courseName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          '${lesson.className} · ${lesson.subjectName}',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.white.withOpacity(0.9),
                          ),
                        ),
                        SizedBox(height: 12.h),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.access_time_rounded,
                              color: Colors.white,
                              size: 16.sp,
                            ),
                            SizedBox(width: 4.w),
                            Text(
                              '${lesson.startTime.substring(0, 5)} - ${lesson.endTime.substring(0, 5)}',
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 16.w),
                            Icon(
                              Icons.room_rounded,
                              color: Colors.white,
                              size: 16.sp,
                            ),
                            SizedBox(width: 4.w),
                            Text(
                              lesson.classroomName,
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // 圖片背景圓圈
                  Positioned(
                    top: 0,
                    left: 16.w,
                    child: Container(
                      width: 96.w,
                      height: 96.w,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  // 圖片
                  Positioned(
                    top: 8.h,
                    left: 24.w,
                    child: SizedBox(
                      width: 80.w,
                      height: 80.w,
                      child: Image.network(
                        lesson.courseImage,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) => Icon(
                          Icons.play_circle_outline_rounded,
                          size: 60.sp,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
