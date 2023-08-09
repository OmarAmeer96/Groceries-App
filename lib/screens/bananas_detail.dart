// ------------------------------ Mohamed Elsanteel ---------------------------------

import 'package:flutter/material.dart';

import '../widgets/customproductdetailscreen.dart';

class BananaDetail extends StatefulWidget {
  const BananaDetail({super.key});
  static const String id = "banana-detail-screen";

  @override
  State<BananaDetail> createState() => _BananaDetailState();
}

class _BananaDetailState extends State<BananaDetail> {
  @override
  Widget build(BuildContext context) {
    return const CustomProductDetail(
      backgroundImagePath: "assets/images/product-detail-background.png",
      productImagePath: "assets/images/big-apple.png",
      width: 410,
      height: 360,
      productTitle: "Natural Red Apple",
      greyedText: "1kg, Price",
      productDetail: "1",
      productDescription:
          "Apples Are Nutritious Apples May Be Good For Weight Loss\nApples May Be Good For Your Heart As Part Of A Healthful\nAnd Varied Diet",
      nutritionValue: "100gr",
    );
  }
}
