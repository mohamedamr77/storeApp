import 'package:flutter/foundation.dart';
import 'package:storeamr/helper/api.dart';
import '../models/product_model.dart';

class AllProductService {
  Future<List<ProductModel>> getAllProducts() async {
    try {
      List<dynamic> data = await Api().get(url: "https://fakestoreapi.com/products");

      List<ProductModel> productsList = [];
      for (int i = 0; i < data.length; i++) {
        productsList.add(
          ProductModel.fromJson(data[i]),
        );
      }
      if (kDebugMode) {
        print("true");
      }
      return productsList;
    } catch (e) {
      throw Exception("Failed to load products: $e");
    }
  }
}
