import '../helper/api.dart';
import '../models/product_model.dart';

class UpdateProductService {
  Future<ProductModel> updateProduct({
    required int id,
    required String title,
    required String description,
    required String category,
    required String image,
    required String price,
  }) async {
    print("id =$id");

    Map<String, dynamic> product = await Api().put(
      url: "https://fakestoreapi.com/products/$id",
      body: {
        "title": title,
        "description": description,
        "category": category,
        "image": image,
        "price": price,
      },
    );
    return ProductModel.fromJson(product);
  }
}
