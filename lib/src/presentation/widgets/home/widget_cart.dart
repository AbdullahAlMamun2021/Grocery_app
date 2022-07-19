import 'package:e_commerce/src/presentation/screen/screen_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/app_text_style.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (ctx) => const CartScreen()));
      },
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0, top: 8, bottom: 8),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: SvgPicture.asset(
                "assets/icons/Cart Icon.svg",
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            right: 10,
            top: 5,
            child: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    "5",
                    textAlign: TextAlign.center,
                    style: AppTextStyle.caption(context, Colors.white),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
