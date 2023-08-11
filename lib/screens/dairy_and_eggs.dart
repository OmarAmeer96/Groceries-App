// ------------------------------ Mohamed Elsanteel ---------------------------------

import 'package:flutter/material.dart';


class DairyAndEggsScreen extends StatefulWidget {
  const DairyAndEggsScreen({super.key});
  static const String id = "dairy_and_eggs_screen";
  @override
  State<DairyAndEggsScreen> createState() => _DairyAndEggsScreenState();
}

class _DairyAndEggsScreenState extends State<DairyAndEggsScreen> {
  // ignore: unused_field
  final String _searchQuery = '';
  List<Map<String, dynamic>> customContainers = [
    {
      'imagePath': 'assets/images/egg_chicken_red.png',
      'productName': 'Egg Chicken Red',
      'productDetails': '4pcs, Price',
      'productPrice': '1.99',
    },
    {
      'imagePath': 'assets/images/egg_chicken_white.png',
      'productName': 'Egg Chicken White',
      'productDetails': '180g Price',
      'productPrice': '1.50',
    },
    {
      'imagePath': 'assets/images/egg_pasta.png',
      'productName': 'Egg Pasta',
      'productDetails': '30gm, Price',
      'productPrice': '15.99',
    },
    {
      'imagePath': 'assets/images/egg-noodles_1.png',
      'productName': 'Egg Noodles',
      'productDetails': '2L, Price',
      'productPrice': '15.99',
    },
    {
      'imagePath': 'assets/images/mayonnaise_eggless.png',
      'productName': 'Mayonnaise Eggless',
      'productDetails': '355ml, Price',
      'productPrice': '7.99',
    },
    {
      'imagePath': 'assets/images/egg_noodles_2.png',
      'productName': 'Egg Noodles',
      'productDetails': '30gm, Price',
      'productPrice': '15.99',
    },
  ];

  @override
  Widget build(BuildContext context) {
    // List<Widget> customProductContainers = customContainers
    //     .where((container) => container['productName']
    //         .toString()
    //         .toLowerCase()
    //         .contains(_searchQuery.toLowerCase()))
    //     .map((container) => ProductContainer(
    //           imagePath: container['imagePath'],
    //           productName: container['productName'],
    //           productDetails: container['productDetails'],
    //           productPrice: container['productPrice'],
    //         ))
    //     .toList();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(
                          context); 
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 310,
                    height: 52,
                    decoration: BoxDecoration(
                      color: const Color(0xfff2f3f2).withOpacity(1),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
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
                ],
              ),
              SizedBox(
                height: 750,
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  // children: const [
                  //   ProductContainer(
                  //     imagePath: 'assets/images/egg_chicken_red.png',
                  //     productName: "Egg Chicken Red",
                  //     productDetails: "4pcs, Price",
                  //     productPrice: "1.99",
                  //   ),
                  //   ProductContainer(
                  //     imagePath: 'assets/images/egg_chicken_white.png',
                  //     productName: "Egg Chicken White",
                  //     productDetails: "180g Price",
                  //     productPrice: "1.50",
                  //   ),
                  //   // Add more ProductContainer widgets here
                  //   // For example:
                  //   ProductContainer(
                  //     imagePath: 'assets/images/egg_pasta.png',
                  //     productName: "Egg Pasta",
                  //     productDetails: "30gm, Price",
                  //     productPrice: "15.99",
                  //   ),
                  //   ProductContainer(
                  //     imagePath: 'assets/images/egg-noodles_1.png',
                  //     productName: "Egg Noodles",
                  //     productDetails: "2L, Price",
                  //     productPrice: "15.99",
                  //   ),
                  //   ProductContainer(
                  //     imagePath: 'assets/images/mayonnaise_eggless.png',
                  //     productName: "Mayonnaise Eggless",
                  //     productDetails: "355ml, Price",
                  //     productPrice: "7.99",
                  //   ),
                  //   ProductContainer(
                  //     imagePath: 'assets/images/egg_noodles_2.png',
                  //     productName: "Egg Noodles",
                  //     productDetails: "30gm, Price",
                  //     productPrice: "15.99",
                  //   ),
                  //   ProductContainer(
                  //     imagePath: 'assets/images/egg_chicken_red.png',
                  //     productName: "Egg Chicken Red",
                  //     productDetails: "4pcs, Price",
                  //     productPrice: "1.99",
                  //   ),
                  //   ProductContainer(
                  //     imagePath: 'assets/images/egg_chicken_white.png',
                  //     productName: "Egg Chicken White",
                  //     productDetails: "180g Price",
                  //     productPrice: "1.50",
                  //   ),
                  // ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
