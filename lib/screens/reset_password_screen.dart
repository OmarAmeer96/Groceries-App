import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_groceries_app/cubits/reset_cubit/reset_cubit.dart';
import 'package:online_groceries_app/helpers/validation_helper.dart';
import '../helpers/show_snack_bar.dart';
import '../widgets/custom_email_text_field.dart';
import '../widgets/custom_main_button.dart';

// ignore: must_be_immutable
class ResetPasswordScreen extends StatelessWidget {
  static String id = "ResetPasswordScreen";
  final _form = GlobalKey<FormState>();
  String? email;

  final _emailController = TextEditingController();

  bool _isLoading = false;

  ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetCubit, ResetState>(
      listener: (context, state) {
        if (state is ResetLoading) {
          _isLoading = true;
        } else if (state is ResetEmpty) {
          _isLoading = false;
          showSnackBar(context, state.emptyMessage);
        } else if (state is ResetSuccess) {
          _isLoading = false;
          showSnackBar(context, state.successMessage);
          Navigator.pop(context);
        } else if (state is ResetFailure) {
          _isLoading = false;
          showSnackBar(context, state.errorMessage);
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
                          return validateEmail(value!);
                        },
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: BlocBuilder<ResetCubit, ResetState>(
                          builder: (context, state) {
                            return _isLoading
                                ? const CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      Color(0xff8d0000),
                                    ),
                                  )
                                : CustomMainButton(
                                    text: "Send Reset Email",
                                    onPressed: () async {
                                      if (_form.currentState!.validate()) {
                                        BlocProvider.of<ResetCubit>(context)
                                            .resetPassword(
                                          emailController: _emailController,
                                        );
                                      }
                                    },
                                  );
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
                                "Back to Sign In Screen?",
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
      ),
    );
  }
}
