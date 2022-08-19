import 'package:flutter/material.dart';

class HomeBackgroundPainterForMobile extends CustomPainter {
  Color color;


  HomeBackgroundPainterForMobile(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    path.moveTo(0, 0);
    path.lineTo(0, size.height * 0.4);
    path.lineTo(size.width, 0.5);
    path.lineTo(size.width, 0);
    path.close();

    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant HomeBackgroundPainterForMobile oldDelegate) => false;
}
