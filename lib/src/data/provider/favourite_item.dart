import 'package:flutter/material.dart';

class Favourite with ChangeNotifier {
  bool isFavorite = false;

  void favouriteFunction() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
