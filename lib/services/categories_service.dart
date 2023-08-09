import '../models/product_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class CategoriesService{
  Future<List<ProductModel>> getAllProducts() async {
    http.Response resopnse =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));
    List<dynamic> data = jsonDecode(resopnse.body);

}