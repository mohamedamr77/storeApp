import 'package:flutter/material.dart';
import 'package:storeamr/features/update_product_page/views/widgets/update_product_body.dart';
import 'package:storeamr/models/product_model.dart';
import '../../home_screen/views/widgets/appbar.dart';

class UpdateProductScreen extends StatelessWidget {
   UpdateProductScreen({super.key});
   static String id= "Update Product Screen ";
  @override
  Widget build(BuildContext context) {
    ProductModel product= ModalRoute.of(context)!.settings.arguments as ProductModel;
    return   Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Update Product', onLeadingPressed: () {  }, onActionPressed: () {  },),
      body: UpdateProductBody(product: product,),
    );
  }
}
