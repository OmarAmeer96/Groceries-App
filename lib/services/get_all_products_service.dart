import 'package:online_groceries_app/helpers/api_helper.dart';
import 'package:online_groceries_app/models/product_model.dart';

class AllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    try {
      List<dynamic> data = await Api().get(
        url: "https://fakestoreapi.com/products",
        token: null,
      );
      List<ProductModel> productsList = [];
      for (int i = 0; i < data.length; i++) {
        productsList.add(
          ProductModel.fromJson(data[i]),
        );
      }
      return productsList;
    } catch (error) {
      print("Error fetching products: $error");
      return [];
    }
  }
}
