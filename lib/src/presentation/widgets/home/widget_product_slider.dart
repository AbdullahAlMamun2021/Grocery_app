import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'widgets_product_category.dart';

class ProductSliderWidget extends StatelessWidget {
  ProductSliderWidget({Key? key}) : super(key: key);
  final List<String> imgList = [
    'https://c8.alamy.com/comp/2G53KDD/web-banner-for-supermarket-landing-page-with-3d-illustration-of-shopping-basket-full-of-fruits-with-discount-2G53KDD.jpg',
    'https://img.freepik.com/free-vector/flat-supermarket-banner_23-2149375188.jpg?w=2000',
    'https://thumbs.dreamstime.com/b/grocery-shopping-discount-banner-paper-bag-filled-vegetables-fruits-other-products-68647200.jpg',
    'https://thumbs.dreamstime.com/b/summer-sale-shopping-discount-vector-palm-leaf-papercut-text-web-banner-design-template-online-shop-advertising-paper-cut-97269963.jpg',
    'https://img.freepik.com/free-vector/bright-sale-banner-summer-2021-shopping-yellow-background-up-50-percent-discount-invitation-card-with-pineapple-tropical-leaves-sunglasses-lemon-template-design-flyer-vector-illustration_1436-661.jpg?w=2000',
    'https://img.freepik.com/free-vector/summer-sale-up-50-off-discount-web-banner-your-website-with-pink-circle-with-offer-summer-elements-beach-accessories_7993-6412.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1,
              autoPlay: true,
              height: 150,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
            items: imgList
                .map(
                  (item) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(item), fit: BoxFit.cover),
                    ),
                    margin: const EdgeInsets.only(left: 8, top: 5, right: 8),
                  ),
                )
                .toList(),
          ),
           ProductCategoryWidget(),
        ],
      ),
    );
  }
}
