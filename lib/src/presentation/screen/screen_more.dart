import 'package:e_commerce/src/presentation/screen/screen_login.dart';
import 'package:e_commerce/src/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/more/widget_view_account.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://img.olympicchannel.com/images/image/private/t_1-1_600/f_auto/v1538355600/primary/wfrhxc0kh2vvq77sonki"),
              ),
              title: Text(
                '+8801866062078',
                style: AppTextStyle.subtitle(context, Colors.black),
              ),
              subtitle: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const ViewAccountWidget()));
                },
                child: Text(
                  "View Account",
                  style: AppTextStyle.caption(context, Colors.indigoAccent)
                      .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Divider(
              thickness: 5,
              color: Colors.grey.withOpacity(0.2),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/home.svg",
                    height: 20,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Manage Address',
                    style: AppTextStyle.subtitle(context, Colors.black),
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    "assets/icons/arrow_right.svg",
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/discount.svg",
                    height: 20,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'My Coupons',
                    style: AppTextStyle.subtitle(context, Colors.black),
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    "assets/icons/arrow_right.svg",
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/order.svg",
                    height: 20,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'My Orders',
                    style: AppTextStyle.subtitle(context, Colors.black),
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    "assets/icons/arrow_right.svg",
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/Question mark.svg",
                    height: 20,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Help and Contact',
                    style: AppTextStyle.subtitle(context, Colors.black),
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    "assets/icons/arrow_right.svg",
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/about.svg",
                    height: 20,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'About',
                    style: AppTextStyle.subtitle(context, Colors.black),
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.privacy_tip_outlined,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Terms & Privacy Policy',
                        style: AppTextStyle.subtitle(context, Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(thickness: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,),
              child: Row(
                children: [
                  SvgPicture.asset("assets/icons/Log out.svg",
                      height: 20, color: Colors.grey),
                  const SizedBox(
                    width: 20,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => LogInScreen()));
                    },
                    child: Text(
                      "Logout",
                      style: AppTextStyle.subtitle(context, Colors.black)
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            const Divider()
          ],
        ),
      ),
    );
  }
}
