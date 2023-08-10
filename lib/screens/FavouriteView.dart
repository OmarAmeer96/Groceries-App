// ------------------------------ Esraa Elnajjar ---------------------------------



import 'package:flutter/material.dart';
import 'package:online_groceries_app/screens/AccountView.dart';
import 'package:online_groceries_app/screens/MyCartView.dart';
import 'package:online_groceries_app/screens/explore_screen.dart';
import 'package:online_groceries_app/screens/home_screen.dart';
import 'package:online_groceries_app/widgets/custom_gnav_bar.dart';

import '../widgets/CustomButton.dart';
import '../widgets/Header.dart';
import '../widgets/ListOfFavourite.dart';


class FavouriteView extends StatefulWidget {
  const FavouriteView({super.key});

  static String id = 'FavouriteView';

  @override
  State<FavouriteView> createState() => _FavouriteViewState();
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
class _FavouriteViewState extends State<FavouriteView> {
  int currentIndex = 3;
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
        Header(
          text: "Favourite",
        ),
        const Expanded(child: ListOfFav()),
        CustomButton(
          text: "Add All To Cart",
        ),
      ],
    ));
  }
}
