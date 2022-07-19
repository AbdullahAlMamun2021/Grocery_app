import 'package:e_commerce/src/data/model/category_items.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_text_style.dart';
import '../../screen/screen_category.dart';
import '../../screen/screen_product_item_tabbar.dart';

class ProductCategoryWidget extends StatelessWidget {
  ProductCategoryWidget({
    Key? key,
  }) : super(key: key);

  final List<ProductCategory> loadedCategory = [
    ProductCategory(
      id: 1,
      tittle: "Fruits & Vegetables",
      imgUrl:
          "https://www.news-medical.net/image.axd?picture=2020%2F1%2Fshutterstock_321864554.jpg",
    ),
    ProductCategory(
      id: 2,
      tittle: "Meat & Fish",
      imgUrl:
          "https://recipes.net/wp-content/uploads/2020/08/different-types-of-fish-and-meat-scaled.jpg",
    ),
    ProductCategory(
      id: 3,
      tittle: "Grocery",
      imgUrl:
          "https://i.pinimg.com/originals/d1/11/43/d11143e71df51f4b4c15b8379ffea8ab.jpg",
    ),
    ProductCategory(
      id: 4,
      tittle: "Snacks",
      imgUrl:
          "https://thumbs.dreamstime.com/b/assortment-salty-snacks-top-view-table-scene-dark-wood-background-192482130.jpg",
    ),
    ProductCategory(
      id: 5,
      tittle: "Bakery",
      imgUrl:
          "https://s3.amazonaws.com/s3.nmpoliticalreport.com/wp-content/uploads/2020/07/25154339/shutterstock-bakery-1170x837.jpg",
    ),
    ProductCategory(
      id: 6,
      tittle: "Dairy",
      imgUrl:
          "https://www.dairyfoods.com/ext/resources/DF/2020/August/df-100/GettyImages-1194287257.jpg?1597726305",
    ),
    ProductCategory(
      id: 7,
      tittle: "Beverages",
      imgUrl:
          "https://www.packagingdigest.com/sites/packagingdigest.com/files/AdobeStock_279692163_Editorial_Use_Only-Beverage-FTR-new.jpg",
    ),
    ProductCategory(
      id: 8,
      tittle: "Household & Cleaning",
      imgUrl:
          "https://3.imimg.com/data3/EH/MO/MY-1651149/household-cleaning-products-500x500.jpg",
    ),
    ProductCategory(
      id: 9,
      tittle: "Personal Care",
      imgUrl:
          "https://cdn.sanity.io/images/92ui5egz/production/e800a8eabc6f17a0eaed1bf6621b46aefa57b8cb-990x557.jpg?auto=format",
    ),
    ProductCategory(
      id: 10,
      tittle: "Stationery",
      imgUrl:
          "https://5.imimg.com/data5/SELLER/Default/2021/3/WO/LC/AV/3888161/stationary-2-1--500x500.jpg",
    ),
    ProductCategory(
      id: 11,
      tittle: "Baby",
      imgUrl:
          "https://sgp1.digitaloceanspaces.com/cosmosgroup/news/2654153_Baby%20eCommerce%20Sites%202021.jpg",
    ),
    ProductCategory(
        id: 12,
        tittle: "Safe Food",
        imgUrl:
            "https://img.freepik.com/free-photo/healthy-food-clean-eating-selection_79782-19.jpg?w=2000"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 8),
          child: Text("Shop by Category",
              style: AppTextStyle.headline3(context, Colors.indigo)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const ProductScreen()));
            },
            child: GridView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 1.03,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 8,
                ),
                itemCount: loadedCategory.length,
                itemBuilder: (BuildContext ctx, index) {
                  final ProductCategory productCategory =
                      loadedCategory.elementAt(index);
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 12),
                        height: 80,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(productCategory.imgUrl),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Text(productCategory.tittle,
                          style: AppTextStyle.subtitle(context, Colors.black)
                              .copyWith(
                                  fontSize: 15, fontWeight: FontWeight.bold))
                    ],
                  );
                }),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) => CategoryScreen(),
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.teal),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
                child: Text(
              "Show All ",
              style: AppTextStyle.subtitle(context, Colors.black)
                  .copyWith(fontWeight: FontWeight.bold),
            )),
          ),
        )
      ],
    );
  }
}
