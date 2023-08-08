import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        elevation: 5,
        showCloseIcon: true,
        closeIconColor: Colors.white,
        content: Text(text),
      ),
    );
  }