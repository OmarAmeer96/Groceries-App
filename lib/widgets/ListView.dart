// ------------------------------ Esraa Elnajjar  ---------------------------------



import 'package:flutter/material.dart';
import 'package:online_groceries_app/widgets/CustomCartItem.dart';

class ListVieww extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: ListView.builder(itemBuilder:(context, index) {
        return const CustomCartItem();
      }),
    );
  }

}