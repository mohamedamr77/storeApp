import 'package:storeamr/helper/api.dart';

class AllCategoryService{
  Future<List<dynamic>> getAllCategories()async{
    List<dynamic> result=await Api().get( url: 'https://fakestoreapi.com/products/categories');
         return result;
  }
}