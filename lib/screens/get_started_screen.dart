// ------------------------------ Omar Ameer ---------------------------------

import 'package:flutter/material.dart';

import '../widgets/custom_main_button.dart';
import 'sign_in_screen.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  static String id = "GetstartedScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff542e14),
      body: _buildGetStartedScreenBody(context),
    );
  }

  Stack _buildGetStartedScreenBody(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            "assets/images/getStartedBG.png",
            fit: BoxFit.cover,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 460,
            ),
            Image.asset(
              "assets/images/Group 1.png",
              width: 49,
              height: 57,
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              "Welcome\nto our store",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Gilroy-Medium",
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.5,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Ger your groceries in as fast as one hour",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Gilroy-Medium",
                color: const Color(0xfffcfcfc).withOpacity(0.7),
                fontWeight: FontWeight.w400,
                fontSize: 16,
                letterSpacing: 0.4,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            CustomMainButton(
              text: "Get Started",
              onPressed: () {
                Navigator.pushNamed(context, SignInScreen.id);
              },
            ),
          ],
        ),
      ],
    );
  }
}
