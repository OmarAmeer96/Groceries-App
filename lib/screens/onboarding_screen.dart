import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/intro_app.dart';

import 'get_started_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  static String id = 'OnBoardingScreen';

  final List<Introduction> list = [
    Introduction(
      title: 'Discover Fresh Flavors',
      subTitle:
          "Embark on a culinary adventure and explore a vibrant array of fresh produce, handpicked for your culinary creations.",
      imageUrl: 'assets/images/onboarding1.png',
      titleTextStyle: const TextStyle(
        color: Color(0xff8D070F),
        fontSize: 31,
        fontFamily: 'Gilroy-Bold',
      ),
      subTitleTextStyle: TextStyle(
        color: Colors.black.withOpacity(0.7),
        fontSize: 20,
        fontFamily: 'Gilroy-Regular',
      ),
    ),
    Introduction(
      title: 'Seamless Shopping',
      subTitle:
          "Shop for groceries effortlessly with our user-friendly interface and enjoy doorstep delivery, making your cooking experience more convenient.",
      imageUrl: 'assets/images/onboarding2.png',
      titleTextStyle: const TextStyle(
        color: Color(0xff8D070F),
        fontSize: 31,
        fontFamily: 'Gilroy-Bold',
      ),
      subTitleTextStyle: TextStyle(
        color: Colors.black.withOpacity(0.7),
        fontSize: 20,
        fontFamily: 'Gilroy-Regular',
      ),
    ),
    Introduction(
      title: 'Culinary Inspiration',
      subTitle:
          "Unleash your inner chef with our curated recipes and cooking tips, enhancing your culinary skills and transforming every meal into a masterpiece.",
      imageUrl: 'assets/images/onboarding3.png',
      titleTextStyle: const TextStyle(
        color: Color(0xff8D070F),
        fontSize: 31,
        fontFamily: 'Gilroy-Bold',
      ),
      subTitleTextStyle: TextStyle(
        color: Colors.black.withOpacity(0.7),
        fontSize: 20,
        fontFamily: 'Gilroy-Regular',
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      backgroudColor: Colors.white,
      foregroundColor: const Color(0xff8D070F),
      introductionList: list,
      onTapSkipButton: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const GetStartedScreen(),
        ),
      ),
      skipTextStyle: const TextStyle(
        color: Color(0xff8D070F),
        fontSize: 18,
      ),
    );
  }
}
