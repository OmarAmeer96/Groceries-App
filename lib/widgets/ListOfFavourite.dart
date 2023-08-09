// ------------------------------ Esraa Elnajjar  ---------------------------------



import 'package:flutter/material.dart';
import 'package:online_groceries_app/widgets/FavItem.dart';


class ListOfFav extends StatelessWidget{
  const ListOfFav({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: ListView.builder(itemBuilder:(context, index) {
        return FavItem();
      }),
    );
  }

}