// ------------------------------ Mohamed Elsanteel ---------------------------------




import 'package:flutter/material.dart';
import 'package:online_groceries_app/widgets/custom_product_container.dart';

import '../widgets/custom_gnav_bar.dart';
import 'explore_screen.dart';
import 'home_screen.dart';

class BeveragesScreen extends StatefulWidget {
  const BeveragesScreen({super.key});
  static const String id = "beverages_screen";

  @override
  State<BeveragesScreen> createState() => _BeveragesScreenState();
}

void navigate1(BuildContext context) {
  Navigator.pushNamed(context, HomeScreen.id);
}

void navigate2(BuildContext context) {
  Navigator.pushNamed(context, ExploreScreen.id);
}

void navigate3(BuildContext context) {
  Navigator.pushNamed(context, HomeScreen.id);
}

void navigate4(BuildContext context) {
  Navigator.pushNamed(context, HomeScreen.id);
}

void navigate5(BuildContext context) {
  Navigator.pushNamed(context, HomeScreen.id);
}

class _BeveragesScreenState extends State<BeveragesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomGNavBar(
        currentIndex: 1,
        navigate1: () => navigate1(context),
        navigate2: () => navigate2(context),
        navigate3: () => navigate3(context),
        navigate4: () => navigate4(context),
        navigate5: () => navigate5(context),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 16,
          right: 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(
                          context); // Navigate back to the previous screen
                    },
                  ),
                  const SizedBox(width: 10), // Adjust spacing as needed
                  const Text(
                    "Beverages",
                    style: TextStyle(
                      fontFamily: "Gilroy-Bold",
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 700,
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  children: const [
                    ProductContainer(
                      imagePath: 'assets/images/diet_coke.png',
                      productName: "Diet Coke",
                      productDetails: "355ml, Price",
                      productPrice: "1.99",
                    ),
                    ProductContainer(
                      imagePath: 'assets/images/sprite_can.png',
                      productName: "Sprite Can",
                      productDetails: "325ml, Price",
                      productPrice: "1.50",
                    ),
                    // Add more ProductContainer widgets here
                    // For example:
                    ProductContainer(
                      imagePath: 'assets/images/apple_and_grape_juice.png',
                      productName: "Apple & Grape Juice",
                      productDetails: "2L, Price",
                      productPrice: "15.99",
                    ),
                    ProductContainer(
                      imagePath: 'assets/images/orange_juice.png',
                      productName: "Orange Juice",
                      productDetails: "2L, Price",
                      productPrice: "15.99",
                    ),
                    ProductContainer(
                      imagePath: 'assets/images/coca_cola_can.png',
                      productName: "Coca Cola Can",
                      productDetails: "325ml, Price",
                      productPrice: "4.99",
                    ),
                    ProductContainer(
                      imagePath: 'assets/images/pepsi_can.png',
                      productName: "Pepsi Can",
                      productDetails: "330ml, Price",
                      productPrice: "4.99",
                    ),
                    ProductContainer(
                      imagePath: 'assets/images/diet_coke.png',
                      productName: "Diet Coke",
                      productDetails: "355ml, Price",
                      productPrice: "1.99",
                    ),
                    ProductContainer(
                      imagePath: 'assets/images/sprite_can.png',
                      productName: "Sprite Can",
                      productDetails: "325ml, Price",
                      productPrice: "1.50",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
