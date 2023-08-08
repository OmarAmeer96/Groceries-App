import 'package:flutter/material.dart';
import 'package:online_groceries_app/views/widgets/CustomButton.dart';
import 'package:online_groceries_app/views/widgets/FavItem.dart';
import 'package:online_groceries_app/views/widgets/Header.dart';
import 'package:online_groceries_app/views/widgets/ListOfFavourite.dart';
class FavouriteView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
          children: [
           Header(text: "Favourite",),
            Expanded(child: ListOfFav()),
            CustomButton(text: "Add All To Cart",),
          ],
        )
    );
  }

}