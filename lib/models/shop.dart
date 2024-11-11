import 'package:flutter/material.dart';
import 'package:minimal_shop/models/product.dart';

class Shop extends ChangeNotifier {
// products for sale
  final List<Product> _shop = [
    Product(
        name: "Iqoo mobile",
        description: " best sale ",
        price: 19999.99,
        imagePath: 'img/hoodie.png'),
    Product(
        name: "mi mobile",
        description: " best sale ",
        price: 19999.99,
        imagePath: 'img/laptop.jpg'),
    Product(
        name: "nothing mobile",
        description: " best sale ",
        price: 19999.99,
        imagePath: 'img/watch.png'),
    Product(
        name: "iphone",
        description: " best sale ",
        price: 19999.99,
        imagePath: 'img/glasses.jpg')
  ];

// user cart
  final List<Product> _cart = [];

//get product list
  List<Product> get shop => _shop;

// get user cart
  List<Product> get cart => _cart;

// add item to cart
  void addItemToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

// remove item from cart
  void removeItemFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
