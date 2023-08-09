// ------------------------------ Esraa Elnajjar ---------------------------------



import 'package:flutter/material.dart';

import '../widgets/CustomButton.dart';
import '../widgets/Header.dart';
import '../widgets/ListView.dart';


class MyCartView extends StatelessWidget{
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Header(text: "My Cart",),
          Expanded(child: ListVieww()),
          CustomButton(text: "Go To Checkout",),
        ],
      )
    );
  }

}