import 'package:flutter/material.dart';

class CartItem {
  String id;
  String tittle;

  int quantity;
  double price;

  CartItem(
      {required this.id,
      required this.tittle,
      required this.quantity,
      required this.price});
}

class Cart with ChangeNotifier {}
