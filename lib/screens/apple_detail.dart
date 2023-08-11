// ------------------------------ Mohamed Elsanteel ---------------------------------

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/customproductdetails_cubit/productdetail_cubit.dart';
import '../helpers/show_snack_bar.dart';
import '../widgets/custom_main_button.dart';
import 'MyCartView.dart';

class AppleDetail extends StatefulWidget {
  const AppleDetail({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
    required this.description,
  });
  static const String id = "apple-product-detail-screen";

  final String imagePath;
  final String title;
  final double price;
  final String description;

  @override
  State<AppleDetail> createState() => _AppleDetailState();
}

class _AppleDetailState extends State<AppleDetail> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProductdetailCubit>();
    return BlocListener<ProductdetailCubit, ProductdetailState>(
      listener: (context, state) {
        if (state is ProductdetailMainButtonLoadingState) {
          isLoading = true;
        } else if (state is ProductdetailMainButtonSuccessState) {
          isLoading = false;
          showSnackBar(context, state.successMessage);
          Navigator.pushNamed(context, MyCartView.id);
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    "assets/images/product-detail-background.png",
                    width: 410,
                    height: 360,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, left: 10),
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
                  Image.network(
                    widget.imagePath,
                    width: 500,
                    height: 340,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Row(
                  children: [
                    Container(
                      width: 320,
                      child: Text(
                        widget.title,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 24,
                            color: Color(0xff181725),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: Icon(
                        cubit.isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: cubit.isFavorite ? Colors.red : null,
                      ),
                      onPressed: () {
                        setState(() {
                          cubit.isFavorite = !cubit.isFavorite;
                        });
                      },
                    ),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: IconButton(
                      icon: const Icon(
                        Icons.remove,
                        color: Color(0xffB3B3B3),
                      ),
                      onPressed: cubit.decreaseQuantity,
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
                      color: Colors.white,
                    ),
                    child: BlocBuilder<ProductdetailCubit, ProductdetailState>(
                      builder: (context, state) {
                        return Text(
                          cubit.quantity.toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 20),
                  IconButton(
                    icon: const Icon(
                      Icons.add,
                      color: Color(0xFF8D070F),
                      size: 30,
                    ),
                    onPressed: cubit.increaseQuantity,
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 25),
                    child: Text(
                        "\$"
                        "${widget.price}",
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
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      width: 370,
                      child: Text(
                        widget.description,
                        overflow: TextOverflow.ellipsis,
                        style:
                            TextStyle(fontSize: 13, color: Color(0xff7C7C7C)),
                      ),
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
              BlocBuilder<ProductdetailCubit, ProductdetailState>(
                builder: (context, state) {
                  return isLoading
                      ? CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Color(0xff8d0000),
                          ),
                        )
                      : CustomMainButton(
                          text: "Add to basket",
                          onPressed: () async {
                            BlocProvider.of<ProductdetailCubit>(context)
                                .showLoading();
                          });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
