import 'package:flutter/material.dart';

class CircularPercentIndicatorWidget extends StatelessWidget {
  final double percent;
  final double radius;
  final double lineWidth;
  final Color progressColor;
  final Color backgroundColor;
  final String centerText;
  final String bottomText;

  CircularPercentIndicatorWidget({
    required this.percent,
    required this.radius,
    required this.lineWidth,
    required this.progressColor,
    required this.backgroundColor,
    required this.centerText,
    required this.bottomText,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5), // Agrega padding izquierdo y derecho
        child: SizedBox(
          width: radius * 2,
          height: radius * 2 + 18, // Aumenta la altura para dar espacio al "bottom text"
          child: Stack(
            children: [
              Container(
                width: radius * 2,
                height: radius * 2,
                child: CircularProgressIndicator(
                  value: percent,
                  strokeWidth: lineWidth,
                  valueColor: AlwaysStoppedAnimation<Color>(progressColor),
                  backgroundColor: backgroundColor,
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 16), // Agrega top padding
                  child: Text(
                    centerText,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  bottomText,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
