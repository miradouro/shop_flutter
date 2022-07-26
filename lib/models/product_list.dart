import 'package:flutter/material.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/models/product.dart';

class ProductList with ChangeNotifier {
  List<Product> _items = dummyProduct;

  List<Product> get items => [..._items];

  void addproduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}
