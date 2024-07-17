import 'package:flutter/material.dart';
import 'package:storeamr/models/product_model.dart';
import 'package:storeamr/service/get_all_product_service.dart';

import 'item_product.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder <List<ProductModel>>(
        future: AllProductService().getAllProducts(), builder: (context, snapshot) {
          if(snapshot.hasData){
            return GridView.builder(
              clipBehavior: Clip.none,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                mainAxisSpacing: 1.0,
                crossAxisSpacing: 16.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return  const ItemProduct();
              },
              itemCount: 20,
            );
          }else{
            return SizedBox(
              height: MediaQuery.of(context).size.height / 1.3,
              child: Center(
                child: Text("${snapshot.error}")
              ),
            );
          }

    });
  }
}
