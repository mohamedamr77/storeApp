import 'package:flutter/cupertino.dart';
import 'package:storeamr/helper/api.dart';
import 'package:storeamr/models/product_model.dart';

class AddProductService{
  Future<ProductModel> addProduct({required String title ,required String description,required String category , required String image , required double price }) async{
    Map<String,dynamic> product=await Api().post(url: "https://fakestoreapi.com/products", body: {
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