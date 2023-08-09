// ------------------------------ Mohamed Elsanteel ---------------------------------

import 'package:flutter/material.dart';

import '../widgets/customproductdetailscreen.dart';

class AppleDetail extends StatefulWidget {
  const AppleDetail({super.key});
  static const String id = "apple-product-detail-screen";

  @override
  State<AppleDetail> createState() => _AppleDetailState();
}

class _AppleDetailState extends State<AppleDetail> {
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
