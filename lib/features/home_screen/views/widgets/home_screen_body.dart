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
            List<ProductModel> products = snapshot.data!;
            return GridView.builder(
              clipBehavior: Clip.none,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                mainAxisSpacing: 1.0,
                crossAxisSpacing: 16.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return   ItemProduct(name: products[index].title.substring(0,6), price:  products[index].price, image:  products[index].image,);
              },
              itemCount: products.length,
            );
          }else{
            return SizedBox(
              height: MediaQuery.of(context).size.height / 1.3,
              child: const Center(
                child: CircularProgressIndicator()
              ),
            );
          }

    });
  }
}