import 'dart:convert';
import 'package:http/http.dart' as http;

class AllCategoryService{
  Future<List<dynamic>> getAllCategories()async{
       http.Response response =await http.get(Uri.parse("https://fakestoreapi.com/products/categories"));
       if(response.statusCode==200){
         List<dynamic> result =jsonDecode(response.body);
         return result;
       } else{
         throw Exception("Failed to fetch data and status: ${response.statusCode}");
       }
  }
}