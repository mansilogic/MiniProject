// ignore_for_file: unnecessary_const, prefer_const_constructors

import 'package:flutter/material.dart';


class CustomTextFormField extends StatelessWidget {
  final TextInputType keyboardType;
  final String labelText;
  final IconData prefixIcon;
  final bool obscureText;
  final String? Function(String?)? validator;

  const CustomTextFormField({
    Key? key,
    required this.keyboardType,
    required this.labelText,
    required this.prefixIcon,
    required this.obscureText,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        keyboardType: keyboardType,
        obscureText: obscureText,
        validator: validator,
        decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: Icon(prefixIcon),
          suffixIcon: obscureText ? Icon(Icons.remove_red_eye) : null,
          enabledBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
          ),
          contentPadding: const EdgeInsets.all(5),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
