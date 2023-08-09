import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_email_text_field.dart';
import '../widgets/custom_main_button.dart';
import '../widgets/custom_password_text_field.dart';
import '../widgets/show_snack_bar.dart';
import 'sign_in_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static String id = "SignUpScreen";

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String? email;
  String? password;
  String? rePassword;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _rePasswordController = TextEditingController();
  final _form = GlobalKey<FormState>();
  bool _isLoading = false;

  Future<void> _sendEmailVerification(User user) async {
    await user.sendEmailVerification();
    // ignore: use_build_context_synchronously
    showSnackBar(
      context,
      "A verification email has been sent to your email address.",
    );
    // ignore: use_build_context_synchronously
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffcfcfc),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Image.asset("assets/images/loginup.png"),
                const SizedBox(
                  height: 265,
                ),
                Image.asset("assets/images/log2Image.png"),
              ],
            ),
            Positioned(
              top: 83.25,
              left: 183.25,
              child: Image.asset("assets/images/logoLogin.png"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: _form,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 250,
                    ),
                    const Text(
                      "Sign In",
                      style: TextStyle(
                        color: Color(0xff181725),
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Gilroy-Medium",
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Enter your emails and password",
                      style: TextStyle(
                        color: Color(0xff7C7C7C),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Gilroy-Medium",
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    CustomEmailTextField(
                      controller: _emailController,
                      onChanged: (data) {
                        email = data;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter an email address.';
                        } else if (!isValidEmail(value)) {
                          return 'Please enter a valid email address.';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomPasswordTextField(
                      controller: _passwordController,
                      text: "PASSWORD",
                      onChanged: (data) {
                        password = data;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a password.';
                        } else if (value.length < 6) {
                          return 'Password must be at least 6 characters long.';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomPasswordTextField(
                      controller: _rePasswordController,
                      text: "RE-PASSWORD",
                      onChanged: (data) {
                        rePassword = data;
                      },
                      validator: (value) {
                        if (value != _passwordController.text) {
                          return 'Passwords do not match.';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "By continuing you agree to our ",
                                  style: TextStyle(
                                    color: Color(0xff7C7C7C),
                                    fontSize: 15,
                                    fontFamily: "Gilroy-Regular",
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.7,
                                  ),
                                ),
                                Text(
                                  "Terms of Service",
                                  style: TextStyle(
                                    color: Color(0xff8D070F),
                                    fontSize: 15,
                                    fontFamily: "Gilroy-Medium",
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.7,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "and ",
                                  style: TextStyle(
                                    color: Color(0xff7C7C7C),
                                    fontSize: 15,
                                    fontFamily: "Gilroy-Regular",
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.7,
                                  ),
                                ),
                                Text(
                                  "Privacy Policy.",
                                  style: TextStyle(
                                    color: Color(0xff8D070F),
                                    fontSize: 15,
                                    fontFamily: "Gilroy-Medium",
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.7,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: _isLoading
                          ? const CircularProgressIndicator()
                          : CustomMainButton(
                              text: "Sign Up",
                              onPressed: () async {
                                if (_form.currentState!.validate()) {
                                  setState(() {
                                    _isLoading = true;
                                  });
                                  try {
                                    UserCredential userCredential =
                                        await FirebaseAuth.instance
                                            .createUserWithEmailAndPassword(
                                      email: email!,
                                      password: password!,
                                    );
                                    await _sendEmailVerification(
                                        userCredential.user!);
                                    // ignore: use_build_context_synchronously
                                    showSnackBar(
                                      context,
                                      "Your account successfully created.\nPlease verify your email then Sign in.",
                                    );
                                    setState(() {
                                      _isLoading = false;
                                    });
                                  } on FirebaseAuthException catch (e) {
                                    if (e.code == 'weak-password') {
                                      showSnackBar(context,
                                          "The password provided is too weak.");
                                    } else if (e.code ==
                                        'email-already-in-use') {
                                      showSnackBar(context,
                                          "The account already exists for that email.");
                                    }
                                    setState(() {
                                      _isLoading = false;
                                    });
                                  } catch (e) {
                                    showSnackBar(context, e.toString());
                                    setState(() {
                                      _isLoading = false;
                                    });
                                  }
                                }
                              },
                            ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an account? ",
                            style: TextStyle(
                              color: Color(0xff181725),
                              fontSize: 15,
                              fontFamily: "Gilroy-Medium",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, SignInScreen.id);
                            },
                            child: const Text(
                              "Sign In",
                              style: TextStyle(
                                color: Color(0xff8D070F),
                                fontSize: 15,
                                decoration: TextDecoration.underline,
                                fontFamily: "Gilroy-Medium",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool isValidEmail(String email) {
    final emailRegex =
        RegExp(r'^[\w\.-]+@([a-zA-Z\d-]+\.)+[a-zA-Z]{2,4}(?=\s*$)');
    return emailRegex.hasMatch(email);
  }
}
