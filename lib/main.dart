import 'package:flutter/material.dart';
import 'package:storeamr/features/update_product_page/views/screen.dart';

import 'features/home_screen/views/screen.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      routes: {
        HomeScreen.id: (context)=>HomeScreen(),
        UpdateProductScreen.id:(context) =>UpdateProductScreen()
      },
      initialRoute:  HomeScreen.id,
      debugShowCheckedModeBanner: false,
    );
  }
}