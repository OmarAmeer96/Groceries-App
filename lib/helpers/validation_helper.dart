import 'package:flutter/material.dart';

import 'is_validEmail_method.dart';

String? validateEmail(String value) {
  // ignore: unnecessary_null_comparison
  if (value == null || value.isEmpty) {
    return 'Please enter an email address.';
  } else if (!isValidEmail(value)) {
    return 'Please enter a valid email address.';
  }
  return null;
}

String? validatePassword(String value) {
  // ignore: unnecessary_null_comparison
  if (value == null || value.isEmpty) {
    return 'Please enter a password.';
  } else if (value.length < 6) {
    return 'Password must be at least 6 characters long.';
  }
  return null;
}

String? validateRePassword(
    String value, TextEditingController passwordController) {
  if (value != passwordController.text) {
    return 'Passwords do not match.';
  }
  return null;
}
