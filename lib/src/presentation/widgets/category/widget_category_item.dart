import 'package:e_commerce/src/data/model/product.dart';
import 'package:e_commerce/src/data/provider/favourite_item.dart';

import 'package:e_commerce/src/presentation/screen/screen_cart.dart';
import 'package:e_commerce/src/presentation/widgets/category/widget_product_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/app_text_style.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({Key? key}) : super(key: key);

  final List<Product> loadedProduct = [
    Product(
        pId: 1,
        pTittle: "Kishmish",
        pWeight: 1000,
        price: 450.0,
        imgUrl: "https://gaappu.com/wp-content/uploads/2021/03/kishmish.jpg",
        description:
            "Humble Kishmish or raisins found in Indian households are jam-packed with vitamins that have multiple benefits only if you drink its special concoction every morning! Read on to discover the benefits of Kishmish water, raisin water side effects, the perfect recipe for dry grapes soaked in water for your health and more!"),
    Product(
        pId: 2,
        pTittle: "Cashew Nut",
        pWeight: 1000,
        price: 850.0,
        imgUrl:
            "https://img.favpng.com/4/13/11/cashew-dried-fruit-nut-png-favpng-mBiLPbtzpecKHm6crn6Y7JZd4.jpg",
        description:
            "Humble Kishmish or raisins found in Indian households are jam-packed with vitamins that have multiple benefits only if you drink its special concoction every morning! Read on to discover the benefits of Kishmish water, raisin water side effects, the perfect recipe for dry grapes soaked in water for your health and more!"),
    Product(
        pId: 3,
        pTittle: "Almonds",
        pWeight: 500,
        price: 600.0,
        imgUrl:
            "https://chaldn.com/_mpimage/almonds-kath-badam-100-gm?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D47957&q=best&v=1&m=400",
        description:
            "Humble Kishmish or raisins found in Indian households are jam-packed with vitamins that have multiple benefits only if you drink its special concoction every morning! Read on to discover the benefits of Kishmish water, raisin water side effects, the perfect recipe for dry grapes soaked in water for your health and more!"),
    Product(
        pId: 4,
        pTittle: "Pistachio Nut",
        pWeight: 500,
        price: 720.0,
        imgUrl:
            "https://static5.depositphotos.com/1020804/534/i/950/depositphotos_5347634-stock-photo-pistachio-nuts.jpg",
        description:
            "Humble Kishmish or raisins found in Indian households are jam-packed with vitamins that have multiple benefits only if you drink its special concoction every morning! Read on to discover the benefits of Kishmish water, raisin water side effects, the perfect recipe for dry grapes soaked in water for your health and more!"),
    Product(
        pId: 5,
        pTittle: "Ajwa Dates",
        pWeight: 1000,
        price: 1200.0,
        imgUrl:
            "https://i.pinimg.com/736x/11/12/61/1112618e066bd0cc33c234345be0b6bf.jpg",
        description:
            "Humble Kishmish or raisins found in Indian households are jam-packed with vitamins that have multiple benefits only if you drink its special concoction every morning! Read on to discover the benefits of Kishmish water, raisin water side effects, the perfect recipe for dry grapes soaked in water for your health and more!"),
    Product(
        pId: 6,
        pTittle: "Mixed Dry Fruits",
        pWeight: 350,
        price: 700.0,
        imgUrl: "https://shodai-bd.com/uploads/product_image/product_485_1.jpg",
        description:
            "Humble Kishmish or raisins found in Indian households are jam-packed with vitamins that have multiple benefits only if you drink its special concoction every morning! Read on to discover the benefits of Kishmish water, raisin water side effects, the perfect recipe for dry grapes soaked in water for your health and more!"),
  ];

  @override
  Widget build(BuildContext context) {
    final favourite = Provider.of<Favourite>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const ProductDetails(),
              ),
            );
          },
          child: GridView.builder(
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 0.63,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemCount: loadedProduct.length,
              itemBuilder: (BuildContext ctx, index) {
                final Product products = loadedProduct.elementAt(index);
                return Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.teal),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 12.0, right: 12, bottom: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Container(
                                margin: const EdgeInsets.all(8),
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: NetworkImage(products.imgUrl),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            const Spacer(),
                            Text(
                              products.pTittle,
                              style:
                                  AppTextStyle.subtitle(context, Colors.black)
                                      .copyWith(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "${products.pWeight} gm",
                              style:
                                  AppTextStyle.caption(context, Colors.black38),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "ট${products.price} ",
                              style:
                                  AppTextStyle.caption(context, Colors.black),
                            ),
                            InkWell(
                              child: Container(
                                margin:
                                    const EdgeInsets.only(bottom: 20, top: 20),
                                alignment: Alignment.center,
                                height: 30,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  "Add to Cart",
                                  style: AppTextStyle.caption(
                                          context, Colors.black)
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (ctx) => const CartScreen()));
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8, top: 8),
                      child: Stack(
                        children: [
                          Positioned(
                            right: -10,
                            top: 0,
                            child: IconButton(
                              onPressed: () {
                                favourite.favouriteFunction();
                              },
                              icon: Icon(favourite.isFavorite
                                  ? Icons.favorite_border
                                  : Icons.favorite,color: Colors.red,),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                );
              }),
        ),
      ),
    );
  }
}
