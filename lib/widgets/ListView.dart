// ------------------------------ Esraa Elnajjar  ---------------------------------



import 'package:flutter/material.dart';
import 'CustomCartItem.dart';

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