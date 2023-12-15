import 'package:flutter/material.dart';
import 'package:miniproject1/utils/helper/value_validators.dart';

List<Widget> newsList = [];
List<String> browserImages = [
  'assets/images/img_bigone.jpg',
  'assets/images/img_browser.jpg',
  'assets/images/img_landscape.jpg'
];

final List<String> imagePaths = [
  'assets/images/img_landscape.jpg',
  'assets/images/img_bigone.jpg',
  'assets/images/img_green.jpg',
  'assets/images/img_browser.jpg'
];
int currentIndex = 0;


String? Function(String?)? emailValidator = Validators.validateEmail;
String? Function(String?)? passwordValidator = Validators.validatePassword;
String? Function(String?)? phoneValidator = Validators.validatePhone;
String? Function(String?)? nameValidator = Validators.validateName;
