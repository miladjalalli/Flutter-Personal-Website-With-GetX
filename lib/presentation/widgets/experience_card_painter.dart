import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miladjalali_ir/presentation/widgets/curve_line_painter.dart';
import 'package:path_drawing/path_drawing.dart';

class ExperienceCardPainter extends CustomPainter {
  DrawPosition drawPosition;


  ExperienceCardPainter(this.drawPosition);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();

    paint.color = Colors.black87;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 3;

    var point1;
    var point2;
    var point3;
    var point4;
    var point5;
    var point6;
    if(drawPosition==DrawPosition.top){
      point1 = Offset(0, 3);
      point2 = Offset(size.width ,3);
      point3 = Offset(size.width, size.height);
      point4 = Offset(size.width/ 5 , size.height);
      point5 = Offset(0, size.height  * 8 / 10);
      point6 = Offset(0, 1.5);
    }else{
      point1 = Offset(size.width, 0);
      point2 = Offset(size.width ,size.height -3);
      point3 = Offset(0, size.height -3);
      point4 = Offset(0, size.height / 5);
      point5 = Offset(size.width / 5, 3);
      point6 = Offset(size.width, 1.5);
    }

    var path = Path();
    path.moveTo(point1.dx, point1.dy);
    path.lineTo(point1.dx, point1.dy);
    path.lineTo(point2.dx, point2.dy);
    path.lineTo(point3.dx, point3.dy);
    path.lineTo(point4.dx, point4.dy);
    path.arcToPoint(point5,radius: Radius.circular(48),clockwise: false);
    path.lineTo(point6.dx, point6.dy);

    canvas.drawPath(
      dashPath(
        path,
        dashArray: CircularIntervalList<double>(<double>[10.0, 1]),
      ),
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}