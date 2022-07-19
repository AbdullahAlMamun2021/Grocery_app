import 'package:e_commerce/src/presentation/widgets/home/widget_cart.dart';
import 'package:e_commerce/src/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/category/widget_category_item.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: InkWell(
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 18,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          title:  Text(
            "Fruits & Vegetables",
            style: AppTextStyle.headline3(context, Colors.black).copyWith(fontSize: 18),
          ),
          actions: [
            SvgPicture.asset(
              "assets/icons/Search Icon.svg",
              color: Colors.black,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CartWidget(),
            )
          ],
          bottom:  TabBar(
            physics: const ScrollPhysics(),
            indicatorColor: Colors.cyan,
            unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
            labelColor: Colors.cyan,
            unselectedLabelColor: Colors.black,
            labelStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            tabs: [
              Tab(
                child: Text("DRY FRUITS",
                    textAlign: TextAlign.left, style: AppTextStyle.body(context, Colors.black).copyWith(fontSize: 13),),
              ),
               Tab(
                child: Text(
                  "FRESH FRUITS",
                    textAlign: TextAlign.left, style: AppTextStyle.body(context, Colors.black).copyWith(fontSize: 13),),
              ),
               Tab(
                child: Text("FRESH VEGETABLES",
                    textAlign: TextAlign.left, style: AppTextStyle.body(context, Colors.black).copyWith(fontSize: 13),),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CategoryItem(),
            CategoryItem(),
            CategoryItem(),
          ],
        ),
      ),
    );
  }
}
