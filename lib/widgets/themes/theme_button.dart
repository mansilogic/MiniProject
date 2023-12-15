import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color buttonColor;
  final double fontSize;
  final String fontFamily;

  const CustomElevatedButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.buttonColor = Colors.green,
    this.fontSize = 18,
    this.fontFamily = 'ABeeZee',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(fontSize: fontSize),
        elevation: 3,
      ),
      child: Text(
        text,
        style: TextStyle(fontFamily: fontFamily),
      ),
    );
  }
}
