import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:edutec_hub/data/models/course/course.dart';

class CourseGridView extends StatefulWidget {
  final List<Course> courses;
  final String subjectTitle;

  const CourseGridView({
    Key? key,
    required this.courses,
    required this.subjectTitle,
  }) : super(key: key);

  @override
  State<CourseGridView> createState() => _CourseGridViewState();
}

class _CourseGridViewState extends State<CourseGridView>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Text(
            widget.subjectTitle,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            crossAxisSpacing: 12.w,
            mainAxisSpacing: 12.h,
          ),
          itemCount: widget.courses.length,
          itemBuilder: (context, index) {
            final animation = Tween<double>(begin: 0.0, end: 1.0).animate(
              CurvedAnimation(
                parent: _animationController,
                curve: Interval(
                  (1 / widget.courses.length) * index,
                  1.0,
                  curve: Curves.fastOutSlowIn,
                ),
              ),
            );
            return CourseCard(
              course: widget.courses[index],
              animation: animation,
              animationController: _animationController,
            );
          },
        ),
        SizedBox(height: 16.h), // Bottom padding
      ],
    );
  }
}

// 复用现有的 CourseCard 组件，但调整宽度和边距
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
              50 * (1.0 - animation.value),
              0.0,
              0.0,
            ),
            child: Container(
              margin: EdgeInsets.zero, // Remove the right margin
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
                            course.subjectName ?? '',
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
                  // 圆形背景
                  Positioned(
                    top: 0,
                    left: 8.w,
                    child: Container(
                      width: 84.w,
                      height: 84.w,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  // 图片
                  Positioned(
                    top: 2.h,
                    left: 10.w,
                    child: ClipOval(
                      child: course.courseImage != null
                          ? Image.network(
                              course.courseImage!,
                              width: 80.w,
                              height: 80.w,
                              fit: BoxFit.cover,
                              loadingBuilder: (BuildContext context,
                                  Widget child,
                                  ImageChunkEvent? loadingProgress) {
                                if (loadingProgress == null) {
                                  return child;
                                }
                                return Container(
                                  width: 80.w,
                                  height: 80.w,
                                  color: Colors.grey[300],
                                  child: Center(
                                    child: CircularProgressIndicator(
                                      value:
                                          loadingProgress.expectedTotalBytes !=
                                                  null
                                              ? loadingProgress
                                                      .cumulativeBytesLoaded /
                                                  loadingProgress
                                                      .expectedTotalBytes!
                                              : null,
                                    ),
                                  ),
                                );
                              },
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  width: 80.w,
                                  height: 80.w,
                                  color: Colors.grey[300],
                                  child: Icon(
                                    Icons.image,
                                    color: Colors.grey[500],
                                    size: 30.sp,
                                  ),
                                );
                              },
                            )
                          : Container(
                              width: 80.w,
                              height: 80.w,
                              color: Colors.grey[300],
                              child: Icon(
                                Icons.image,
                                color: Colors.grey[500],
                                size: 30.sp,
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

class SubjectCourseList extends StatefulWidget {
  final List<Course> courses;
  final String subjectTitle;

  const SubjectCourseList({
    Key? key,
    required this.courses,
    required this.subjectTitle,
  }) : super(key: key);

  @override
  State<SubjectCourseList> createState() => _SubjectCourseListState();
}

class _SubjectCourseListState extends State<SubjectCourseList>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min, // 让Column适应内容高度
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.w, top: 10.h, bottom: 10.h),
          child: Text(
            widget.subjectTitle,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: IntrinsicHeight(
            // 使用IntrinsicHeight让高度适应内容
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch, // 让所有卡片高度一致
              children: List.generate(
                widget.courses.length,
                (index) {
                  final animation = Tween<double>(begin: 0.0, end: 1.0).animate(
                    CurvedAnimation(
                      parent: _animationController,
                      curve: Interval(
                        (1 / widget.courses.length) * index,
                        1.0,
                        curve: Curves.fastOutSlowIn,
                      ),
                    ),
                  );
                  return Padding(
                    padding: EdgeInsets.only(right: 20.w),
                    child: CourseCard(
                      course: widget.courses[index],
                      animation: animation,
                      animationController: _animationController,
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        SizedBox(height: 16.h), // 底部间距
      ],
    );
  }
}
