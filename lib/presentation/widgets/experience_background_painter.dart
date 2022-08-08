import 'package:flutter/material.dart';

class ExperienceBackgroundPainter extends CustomPainter {
  Color color;

  ExperienceBackgroundPainter(this.color);


  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    path.moveTo(0 , 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, 64);
    path.lineTo(0, 128);
    path.moveTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height - 64);
    path.lineTo(size.width, size.height -128);
    path.close();

    final paint = Paint()
      ..style = PaintingStyle.fill;
    var rect = Offset.zero & size;
    paint.shader = LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Colors.black45,
        Colors.black54,
        Colors.black87,
        Colors.black,
      ],
    ).createShader(rect);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant ExperienceBackgroundPainter oldDelegate) => false;
}
