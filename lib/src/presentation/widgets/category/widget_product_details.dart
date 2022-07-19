import 'package:e_commerce/src/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../home/widget_cart.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Product Details",
          style: AppTextStyle.subtitle(context, Colors.white)
              .copyWith(fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey.shade100,
            child: SvgPicture.asset(
              "assets/icons/Search Icon.svg",
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          const CartWidget()
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 300,
            child: Center(
              child: Image.network(
                  'https://doortoknock.com.bd/public/uploads/all/pYdze3nq0BjUG1syIZRVkHITXDKvAQo68VumLLJB.jpg'),
            ),
          ),
          ListTile(
            title: Text(
              "Seedless Raisins(Kishmish)",
              style: AppTextStyle.subtitle(context, Colors.black)
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("1000 gm",
                    style: AppTextStyle.body(context, Colors.black38)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ট450 ",
                      style: AppTextStyle.subtitle(context, Colors.black)
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.grey,
                    ),
                  ],
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    "Product Details ",
                    style: AppTextStyle.subtitle(context, Colors.black)
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Kishmish Seedless",
                      style: AppTextStyle.caption(context, Colors.black45)),
                ),
              ],
            ),
          ),
          // ignore: prefer_const_constructors
          Spacer(),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
            alignment: Alignment.center,
            height: 40,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.teal),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "Add to Cart",
              style: AppTextStyle.subtitle(context, Colors.black)
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
