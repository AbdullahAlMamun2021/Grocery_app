import 'package:flutter/material.dart';

import '../widgets/home/widget_cart.dart';
import '../widgets/home/widget_product_slider.dart';
import '../widgets/home/widget_search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://www.onlinelogomaker.com/blog/wp-content/uploads/2017/06/shopping-online.jpg"),
          ),
        ),
        actions: const [SearchWidget(), CartWidget()],
      ),
      body: ProductSliderWidget(),
    );
  }
}
