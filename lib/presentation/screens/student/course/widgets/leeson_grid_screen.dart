import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:edutec_hub/data/models/course/course.dart';

class LessonGridView extends StatelessWidget {
  final List<StudentLesson> lessons;
  final String subjectName;

  const LessonGridView({
    Key? key,
    required this.lessons,
    required this.subjectName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Text(
            subjectName,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Wrap(
            spacing: 16.w,
            runSpacing: 16.h,
            children: [
              for (int i = 0; i < lessons.length; i++)
                SizedBox(
                  width: (MediaQuery.of(context).size.width - 48.w) /
                      2, // 考慮左右padding和間距
                  child: LessonCard(
                    lesson: lessons[i],
                    animation: Tween<double>(begin: 0.0, end: 1.0).animate(
                      CurvedAnimation(
                        parent: AnimationController(
                          duration: const Duration(milliseconds: 500),
                          vsync: Scaffold.of(context),
                        )..forward(),
                        curve: Curves.easeOut,
                      ),
                    ),
                    animationController: AnimationController(
                      duration: const Duration(milliseconds: 500),
                      vsync: Scaffold.of(context),
                    )..forward(),
                  ),
                ),
            ],
          ),
        ),
        SizedBox(height: 20.h),
      ],
    );
  }
}

// 保持原有的 LessonCard 設計
class LessonCard extends StatelessWidget {
  final StudentLesson lesson;
  final Animation<double> animation;
  final AnimationController animationController;

  const LessonCard({
    Key? key,
    required this.lesson,
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
                            '0xFF${lesson.courseColor.trim().substring(1)}',
                          )).withOpacity(0.6),
                          offset: const Offset(1.1, 4.0),
                          blurRadius: 8.0,
                        ),
                      ],
                      gradient: LinearGradient(
                        colors: [
                          Color(int.parse(
                            '0xFF${lesson.courseColor.trim().substring(1)}',
                          )),
                          Color(int.parse(
                            '0xFF${lesson.courseColor.trim().substring(1)}',
                          )).withOpacity(0.8),
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
                            lesson.courseName,
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
                            DateFormat('MM/dd (E)', 'zh_TW')
                                .format(lesson.lessonDate),
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              letterSpacing: 0.2,
                              color: Colors.white.withOpacity(0.8),
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            '${lesson.startTime.substring(0, 5)} - ${lesson.endTime.substring(0, 5)}',
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
                      height: 84.w,
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
                      child: lesson.courseImage != null
                          ? Image.network(
                              lesson.courseImage!,
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
                                return _buildImagePlaceholder();
                              },
                            )
                          : _buildImagePlaceholder(),
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

  Widget _buildImagePlaceholder() {
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
  }
}

class ExpandableLessonGridView extends StatefulWidget {
  final List<StudentLesson> lessons;
  final String subjectName;

  const ExpandableLessonGridView({
    Key? key,
    required this.lessons,
    required this.subjectName,
  }) : super(key: key);

  @override
  State<ExpandableLessonGridView> createState() =>
      _ExpandableLessonGridViewState();
}

class _ExpandableLessonGridViewState extends State<ExpandableLessonGridView> {
  bool isExpanded = true;
  static const int collapsedCount = 2; // 收起時顯示的課程數量

  @override
  Widget build(BuildContext context) {
    final displayLessons = isExpanded
        ? widget.lessons
        : widget.lessons.take(collapsedCount).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 科目標題和展開/收起按鈕
        InkWell(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    widget.subjectName,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      isExpanded ? 'collapse'.tr() : 'expand'.tr(),
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(width: 4.w),
                    Icon(
                      isExpanded
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      color: Colors.grey[600],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // 課程網格
        AnimatedSize(
          duration: const Duration(milliseconds: 300),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Wrap(
              spacing: 16.w,
              runSpacing: 16.h,
              children: [
                for (final lesson in displayLessons)
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 48.w) / 2,
                    child: LessonCard(
                      lesson: lesson,
                      animation: Tween<double>(begin: 0.0, end: 1.0).animate(
                        CurvedAnimation(
                          parent: AnimationController(
                            duration: const Duration(milliseconds: 500),
                            vsync: Scaffold.of(context),
                          )..forward(),
                          curve: Curves.easeOut,
                        ),
                      ),
                      animationController: AnimationController(
                        duration: const Duration(milliseconds: 500),
                        vsync: Scaffold.of(context),
                      )..forward(),
                    ),
                  ),
                // 如果有更多課程且處於收起狀態，顯示展開提示
                if (!isExpanded && widget.lessons.length > collapsedCount)
                  SizedBox(
                    width: (MediaQuery.of(context).size.width - 48.w) / 2,
                    child:
                        _buildMoreCard(widget.lessons.length - collapsedCount),
                  ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20.h),
      ],
    );
  }

  Widget _buildMoreCard(int remainingCount) {
    return InkWell(
      onTap: () {
        setState(() {
          isExpanded = true;
        });
      },
      child: Container(
        height: 180.h, // 與其他卡片保持相同高度
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: Colors.grey[300]!),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add_circle_outline,
                size: 32.sp,
                color: Colors.grey[600],
              ),
              SizedBox(height: 8.h),
              Text(
                '+$remainingCount more'.tr(),
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
