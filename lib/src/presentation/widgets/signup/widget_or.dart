import 'package:flutter/material.dart';

import '../../../utils/app_text_style.dart';

class OrDividerWidget extends StatelessWidget {
  const OrDividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Divider(
          thickness: 1.5,
          color: Colors.teal.shade50,
        )),
        Text(" OR ",
            style: AppTextStyle.body(context, Colors.teal)
                .copyWith(fontWeight: FontWeight.bold)),
        Expanded(
            child: Divider(
          thickness: 1.5,
          color: Colors.teal.shade50,
        )),
      ],
    );
  }
}
