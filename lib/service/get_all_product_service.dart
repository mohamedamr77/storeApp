import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../models/product_model.dart';

class AllProductService {
Future<List<ProductModel>> getAllProducts() async{
   http.Response response=await http.get(Uri.parse("https://fakestoreapi.com/products"));
   if (kDebugMode) {
     print(response.statusCode);
   }
  if(response.statusCode==200){
    List<dynamic> data= jsonDecode(response.body);
    List<ProductModel> productsList=[];
    for(int i=0; i<data.length; i++){
      productsList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productsList;
  } else{
    throw Exception(" their is problem in status code ${response.statusCode} ");
  }
}
}