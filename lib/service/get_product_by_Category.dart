import 'package:storeamr/models/product_model.dart';
import '../helper/api.dart';

class ProductByCategory{
  Future<List<ProductModel>> getProductByCategory ({required String category}) async{
    List<dynamic> data=await Api().get(url: "https://fakestoreapi.com/products/category/ $category");
    List<ProductModel> productsList=[];
    for(int i=0; i<data.length; i++){
      productsList.add(
          ProductModel.fromJson(data[i])
      );
    }
    return productsList;
  }
}