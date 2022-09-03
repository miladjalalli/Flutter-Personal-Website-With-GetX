import 'package:flutter/material.dart';

class ExperienceBackgroundPainterForMobile extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    // path.moveTo(0 , 0);
    // path.lineTo(size.width, 0);
    // path.lineTo(size.width, 64);
    // path.lineTo(0, 128);
    // path.moveTo(size.width, size.height);
    // path.lineTo(0, size.height);
    // path.lineTo(0, size.height - 64);
    // path.lineTo(size.width, size.height -128);
    // path.close();


    path.moveTo(0 , 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, 56);
    path.lineTo(0, 56);
    path.moveTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 4, size.height - 96, size.width / 2, size.height - 56);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height - 60, size.width, size.height - 130);
    path.lineTo(size.width, size.height -64);
    path.close();


    final paint = Paint()
      ..style = PaintingStyle.fill;
    var rect = Offset.zero & size;
    paint.shader = LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Colors.black54,
        Colors.black54,
        Colors.black54,
        Colors.black54,
      ],
    ).createShader(rect);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant ExperienceBackgroundPainterForMobile oldDelegate) => false;
}
