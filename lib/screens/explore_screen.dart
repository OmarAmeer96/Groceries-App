// ------------------------------ Mohamed Elsanteel ---------------------------------

import 'package:flutter/material.dart';
import 'package:online_groceries_app/screens/home_screen.dart';
import 'package:online_groceries_app/widgets/custom_gnav_bar.dart';
import 'beverages_screen.dart';
import 'dairy_and_eggs.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  static const String id = "explore_screen";

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

void navigate1(BuildContext context) {
  Navigator.pushNamed(context, HomeScreen.id);
}

void navigate2(BuildContext context) {
  Navigator.pushNamed(context, ExploreScreen.id);
}

void navigate3(BuildContext context) {}

void navigate4(BuildContext context) {}

void navigate5(BuildContext context) {}

class _ExploreScreenState extends State<ExploreScreen> {
  int currentIndex = 1;
  String _searchQuery = ''; // Variable to store the search query
  List<Map<String, dynamic>> customContainers = [
    {
      'bgColor': const Color(0xff53B175),
      'imagePath': "assets/images/fresh_fruits_and_vegetable.png",
      'text': "Fresh Fruits \n& Vegetables",
    },
    // Add more custom containers here if needed
  ];
  @override
  Widget build(BuildContext context) {
    List<Widget> filteredContainers = customContainers
        .where((container) => container['text']
            .toString()
            .toLowerCase()
            .contains(_searchQuery.toLowerCase()))
        .map((container) => customContainer(
              bgColor: container['bgColor'],
              imagePath: container['imagePath'],
              text: container['text'],
            ))
        .toList();

    return Scaffold(
      bottomNavigationBar: CustomGNavBar(
        navigate1: () => navigate1(context),
        navigate2: () => navigate2(context),
        navigate3: () => navigate3(context),
        navigate4: () => navigate4(context),
        navigate5: () => navigate5(context),
        currentIndex: currentIndex,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 70,
                ),
                Text(
                  "Find Products",
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Gilroy-Bold',
                    fontSize: 20,
                    color: Color(0xff181725),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 364,
              height: 52,
              decoration: BoxDecoration(
                color: const Color(0xfff2f3f2).withOpacity(1),
                borderRadius: BorderRadius.circular(18),
              ),
              child: TextField(
                onChanged: (query) {
                  setState(() {
                    _searchQuery = query;
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
                    fontFamily: 'Gilroy',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 15),
                children: [
                  customContainer(
                    bgColor: const Color(0xff53B175),
                    imagePath: "assets/images/fresh_fruits_and_vegetable.png",
                    text: "Fresh Fruits \n& Vegetables",
                  ),
                  customContainer(
                    bgColor: const Color(0xffF8A44C),
                    imagePath: "assets/images/cooking_oil_and_ghee.png",
                    text: "Cooking Oil \n& Ghee",
                  ),
                  customContainer(
                    bgColor: const Color(0xffF7A593),
                    imagePath: "assets/images/meat_and_fish.png",
                    text: "Meat & Fish",
                  ),
                  customContainer(
                    bgColor: const Color(0xffD3B0E0),
                    imagePath: "assets/images/bakery_and_snacks.png",
                    text: "Bakery & Snacks",
                  ),
                  customContainer(
                    bgColor: const Color(0xffFDE598),
                    imagePath: "assets/images/dairy_and_eggs.png",
                    text: "Dairy & Eggs",
                    routeName:
                        DairyAndEggsScreen.id, // Navigate to DairyAndEggsScreen
                  ),
                  customContainer(
                    bgColor: const Color(0xffB7DFF5),
                    imagePath: "assets/images/beverages.png",
                    text: "Beverages",
                    routeName:
                        BeveragesScreen.id, // Navigate to BeveragesScreen
                  ),
                  customContainer(
                    bgColor: const Color(0xff836AF6),
                    imagePath: "assets/images/cooking_oil_and_ghee.png",
                    text: "Cooking Oil \n& Ghee",
                  ),
                  customContainer(
                    bgColor: const Color(0xffD73B77),
                    imagePath: "assets/images/cooking_oil_and_ghee.png",
                    text: "Cooking Oil \n& Ghee",
                  ),
                  // Add more custom containers here if needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Method to create a custom container
  Widget customContainer({
    required Color bgColor,
    required String imagePath,
    required String text,
    String? routeName, // Make the routeName parameter optional
  }) {
    return routeName != null
        ? GestureDetector(
            // Wrap with GestureDetector conditionally
            onTap: () {
              Navigator.pushNamed(
                  context, routeName); // Navigate to the specified route
            },
            child: buildContainer(bgColor, imagePath, text),
          )
        : buildContainer(bgColor, imagePath,
            text); // If routeName is null, return the container directly
  }

  Widget buildContainer(Color bgColor, String imagePath, String text) {
    return Container(
      width: 174.5,
      height: 189.11,
      decoration: BoxDecoration(
        color: bgColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset(
              imagePath,
              width: 111.38,
              height: 74.9,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              text,
              style: const TextStyle(
                color: Color(0xff181725),
                fontFamily: 'Gilroy-Bold',
                fontSize: 16,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
