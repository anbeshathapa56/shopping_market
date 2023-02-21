import 'package:flutter/cupertino.dart';
import 'package:shopping_market/model/product.dart';

class ProductList with ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: 'first',
      title: 'Shoes',
      price: 2000.0,
      description:
          'The best watch that fits both classy and modern personality',
      imageUrl:
          'https://static-01.daraz.com.np/p/c08a216ea39c997bd25279d89d379748.jpg',
      isFavourite: false,
    ),
    Product(
      id: 'second',
      title: 'Bracelet',
      price: 2000.0,
      description:
          'The best watch that fits both classy and modern personality',
      imageUrl:
          'https://assets0.mirraw.com/images/7335857/B2101XXRAFG-FD_(1)_large.jpg?1567078032',
      isFavourite: false,
    ),
    Product(
      id: 'third',
      title: 'Goggles',
      price: 2000.0,
      description:
          'The best watch that fits both classy and modern personality',
      imageUrl:
          'https://img.joomcdn.net/98824623da90d58b4cf745c1b331cda08bf69a5c_original.jpeg',
      isFavourite: false,
    ),
    Product(
      id: 'fourth',
      title: 'Bag',
      price: 2000.0,
      description:
          'The best watch that fits both classy and modern personality',
      imageUrl:
          'https://5.imimg.com/data5/NM/II/MY-3020503/ladies-hand-bags1-500x500.jpg',
      isFavourite: false,
    ),
  ];
  List<Product> get items {
    return [..._items];
  }

  List<Product> get favourites {
    return _items.where((prodItem) {
      return prodItem.isFavourite;
    }).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }
}
