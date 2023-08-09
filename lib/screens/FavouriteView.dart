// ------------------------------ Esraa Elnajjar ---------------------------------



import 'package:flutter/material.dart';
import 'package:online_groceries_app/widgets/CustomButton.dart';
import 'package:online_groceries_app/widgets/Header.dart';
import 'package:online_groceries_app/widgets/ListOfFavourite.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  static String id = 'FavouriteView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
