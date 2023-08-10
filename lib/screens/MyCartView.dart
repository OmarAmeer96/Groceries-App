// ------------------------------ Esraa Elnajjar ---------------------------------

import 'package:flutter/material.dart';
import 'package:online_groceries_app/screens/AccountView.dart';
import 'package:online_groceries_app/screens/FavouriteView.dart';
import 'package:online_groceries_app/screens/explore_screen.dart';
import 'package:online_groceries_app/screens/home_screen.dart';
import 'package:online_groceries_app/widgets/Header.dart';
import 'package:online_groceries_app/widgets/custom_main_button.dart';
import '../widgets/ListView.dart';
import '../widgets/custom_gnav_bar.dart';

class MyCartView extends StatefulWidget {
   MyCartView({super.key});
   static String id = 'MyCartView';


  @override
  State<MyCartView> createState() => _MyCartViewState();
}
void navigate1(BuildContext context) {
  Navigator.pushNamed(context, HomeScreen.id);
}

void navigate2(BuildContext context) {
  Navigator.pushNamed(context, ExploreScreen.id);
}

void navigate3(BuildContext context) {
  Navigator.pushNamed(context, MyCartView.id);
}

void navigate4(BuildContext context) {
  Navigator.pushNamed(context, FavouriteView.id);
}

void navigate5(BuildContext context) {
  Navigator.pushNamed(context, AccountView.id);
}
class _MyCartViewState extends State<MyCartView> {
  int currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomGNavBar(
        navigate1: () => navigate1(context),
        navigate2: () => navigate2(context),
        navigate3: () => navigate3(context),
        navigate4: () => navigate4(context),
        navigate5: () => navigate5(context),
        currentIndex: currentIndex,
      ),
      body: Column(
        children: [
          Header(text: "My Cart"),
          Expanded(child: ListVieww()),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: CustomMainButton(
              text: "Go To Checkout",
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
