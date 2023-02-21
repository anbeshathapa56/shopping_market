import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_market/screens/product_details_screen.dart';

import '../model/product.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    final loadedProduct = Provider.of<Product>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          title: Text(
            loadedProduct.title,
            textAlign: TextAlign.center,
          ),
          leading: IconButton(
            onPressed: () {
              loadedProduct.toggleIsFavourite();
            },
            icon: Icon(
              loadedProduct.isFavourite
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: Colors.orange,
            ),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.orange,
            ),
          ),
        ),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, ProductDetail.routeName,
                arguments: loadedProduct.id);
          },
          child: Image.network(
            loadedProduct.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
