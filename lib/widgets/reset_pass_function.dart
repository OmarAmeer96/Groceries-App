import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:online_groceries_app/widgets/show_snack_bar.dart';

Future <void> resetPassword(
  BuildContext context, {
  required TextEditingController emailController,
}) async {
  final String email = emailController.text.trim();

  if (email.isEmpty) {
    showSnackBar(context, "Please enter your email address.");
    return;
  }

  try {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    // ignore: use_build_context_synchronously
    showSnackBar(context, "Password reset link sent to your email.");
  } catch (e) {
    showSnackBar(context, "Failed to send reset link. Please try again.");
  }
}
