import 'package:flutter/material.dart';

class StateProvider extends ChangeNotifier {
  String _name = "test";
  List<String> _products = [];

  getName() {
    return _name;
  }

  List<String> getProductos() {
    return _products;
  }

  setName(String name) {
    _name = name;
    notifyListeners();
  }

  addProduct(String product) {
    _products.add(product);
    notifyListeners();
  }
}
