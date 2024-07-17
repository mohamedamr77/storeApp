import 'package:flutter/material.dart';

import 'item_product.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
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
  }
}
