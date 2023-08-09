import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'screens/FavouriteView.dart';
import 'screens/apple_detail.dart';
import 'screens/bananas_detail.dart';
import 'screens/beef_bone_detail.dart';
import 'screens/bell_pepper_red_detail.dart';
import 'screens/beverages_screen.dart';
import 'screens/broiler_chicken.dart';
import 'screens/dairy_and_eggs.dart';
import 'screens/explore_screen.dart';
import 'screens/get_started_screen.dart';
import 'screens/ginger_detail.dart';
import 'screens/home_screen.dart';
import 'screens/onboarding_screen.dart';
import 'screens/sign_in_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/splash_screen.dart';


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
        DairyAndEggsScreen.id: (context) => const DairyAndEggsScreen(),
        FavouriteView.id: (context) => const FavouriteView(),
      },
      initialRoute: SplashScreen.id,
    );
  }
}
