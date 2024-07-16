import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:storeamr/models/product_model.dart';

class ProductByCategory{
  Future<List<ProductModel>> getProductByCategory ({required String category}) async{
      http.Response response=await http.get(Uri.parse("https://fakestoreapi.com/products/category/ $category"));
      if(response.statusCode==200){
        List<dynamic> data=jsonDecode(response.body);
        List<ProductModel> productsList=[];
        for(int i=0; i<data.length; i++){
          productsList.add(
            ProductModel.fromJson(data[i])
          );
        }
        return productsList;
      }else{
        throw Exception("Failed to load data");
      }
  }
}