import 'dart:convert';
import 'package:online_groceries_app/models/product_model.dart';
import 'package:http/http.dart' as http;

class AllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    http.Response resopnse =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));
    List<dynamic> data = jsonDecode(resopnse.body);

    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productsList;
  }
}
