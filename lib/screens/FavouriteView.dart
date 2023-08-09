// ------------------------------ Esraa Elnajjar ---------------------------------



import 'package:flutter/material.dart';

import '../widgets/CustomButton.dart';
import '../widgets/Header.dart';
import '../widgets/ListOfFavourite.dart';


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
