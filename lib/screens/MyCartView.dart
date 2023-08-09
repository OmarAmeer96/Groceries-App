// ------------------------------ Esraa Elnajjar ---------------------------------

import 'package:flutter/material.dart';
import 'package:online_groceries_app/widgets/custom_main_button.dart';
import '../widgets/ListView.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  static String id = 'MyCartView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
                const Text(
                  "My Cart",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Gilroy-Bold",
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: ListVieww()),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: CustomMainButton(
              text: "Go To Checkout",
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
