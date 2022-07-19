import 'package:flutter/material.dart';

import '../../../utils/app_text_style.dart';

class ViewAccountWidget extends StatelessWidget {
  const ViewAccountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,

        title:  Text("Profile",
          style: AppTextStyle.headline3(context, Colors.white),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 16,top: 16),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(1),
                borderRadius: BorderRadius.circular(50)),
            child: const Icon(
              Icons.perm_identity_outlined,
              size: 80,
              color: Colors.grey,
            ),
          ),
           Padding(
            padding: EdgeInsets.only(left: 16.0, top: 16),
            child: Text(
              "Abdullah Al Mamun",
              style: AppTextStyle.subtitle(context, Colors.black),
            ),
          ),
           ListTile(
            title: Text("Email",
              style: AppTextStyle.subtitle(context, Colors.black),),
            subtitle: Text("mamun.piistech@gmail.com",
              style: AppTextStyle.caption(context, Colors.black),),
          ),
           ListTile(
            title: Text("Phone",
              style: AppTextStyle.caption(context, Colors.black),),
            subtitle: Text("01866062078",
              style: AppTextStyle.caption(context, Colors.black),),
          ),
          const Divider(
            thickness: 3,
          ),
          Row(
            children:  [
               Padding(
                padding: EdgeInsets.only(left: 16.0,top: 16),
                child: Text("Password",
                  style: AppTextStyle.subtitle(context, Colors.black),),
              ),
              Spacer(),
              Text("Change Password",
                style: AppTextStyle.subtitle(context, Colors.black),),
              Icon(Icons.arrow_forward_ios,size: 18,)
            ],
          )
        ],
      ),
    );
  }
}
