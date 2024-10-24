import 'package:flutter/material.dart';

class DashedBorderPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double gap;

  DashedBorderPainter({
    this.color = Colors.grey,
    this.strokeWidth = 1.0,
    this.gap = 5.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint dashedPaint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    double currentX = 0;
    double currentY = 0;
    final double width = size.width;
    final double height = size.height;

    // 上邊
    while (currentX < width) {
      canvas.drawLine(
        Offset(currentX, 0),
        Offset(currentX + gap, 0),
        dashedPaint,
      );
      currentX += gap * 2;
    }

    // 右邊
    while (currentY < height) {
      canvas.drawLine(
        Offset(width, currentY),
        Offset(width, currentY + gap),
        dashedPaint,
      );
      currentY += gap * 2;
    }

    // 下邊
    currentX = 0;
    while (currentX < width) {
      canvas.drawLine(
        Offset(currentX, height),
        Offset(currentX + gap, height),
        dashedPaint,
      );
      currentX += gap * 2;
    }

    // 左邊
    currentY = 0;
    while (currentY < height) {
      canvas.drawLine(
        Offset(0, currentY),
        Offset(0, currentY + gap),
        dashedPaint,
      );
      currentY += gap * 2;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
