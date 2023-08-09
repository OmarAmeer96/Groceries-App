import '../models/product_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class CategoriesService {
  Future<List<ProductModel>> getCategoriesProducts(
      {required String categoryName}) async {
    http.Response resopnse = await http.get(
      Uri.parse("https://fakestoreapi.com/products/category/$categoryName"),
    );
    if (resopnse.statusCode == 200) {
      List<dynamic> data = jsonDecode(resopnse.body);
      List<ProductModel> productsList = [];
      for (int i = 0; i < data.length; i++) {
        productsList.add(
          ProductModel.fromJson(data[i]),
        );
      }
      return productsList;
    } else {
      throw Exception(
          "There's a problem in the status code\nStatus code: ${resopnse.statusCode}");
    }
  }
}
