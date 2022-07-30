import 'package:flutter/material.dart';

class HomeBackgroundPainter extends CustomPainter {
  Color color;

  HomeBackgroundPainter(this.color);


  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    path.moveTo(size.width * 0.4, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width * 0.6, size.height);
    path.close();

    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant HomeBackgroundPainter oldDelegate) => false;
}
