// ignore: file_names
import 'package:flutter/material.dart';
import 'package:online_groceries_app/widgets/CustomButton.dart';
import 'package:online_groceries_app/widgets/Header.dart';
import 'package:online_groceries_app/widgets/ListView.dart';

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