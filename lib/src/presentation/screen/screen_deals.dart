import 'package:e_commerce/src/presentation/screen/screen_cart.dart';
import 'package:e_commerce/src/utils/app_text_style.dart';
import 'package:flutter/material.dart';

import '../widgets/category/widget_product_details.dart';

class DealScreen extends StatelessWidget {
  const DealScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Discount Products",
          style: AppTextStyle.headline3(context, Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Text(
                "Offers(15)",
                style: AppTextStyle.headline3(context, Colors.black),
              ),
              trailing: TextButton(
                onPressed: () {},
                child: const Text("VIEW ALL"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
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
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 0.63,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                    itemCount: 4,
                    itemBuilder: (BuildContext ctx, index) {
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
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: const DecorationImage(
                                              image: NetworkImage(
                                                  "https://doortoknock.com.bd/public/uploads/all/pYdze3nq0BjUG1syIZRVkHITXDKvAQo68VumLLJB.jpg"),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    "Kishmish",
                                    style: AppTextStyle.subtitle(
                                            context, Colors.black)
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    "1000 gm",
                                    style: AppTextStyle.caption(
                                        context, Colors.black38),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    "ট450 ",
                                    style: AppTextStyle.caption(
                                        context, Colors.black),
                                  ),
                                  InkWell(
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          bottom: 20, top: 20),
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
                                            .copyWith(
                                                fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (ctx) =>
                                                  const CartScreen()));
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
                                    onPressed: () {},
                                    icon: const Icon(Icons.favorite_border),
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
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.teal),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  "SEE ALL OFFER",
                  style: AppTextStyle.caption(context, Colors.teal),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
