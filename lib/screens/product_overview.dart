import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_market/screens/cart_screen.dart';
import 'package:shopping_market/widgets/badge.dart';
import 'package:shopping_market/widgets/product_grid.dart';

import '../model/cart_provider.dart';

enum FilterOptions { favourites, all }

class ProductOverview extends StatefulWidget {
  const ProductOverview({Key? key}) : super(key: key);

  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  bool _showFavourites = false;
  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Shop Venue',
        ),
        actions: [
          PopupMenuButton(
              icon: const Icon(Icons.more_vert),
              onSelected: (FilterOptions selectedValue) {
                setState(() {
                  if (selectedValue == FilterOptions.favourites) {
                    _showFavourites = true;
                  } else {
                    _showFavourites = false;
                  }
                });
              },
              itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: FilterOptions.favourites,
                      child: Text("Show Favourites"),
                    ),
                    const PopupMenuItem(
                      value: FilterOptions.all,
                      child: Text("Show All"),
                    ),
                  ]),
          Consumer<Cart>(
            builder: (_, cart, child) {
              return Badge(
                value: cart.itemCount.toString(),
                color: Colors.orange,
                child: IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {
                    Navigator.pushNamed(context, CartScreen.routeName);
                  },
                ),
              );
            },
            // child: IconButton(
            //   icon: Icon(
            //     Icons.shopping_cart,
            //     color: Colors.red,
            //   ),
            //   onPressed: () {
            //     Navigator.pushNamed(context, CartScreen.routeName);
            //   },
            // ),
          )
        ],
      ),
      body: ProductGrid(
        isFavourite: _showFavourites,
      ),
    );
  }
}
