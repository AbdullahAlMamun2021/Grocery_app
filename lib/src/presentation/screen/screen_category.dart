import 'package:e_commerce/src/presentation/screen/screen_product_item_tabbar.dart';
import 'package:e_commerce/src/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({Key? key}) : super(key: key);

  final category = [
    "Fruits & Vegetables",
    "Meat & Fish",
    "Grocery",
    "Snacks",
    "Bakery",
    "Dairy",
    "Beverages",
    "Household & Cleaning",
    "Personal Care",
    "Stationery",
    "Baby",
    "Safe Food",
  ];
  final productCateImg = [
    "https://www.news-medical.net/image.axd?picture=2020%2F1%2Fshutterstock_321864554.jpg",
    "https://recipes.net/wp-content/uploads/2020/08/different-types-of-fish-and-meat-scaled.jpg",
    "https://i.pinimg.com/originals/d1/11/43/d11143e71df51f4b4c15b8379ffea8ab.jpg",
    "https://thumbs.dreamstime.com/b/assortment-salty-snacks-top-view-table-scene-dark-wood-background-192482130.jpg",
    "https://s3.amazonaws.com/s3.nmpoliticalreport.com/wp-content/uploads/2020/07/25154339/shutterstock-bakery-1170x837.jpg",
    "https://www.dairyfoods.com/ext/resources/DF/2020/August/df-100/GettyImages-1194287257.jpg?1597726305",
    "https://www.packagingdigest.com/sites/packagingdigest.com/files/AdobeStock_279692163_Editorial_Use_Only-Beverage-FTR-new.jpg",
    "https://3.imimg.com/data3/EH/MO/MY-1651149/household-cleaning-products-500x500.jpg",
    "https://cdn.sanity.io/images/92ui5egz/production/e800a8eabc6f17a0eaed1bf6621b46aefa57b8cb-990x557.jpg?auto=format",
    "https://5.imimg.com/data5/SELLER/Default/2021/3/WO/LC/AV/3888161/stationary-2-1--500x500.jpg",
    "https://sgp1.digitaloceanspaces.com/cosmosgroup/news/2654153_Baby%20eCommerce%20Sites%202021.jpg",
    "https://img.freepik.com/free-photo/healthy-food-clean-eating-selection_79782-19.jpg?w=2000"
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
      body: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 12,
            itemBuilder: (BuildContext context, int index) {
              return ExpansionTile(
                collapsedBackgroundColor: Colors.tealAccent.shade100,
                childrenPadding: const EdgeInsets.only(bottom: 16),
                subtitle: const Divider(),
                backgroundColor: Colors.white,
                leading: Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(productCateImg[index]),
                        fit: BoxFit.cover),
                  ),
                ),
                title: Text(
                  category[index],
                  style: AppTextStyle.body(context, Colors.black),
                ),
                children: [
                  SizedBox(
                    height: 40,
                    child: ListTile(
                      contentPadding: const EdgeInsets.only(left: 80, top: -20),
                      title: const Text("Dry Fruits"),
                      subtitle: const Divider(),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const ProductScreen()));
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                    child: ListTile(
                      contentPadding: EdgeInsets.only(left: 80, top: -20),
                      title: Text("Fresh Fruits"),
                      subtitle: Divider(),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                    child: ListTile(
                      contentPadding: EdgeInsets.only(left: 80),
                      title: Text("Fresh Vegetables"),
                      subtitle: Divider(),
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
