import 'dart:convert';
import 'package:http/http.dart' as http;

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    http.Response resopnse = await http.get(
      Uri.parse("https://fakestoreapi.com/products/categories"),
    );
    if (resopnse.statusCode == 200) {
      List<dynamic> data = jsonDecode(resopnse.body);
      return data;
    } else {
      throw Exception(
          "There's a problem in the status code\nStatus code: ${resopnse.statusCode}");
    }
  }
}
