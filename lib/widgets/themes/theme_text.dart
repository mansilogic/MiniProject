import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final String fontFamily;

  const CustomText({
    Key? key,
    required this.text,
    required this.fontSize,
    this.fontWeight = FontWeight.w500,
    this.color = Colors.black87,
    this.fontFamily = 'ABeeZee',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        fontFamily: fontFamily,
      ),
    );
  }
}
