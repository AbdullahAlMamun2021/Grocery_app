// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(left: 12,right: 8,top: 12,bottom: 12),
      width: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: (value) => print(value),
        decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 14),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: "Search Product",
            hintStyle: TextStyle(fontSize: 12, color: Colors.black26),
            prefixIcon: Icon(Icons.search)),
      ),
    );
  }
}
