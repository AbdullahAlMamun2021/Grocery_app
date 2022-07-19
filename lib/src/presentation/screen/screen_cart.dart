import 'package:e_commerce/src/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text("Order Details"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Cart",
              style: AppTextStyle.subtitle(context, Colors.black)
                  .copyWith(fontWeight: FontWeight.bold),
            ),

            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 5,
                itemBuilder: (BuildContext ctxt, int index) {
                  return Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 12),
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black)),
                        child: Center(
                          child: Image.network(
                            "https://st.depositphotos.com/1020804/3709/i/600/depositphotos_37092437-stock-photo-pistachio-nuts-with-leaves.jpg",
                            width: 70,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Pistachio Nuts",
                                style: AppTextStyle.body(context, Colors.black)
                                    .copyWith(fontSize: 16)),
                            Text(
                              "980 Taka (+ 4% Vat)",
                              style:
                                  AppTextStyle.subtitle(context, Colors.black)
                                      .copyWith(fontSize: 12),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Icon(Icons.remove_circle_outline),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("1"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.add_circle_outline)
                                  ],
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.teal.shade50,
                                  child: const Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
