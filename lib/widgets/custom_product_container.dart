// ------------------------------ Mohamed Elsanteel  ---------------------------------



import 'package:flutter/material.dart';
import '../screens/apple_detail.dart';
import '../screens/bananas_detail.dart';
import '../screens/beef_bone_detail.dart';
import '../screens/bell_pepper_red_detail.dart';
import '../screens/broiler_chicken.dart';
import '../screens/ginger_detail.dart';


class ProductContainer extends StatelessWidget {
  final String imagePath;
  final String productName;
  final String productDetails;
  final String productPrice;

  const ProductContainer({
    super.key,
    required this.imagePath,
    required this.productName,
    required this.productDetails,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (productName == "Red Apple") {
          Navigator.pushNamed(context, AppleDetail.id);
        } else if (productName == "Organic Bananas") {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const BananaDetail(),
            ),
          );
        } else if (productName == "Bell Pepper Red") {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const BellPepperRedDetail(),
            ),
          );
        } else if (productName == "Ginger") {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const GingerDetail(),
            ),
          );
        } else if (productName == "Beef Bone") {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const BeefBoneDetail(),
            ),
          );
        } else if (productName == "Broiler Chicken") {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const BroilerChickenDetail(),
            ),
          );
        }
      },
      child: Container(
        width: 170,
        height: 260,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color(0xffE2E2E2)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(11),
          child: Column(
            children: [
              Image.asset(
                imagePath,
                width: 55,
                height: 55,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xff181725),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    productDetails,
                    style: const TextStyle(color: Color(0xff7C7C7C)),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Text("\$$productPrice"),
                  const Spacer(),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xFF8D070F),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: GestureDetector(
                        onTap: () {},
                        child: const Icon(Icons.add, color: Colors.white)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
