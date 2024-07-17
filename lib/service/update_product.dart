import '../helper/api.dart';
import '../models/product_model.dart';

class UpdateProduct {
  Future<ProductModel> updateProduct({required String title ,required String description,required String category , required String image , required double price }) async{
    Map<String,dynamic> product=await Api().put(url: "https://fakestoreapi.com/products",
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