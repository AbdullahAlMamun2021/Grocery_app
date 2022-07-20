import 'package:flutter/material.dart';

import '../../../utils/app_text_style.dart';
import '../../screen/screen_signup.dart';

class AlreadyAccountWidget extends StatelessWidget {
  const AlreadyAccountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Already have an Account ?',
          style: AppTextStyle.body(context, Colors.teal.shade200),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (ctx) => const SignUpScreen()));
          },
          child: Text(
            'Sign in ',
            style: AppTextStyle.body(context, Colors.teal),
          ),
        ),
      ],
    );
  }
}
