import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomGNavBar extends StatefulWidget {
  final void Function() navigate1;
  final void Function() navigate2;
  final void Function() navigate3;
  final void Function() navigate4;
  final void Function() navigate5;
  final int currentIndex;

  const CustomGNavBar({
    required this.navigate1,
    required this.navigate2,
    required this.navigate3,
    required this.navigate4,
    required this.navigate5,
    required this.currentIndex,
    Key? key,
  }) : super(key: key);

  @override
  State<CustomGNavBar> createState() => _CustomGNavBarState();
}

class _CustomGNavBarState extends State<CustomGNavBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 16,
        ),
        child: GNav(
          color: Colors.black,
          backgroundColor: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: const Color(0xff8D070F),
          curve: Curves.bounceIn,
          iconSize: 25,
          gap: 8,
          onTabChange: (index) {
            if (index == 0) {
              widget.navigate1();
            } else if (index == 1) {
              widget.navigate2();
            } else if (index == 2) {
              widget.navigate3();
            } else if (index == 3) {
              widget.navigate4();
            } else if (index == 4) {
              widget.navigate5();
            }
          },
          padding: const EdgeInsets.all(10),
          tabs: [
            GButton(
              icon: Icons.shop_outlined,
              text: "Shop",
              onPressed: () {
                setState(() {
                  currentIndex = 0;
                });
              },
            ),
            GButton(
              icon: Icons.search,
              text: "Explore",
              onPressed: () {
                setState(() {
                  currentIndex = 1;
                });
              },
            ),
            GButton(
              icon: Icons.shopping_cart_checkout_outlined,
              text: "Cart",
              onPressed: () {
                setState(() {
                  currentIndex = 2;
                });
              },
            ),
            GButton(
              icon: Icons.favorite_border,
              text: "Favorite",
              onPressed: () {
                setState(() {
                  currentIndex = 3;
                });
              },
            ),
            GButton(
              icon: Icons.person,
              text: "Account",
              onPressed: () {
                setState(() {
                  currentIndex = 4;
                });
              },
            ),
          ],
          selectedIndex: widget.currentIndex,
        ),
      ),
    );
  }
}
