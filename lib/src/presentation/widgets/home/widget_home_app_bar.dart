import 'package:flutter/material.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading:  const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://www.onlinelogomaker.com/blog/wp-content/uploads/2017/06/shopping-online.jpg"),
          ),
        ),
        actions: [
          Container(
            margin:  const EdgeInsets.all(12),
            width: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              onChanged: (value) => (value),
              decoration:  const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 14),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: "Search Product",
                  hintStyle: TextStyle(fontSize: 12, color: Colors.black26),
                  prefixIcon: Icon(Icons.search)),
            ),
          ),
          const CircleAvatar(
            child: Icon(Icons.shopping_cart),
          )
        ],
      ),
    );
  }
}
