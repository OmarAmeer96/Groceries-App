import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/signup_cubit/signup_cubit.dart';
import '../widgets/custom_email_text_field.dart';
import '../widgets/custom_main_button.dart';
import '../widgets/custom_password_text_field.dart';
import '../helpers/is_validEmail_method.dart';
import '../helpers/show_snack_bar.dart';
import 'sign_in_screen.dart';

// ignore: must_be_immutable
class SignUpScreen extends StatelessWidget {
  static String id = "SignUpScreen";
  String? email;
  String? password;
  String? rePassword;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _rePasswordController = TextEditingController();
  final _form = GlobalKey<FormState>();
  bool _isLoading = false;

  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupLoading) {
          _isLoading = true;
        } else if (state is SignupSuccess) {
          _isLoading = false;
          Navigator.pop(context);
          showSnackBar(context, state.successMessage);
        } else if (state is SignupFailure) {
          showSnackBar(context, state.errorMessage);
          _isLoading = false;
        }
      },
      child: Scaffold(
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
                        height: 240,
                      ),
                      const Text(
                        "Sign Up",
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
                        child: BlocBuilder<SignupCubit, SignupState>(
                          builder: (context, state) {
                            return _isLoading
                                ? const CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      Color(0xff8d0000),
                                    ),
                                  )
                                : CustomMainButton(
                                    text: "Sign Up",
                                    onPressed: () async {
                                      if (_form.currentState!.validate()) {
                                        BlocProvider.of<SignupCubit>(context)
                                            .signUpUser(
                                          email: email!,
                                          password: password!,
                                        );
                                      }
                                    },
                                  );
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
      ),
    );
  }
}
