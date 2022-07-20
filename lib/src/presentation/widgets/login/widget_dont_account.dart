import 'package:flutter/material.dart';

import '../../../utils/app_text_style.dart';
import '../../screen/screen_signup.dart';

class DontAccountWidget extends StatelessWidget {
  const DontAccountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an Account ?',
          style: AppTextStyle.body(context, Colors.teal.shade200),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (ctx) => const SignUpScreen()));
          },
          child: Text(
            'Sign up ',
            style: AppTextStyle.body(context, Colors.teal),
          ),
        ),
      ],
    );
  }
}
