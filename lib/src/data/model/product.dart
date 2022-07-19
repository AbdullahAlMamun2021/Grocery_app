import 'package:flutter/material.dart';

class Product  {
  int pId;
  String pTittle;
  int pWeight;
  double price;
  String imgUrl;
  String description;
  bool isFavourite;

  Product({
    required this.pId,
    required this.pTittle,
    required this.pWeight,
    required this.price,
    required this.imgUrl,
    required this.description,
    this.isFavourite = false,
  });


}
