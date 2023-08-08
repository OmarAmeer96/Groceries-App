import 'package:flutter/material.dart';
import 'package:online_groceries_app/widgets/custom_main_button.dart';

class CustomProductDetail extends StatefulWidget {
  final String backgroundImagePath;
  final String productImagePath;
  final double width;
  final double height;
  final String productTitle;
  final String greyedText;
  final String productDetail;
  final String productDescription;
  final String nutritionValue;

  const CustomProductDetail({
    super.key,
    required this.backgroundImagePath,
    required this.productImagePath,
    required this.width,
    required this.height,
    required this.productTitle,
    required this.greyedText,
    required this.productDetail,
    required this.productDescription,
    required this.nutritionValue,
  });

  @override
  State<CustomProductDetail> createState() => _CustomProductDetailState();
}

class _CustomProductDetailState extends State<CustomProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Image.asset(widget.backgroundImagePath,
                      width: widget.width, height: widget.height),
                  Padding(
                    padding: EdgeInsets.only(top: 60, left: 10),
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          widget.productImagePath,
                          width: 329,
                          height: 199,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Row(
                  children: [
                    Text(
                      "Natural Red Apple",
                      style: TextStyle(
                          fontSize: 24,
                          color: Color(0xff181725),
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Icon(Icons.favorite_border),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.only(left: 19),
                child: Row(children: [
                  Text(
                    "1kg, Price",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff7C7C7C),
                        fontWeight: FontWeight.bold),
                  ),
                ]),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 19),
                child: Row(children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Icon(
                      Icons.maximize,
                      color: Color(0xffB3B3B3),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    alignment: Alignment.center,
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: const Color(0xffe8e8e8)),
                        color: Colors.white),
                    child: const Text(
                      "1",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Icon(
                    Icons.add,
                    color: Color(0xFF8D070F),
                    size: 30,
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(right: 25),
                    child: Text("\$4.99",
                        style: TextStyle(
                            color: Color(0xff181725),
                            fontWeight: FontWeight.bold,
                            fontSize: 24)),
                  )
                ]),
              ),
              const SizedBox(height: 20),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "Product Detail",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff181725),
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "Apples Are Nutritious Apples May Be Good For Weight Loss",
                      style: TextStyle(fontSize: 13, color: Color(0xff7C7C7C)),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "Apples May Be Good For Your Heart As Part Of A Healthful",
                      style: TextStyle(fontSize: 13, color: Color(0xff7C7C7C)),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "And Varied Diet",
                      style: TextStyle(fontSize: 13, color: Color(0xff7C7C7C)),
                    )
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    const Text(
                      "Nutritions",
                      style: TextStyle(
                          color: Color(0xff181725),
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                          alignment: Alignment.center,
                          width: 50,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xffebebeb)),
                          child: const Text("100gr")),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 17,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomMainButton(text: "Add to basket", onPressed: () {}),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
