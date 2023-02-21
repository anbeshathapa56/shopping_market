import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_market/widgets/product_item.dart';

import '../model/Product_list.dart';

class ProductGrid extends StatelessWidget {
  final bool isFavourite;
  const ProductGrid({super.key, required this.isFavourite});

  @override
  Widget build(BuildContext context) {
    final productList = isFavourite
        ? Provider.of<ProductList>(context).favourites
        : Provider.of<ProductList>(context).items;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: GridView.builder(
        itemCount: productList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 3 / 2,
        ),
        itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
          value: productList[index],
          child: const ProductItem(),
        ),
      ),
    );
  }
}
