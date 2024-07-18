import 'package:flutter/material.dart';
import 'package:storeamr/features/update_product_page/views/widgets/update_product_body.dart';
import '../../home_screen/views/widgets/appbar.dart';

class UpdateProductScreen extends StatelessWidget {
  const UpdateProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Update Product', onLeadingPressed: () {  }, onActionPressed: () {  },),
      body: UpdateProductBody(),
    );
  }
}
