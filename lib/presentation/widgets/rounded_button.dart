import 'package:flutter/material.dart';

class RoundedButton extends StatefulWidget {
  final String text;
  final Color color;
  final Color hoveredColor;
  final Color hoveredTextColor;
  final Function onTap;

  RoundedButton(this.text, this.color, this.hoveredColor, this.hoveredTextColor, this.onTap);

  @override
  _ResumeButtonState createState() => _ResumeButtonState();
}

class _ResumeButtonState extends State<RoundedButton> {
  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        widget.onTap();
      },
      onHover: (value) {
        if (mounted) {
          setState(() {
            hovered = value;
          });
        }
      },
      child: AnimatedContainer(
        height: 40,
        duration: kThemeAnimationDuration,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          vertical: 6,
          horizontal: 10,
        ),
        decoration: BoxDecoration(
            border: Border.all(color: !hovered ? widget.color : widget.hoveredColor, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: !hovered ? Colors.transparent : widget.hoveredColor),
        child: AnimatedDefaultTextStyle(
          duration: kThemeAnimationDuration,
          style: TextStyle(
            color: !hovered ? widget.color : widget.hoveredTextColor,
            fontSize: 17,
            fontWeight: FontWeight.w500,
            fontFamily: 'Ubuntu',
          ),
          child: Text(
            widget.text,
          ),
        ),
      ),
    );
  }
}
