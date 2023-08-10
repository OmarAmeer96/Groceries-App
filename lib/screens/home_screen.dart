// ------------------------------ Mohamed Elsanteel ---------------------------------

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_groceries_app/screens/AccountView.dart';
import '../widgets/custom_gnav_bar.dart';
import '../widgets/build_row.dart';
import '../widgets/build_product_rows.dart';
import '../widgets/build_category_container.dart';
import 'FavouriteView.dart';
import 'MyCartView.dart';
import 'explore_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String id = "home-screen";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

void navigate1(BuildContext context) {
  Navigator.pushNamed(context, HomeScreen.id);
}

void navigate2(BuildContext context) {
  Navigator.pushNamed(context, ExploreScreen.id);
}

void navigate3(BuildContext context) {
  Navigator.pushNamed(context, MyCartView.id);
}

void navigate4(BuildContext context) {
  Navigator.pushNamed(context, FavouriteView.id);
}

void navigate5(BuildContext context) {
  Navigator.pushNamed(context, AccountView.id);
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomGNavBar(
        navigate1: () => navigate1(context),
        navigate2: () => navigate2(context),
        navigate3: () => navigate3(context),
        navigate4: () => navigate4(context),
        navigate5: () => navigate5(context),
        currentIndex: currentIndex,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 60,
            left: 20,
            right: 20,
            bottom: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/orange-carrot.png'),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(CupertinoIcons.location_solid),
                  SizedBox(width: 10),
                  Text(
                    "Tanta, Egypt",
                    style: TextStyle(
                        color: Color(0xff4C4F4D),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Container(
                width: 364,
                height: 52,
                decoration: BoxDecoration(
                  color: const Color(0xfff2f3f2).withOpacity(1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  onChanged: (query) {
                    setState(() {
                      searchQuery = query;
                    });
                  },
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xff181B19),
                    ),
                    hintText: "Search Store",
                    hintStyle: TextStyle(
                      color: Color(0xff7C7C7C),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Image.asset("assets/images/banner.png"),
              const SizedBox(height: 16),
              buildRow(boldText: "Exclusive Offer"),
              const SizedBox(height: 10),
              SizedBox(
                height: 185,
                child: buildProductRows(
                    imagePath1: "assets/images/banana.png",
                    productName1: "Organic Bananas",
                    productDetails1: "7pcs, Priceg",
                    productPrice1: "4.99",
                    imagePath2: "assets/images/apple.png",
                    productName2: "Red Apple",
                    productDetails2: "1kg, Priceg",
                    productPrice2: "4.99"),
              ),
              const SizedBox(height: 15),
              buildRow(boldText: "Best Selling"),
              const SizedBox(height: 15),
              SizedBox(
                height: 185,
                child: buildProductRows(
                    imagePath1: "assets/images/red-pepper.png",
                    productName1: "Bell Pepper Red",
                    productDetails1: "1kg,, Priceg",
                    productPrice1: "4.99",
                    imagePath2: "assets/images/ginger.png",
                    productName2: "Ginger",
                    productDetails2: "250gm, Priceg",
                    productPrice2: "4.99"),
              ),
              const SizedBox(height: 15),
              buildRow(boldText: "Groceries"),
              const SizedBox(height: 15),
              SizedBox(
                height: 105, // Adjust the height as needed
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return buildCategoryContainer(
                        categoryColor1: const Color(0xfffef2e4),
                        categoryImage1: "assets/images/pulses.png",
                        categoryName1: "Pulses",
                        categoryColor2: const Color(0xfffef2e4),
                        categoryImage2: "assets/images/rices.png",
                        categoryName2: "rices");
                  },
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 185,
                child: buildProductRows(
                    imagePath1: "assets/images/meat.png",
                    productName1: "Beef Bone",
                    productDetails1: "1kg, Priceg",
                    productPrice1: "4.99",
                    imagePath2: "assets/images/chicken.png",
                    productName2: "Broiler Chicken",
                    productDetails2: "1kg, Priceg",
                    productPrice2: "4.99"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
