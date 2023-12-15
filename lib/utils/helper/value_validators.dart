class Validators {
  static String? validateEmail(String? value) {
    if (value == null ||
        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value)) {
      return 'Enter a valid email!';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value!.isEmpty || value.length < 3) {
      return 'Password must be at least 3 characters';
    }
    return null;
  }

  static String? validateName(String? value) {
    if (value!.isEmpty || !RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
      return 'Enter Correct Name';
    }
    return null;
  }

  static String? validatePhone(String? value) {
    if (value!.isEmpty || value.length != 10) {
      return 'Please enter a valid phone number';
    }
    return null;
  }
}
