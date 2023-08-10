import 'package:flutter/material.dart';
import '../widgets/custom_email_text_field.dart';
import '../widgets/custom_main_button.dart';
import '../widgets/is_validEmail_method.dart';
import '../helpers/reset_pass_function.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  static String id = "ResetPasswordScreen";

  @override
  // ignore: library_private_types_in_public_api
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _form = GlobalKey<FormState>();
  String? email;

  final _emailController = TextEditingController();

  bool _isLoading = false;

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
                const SizedBox(height: 265),
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
                    const SizedBox(height: 270),
                    const Text(
                      "Forgot Password",
                      style: TextStyle(
                        color: Color(0xff181725),
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Gilroy-Medium",
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Enter your email",
                      style: TextStyle(
                        color: Color(0xff7C7C7C),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Gilroy-Medium",
                      ),
                    ),
                    const SizedBox(height: 60),
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
                    const SizedBox(height: 20),
                    Center(
                      child: _isLoading
                          ? const CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Color(0xff8d0000),
                              ),
                            )
                          : CustomMainButton(
                              text: "Send Reset Email",
                              onPressed: () async {
                                if (_form.currentState!.validate()) {
                                  setState(
                                    () {
                                      _isLoading = true;
                                    },
                                  );
                                  try {
                                    await resetPassword(
                                      context,
                                      emailController: _emailController,
                                    );
                                  } finally {
                                    setState(
                                      () {
                                        _isLoading = false; // End loading state
                                      },
                                    );
                                  }
                                }
                              },
                            ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              "Back to Sign In screen?",
                              style: TextStyle(
                                color: Color(0xff8D070F),
                                fontSize: 16,
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
}
