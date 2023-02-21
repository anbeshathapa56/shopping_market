import 'package:flutter/cupertino.dart';

class Product with ChangeNotifier {
  late String id;
  late String title;
  late double price;
  late String description;
  late String imageUrl;
  late bool isFavourite;
  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.imageUrl,
    this.isFavourite = false,
  });
  void toggleIsFavourite() {
    isFavourite = !isFavourite;
    notifyListeners();
  }
}
