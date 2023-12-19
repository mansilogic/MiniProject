import 'package:flutter/material.dart';
import 'package:miniproject1/utils/helper/value_validators.dart';

int currentIndex = 0;
late List<Widget> tabs;

List<Widget> newsList = [];

String? Function(String?)? emailValidator = Validators.validateEmail;
String? Function(String?)? passwordValidator = Validators.validatePassword;
String? Function(String?)? phoneValidator = Validators.validatePhone;
String? Function(String?)? nameValidator = Validators.validateName;
