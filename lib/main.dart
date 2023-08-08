import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:online_groceries_app/firebase_options.dart';
import 'package:online_groceries_app/screens/apple_detail.dart';
import 'package:online_groceries_app/screens/bananas_detail.dart';
import 'package:online_groceries_app/screens/beef_bone_detail.dart';
import 'package:online_groceries_app/screens/bell_pepper_red_detail.dart';
import 'package:online_groceries_app/screens/beverages_screen.dart';
import 'package:online_groceries_app/screens/broiler_chicken.dart';
import 'package:online_groceries_app/screens/dairy_and_eggs.dart';
import 'package:online_groceries_app/screens/explore_screen.dart';
import 'package:online_groceries_app/screens/get_started_screen.dart';
import 'package:online_groceries_app/screens/ginger_detail.dart';
import 'package:online_groceries_app/screens/home_screen.dart';
import 'package:online_groceries_app/screens/onboarding_screen.dart';
import 'package:online_groceries_app/screens/sign_in_screen.dart';
import 'package:online_groceries_app/screens/sign_up_screen.dart';
import 'package:online_groceries_app/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Groceries App',
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        OnBoardingScreen.id: (context) => OnBoardingScreen(),
        GetStartedScreen.id: (context) => const GetStartedScreen(),
        SignInScreen.id: (context) => SignInScreen(),
        SignUpScreen.id: (context) => const SignUpScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        AppleDetail.id: (context) => const AppleDetail(),
        BananaDetail.id: (context) => const BananaDetail(),
        BeefBoneDetail.id: (context) => const BeefBoneDetail(),
        BellPepperRedDetail.id: (context) => const BellPepperRedDetail(),
        BroilerChickenDetail.id: (context) => const BroilerChickenDetail(),
        GingerDetail.id: (context) => const GingerDetail(),
        ExploreScreen.id: (context) => const ExploreScreen(),
        BeveragesScreen.id: (context) => const BeveragesScreen(),
        DairyAndEggsScreen.id: (context) => const DairyAndEggsScreen()
      },
      initialRoute: SplashScreen.id,
    );
  }
}
