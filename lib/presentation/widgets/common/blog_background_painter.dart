import 'package:flutter/material.dart';

class BlogBackgroundPainter extends CustomPainter {

  BlogBackgroundPainter();


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
    path.lineTo(size.width, 80);
    path.lineTo(0, 80);
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
  bool shouldRepaint(covariant BlogBackgroundPainter oldDelegate) => false;
}
