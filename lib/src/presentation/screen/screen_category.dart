import 'package:e_commerce/src/presentation/screen/screen_product_item_tabbar.dart';
import 'package:e_commerce/src/utils/app_text_style.dart';
import 'package:flutter/material.dart';

import '../../data/model/category_items.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({Key? key}) : super(key: key);
  final List<ProductCategory> loadedCategory = [
    ProductCategory(
        id: 1,
        tittle: "Fruits & Vegetables",
        imgUrl:
            "https://www.news-medical.net/image.axd?picture=2020%2F1%2Fshutterstock_321864554.jpg"),
    ProductCategory(
        id: 2,
        tittle: "Meat & Fish",
        imgUrl:
            "https://recipes.net/wp-content/uploads/2020/08/different-types-of-fish-and-meat-scaled.jpg"),
    ProductCategory(
        id: 3,
        tittle: "Grocery",
        imgUrl:
            "https://i.pinimg.com/originals/d1/11/43/d11143e71df51f4b4c15b8379ffea8ab.jpg"),
    ProductCategory(
        id: 4,
        tittle: "Snacks",
        imgUrl:
            "https://thumbs.dreamstime.com/b/assortment-salty-snacks-top-view-table-scene-dark-wood-background-192482130.jpg"),
    ProductCategory(
        id: 5,
        tittle: "Bakery",
        imgUrl:
            "https://s3.amazonaws.com/s3.nmpoliticalreport.com/wp-content/uploads/2020/07/25154339/shutterstock-bakery-1170x837.jpg"),
    ProductCategory(
        id: 6,
        tittle: "Dairy",
        imgUrl:
            "https://www.dairyfoods.com/ext/resources/DF/2020/August/df-100/GettyImages-1194287257.jpg?1597726305"),
    ProductCategory(
        id: 7,
        tittle: "Beverages",
        imgUrl:
            "https://www.packagingdigest.com/sites/packagingdigest.com/files/AdobeStock_279692163_Editorial_Use_Only-Beverage-FTR-new.jpg"),
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
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Categories",
          style: AppTextStyle.headline3(context, Colors.white),
        ),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: loadedCategory.length,
          itemBuilder: (BuildContext context, int index) {
            final ProductCategory productCategory =
                loadedCategory.elementAt(index);
            return Column(
              children: [
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    backgroundColor: Colors.blue.shade50,
                    leading: Container(
                      margin: const EdgeInsets.only(top: 8, bottom: 8),
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(productCategory.imgUrl),
                            fit: BoxFit.cover),
                      ),
                    ),
                    title: Text(
                      productCategory.tittle,
                      style: AppTextStyle.subtitle(context, Colors.black),
                    ),
                    children: [
                      SizedBox(
                        height: 50,
                        child: ListTile(
                          contentPadding: const EdgeInsets.only(
                            left: 80,
                          ),
                          title: Text(
                            "Dry Fruits",
                            style: AppTextStyle.body(context, Colors.black),
                          ),
                          subtitle: const Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Divider(color: Colors.pink),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const ProductScreen()));
                          },
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: ListTile(
                          contentPadding: const EdgeInsets.only(left: 80),
                          title: Text(
                            "Fresh Fruits",
                            style: AppTextStyle.body(context, Colors.black),
                          ),
                          subtitle: const Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Divider(color: Colors.pink),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: ListTile(
                          contentPadding: const EdgeInsets.only(left: 80),
                          title: Text(
                            "Fresh Vegetables",
                            style: AppTextStyle.body(context, Colors.black),
                          ),
                          subtitle: const Padding(
                            child: Divider(
                              color: Colors.pink,
                            ),
                            padding: EdgeInsets.only(top: 12.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.black12,
                ),
              ],
            );
          }),
    );
  }
}
