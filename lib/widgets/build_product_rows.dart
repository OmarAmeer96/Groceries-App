import 'package:flutter/material.dart';
import 'package:online_groceries_app/models/product_model.dart';
import '../services/get_all_products_service.dart';
import 'custom_product_container.dart';

String searchQuery = '';
Widget buildProductRows({
  required String imagePath1,
  required String productName1,
  required String productDetails1,
  required String productPrice1,
  required String imagePath2,
  required String productName2,
  required String productDetails2,
  required String productPrice2,
}) {
  // final filteredProducts = [
  //   ProductContainer(
  //     imagePath: imagePath1,
  //     productName: productName1,
  //     productDetails: productDetails1,
  //     productPrice: productPrice1,
  //   ),
  //   ProductContainer(
  //     imagePath: imagePath2,
  //     productName: productName2,
  //     productDetails: productDetails2,
  //     productPrice: productPrice2,
  //   ),
  // ].where((product) {
  //   final lowerCaseQuery = searchQuery.toLowerCase();
  //   final lowerCaseProductName = product.productName.toLowerCase();
  //   return lowerCaseProductName.contains(lowerCaseQuery);
  // }).toList();

  return SizedBox(
    height: 249,
    child: FutureBuilder<List<ProductModel>>(
      future: AllProductsService().getAllProducts(),
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          List<ProductModel> products = snapshot.data!;
          return GridView.builder(
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ProductContainer(product: products[index]);
            },
          );
        } else {
          return Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Color(0xff8d0000),
              ),
            ),
          );
        }
      }),
    ),
  );
}
