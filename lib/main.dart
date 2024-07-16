import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storeamr/service/get_all_product_service.dart';

void main(){
  AllProductService().getAllProducts();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override 
  Widget build(BuildContext context) {
   return const MaterialApp(
     home: Scaffold(body: Center(child: Text("Mohamed Amr")),),
     debugShowCheckedModeBanner: false,
   );
  }

}