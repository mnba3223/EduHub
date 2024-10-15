import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FixedHeightSmoothTopBar extends StatelessWidget {
  final Widget child;
  final double height;
  final double ellipticalRadius;

  FixedHeightSmoothTopBar({
    super.key,
    required this.child,
    this.height = 200, // 使用原始值
    this.ellipticalRadius = 60, // 使用原始值
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: Stack(
        children: [
          // 背景
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF1E3A5F), Color(0xFF1E3A5F)],
              ),
            ),
          ),
          // 带椭圆形边缘的前景
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white.withOpacity(0), Colors.white],
                  stops: [0.0, 0.0], // 调整这些值以改变渐变效果
                ).createShader(bounds);
              },
              blendMode: BlendMode.dstIn,
              child: Container(
                height: ellipticalRadius * 0.9.h, // 增加高度以容纳渐变
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.elliptical(
                      MediaQuery.of(context).size.width,
                      ellipticalRadius,
                    ),
                  ),
                  color: Colors.white,
                ),
              ),
            ),
          ),
          // 内容
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: ellipticalRadius / 2, // 调整内容区域，避免被椭圆遮挡
            child: child,
          ),
        ],
      ),
    );
  }
}
