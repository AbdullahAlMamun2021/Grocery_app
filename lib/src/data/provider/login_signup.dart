import 'package:flutter/material.dart';

class LoginSignIn with ChangeNotifier {
  bool isObscure = true ;

  void eyeVisible() {
    isObscure = !isObscure;
    notifyListeners();
  }
}
