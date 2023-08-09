// ------------------------------ Esraa Elnajjar  ---------------------------------



import 'package:flutter/material.dart';

import 'FavItem.dart';

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