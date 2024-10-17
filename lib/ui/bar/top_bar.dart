import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

class FixedHeightSmoothTopBarV2 extends StatelessWidget {
  final Widget child;
  final double height;
  final Color startColor;
  final Color endColor;
  final Color accentColor;

  const FixedHeightSmoothTopBarV2({
    Key? key,
    required this.child,
    this.height = 200,
    this.startColor = const Color(0xFF304F6B),
    this.endColor = const Color(0xFF1E3A53),
    this.accentColor = const Color(0xFFC4A35A),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: Stack(
        children: [
          SvgPicture.string(
            _generateSvgString(),
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned.fill(child: child),
        ],
      ),
    );
  }

  String _generateSvgString() {
    return '''
    <svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1080 450">
      <defs>
        <linearGradient id="linear-gradient" x1="540" y1="-42.26" x2="540" y2="375.6" gradientUnits="userSpaceOnUse">
          <stop offset="0" stop-color="${_colorToHex(startColor)}"/>
          <stop offset="1" stop-color="${_colorToHex(endColor)}"/>
        </linearGradient>
      </defs>
      <path fill="${_colorToHex(accentColor)}" d="m0,0v450c0-18.64,241.77-33.75,540-33.75s540,15.11,540,33.75V0H0Z"/>
      <path fill="url(#linear-gradient)" d="m0,0v434.48c0-18.64,241.77-33.75,540-33.75s540,15.11,540,33.75V0H0Z"/>
    </svg>
    ''';
  }

  String _colorToHex(Color color) {
    return '#${color.value.toRadixString(16).padLeft(8, '0').substring(2)}';
  }
}
