import 'dart:math';

import 'package:flutter/material.dart';

class HeroImage extends StatelessWidget {
  final Color borderColor;
  final Color backgroundColor;

  const HeroImage({
    this.borderColor = Colors.white,
    this.backgroundColor = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(color: borderColor, width: 2),
        image: DecorationImage(
          image: AssetImage('assets/images/me.png'),
        ),
      ),
    );
  }
}