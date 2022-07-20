import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/provider/login_signup.dart';
import '../../utils/app_text_style.dart';
import '../widgets/signup/widget_already_account.dart';
import '../widgets/signup/widget_or.dart';
import '../widgets/signup/widget_social_icon.dart';
import '../widgets/widget_bottom_nav.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    final visible = Provider.of<LoginSignIn>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                  height: 200, child: Image.asset("assets/images/sign-up.gif")),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.person,
                    size: 25,
                    color: Colors.teal,
                  ),
                  hintText: 'Email',
                  hintStyle: AppTextStyle.body(context, Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.teal,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.blue)),
                  isDense: true,
                  // Added this
                  contentPadding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                ),
                cursorColor: Colors.black,
                style: const TextStyle(color: Colors.black),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                onChanged: (text) {},
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: 'Password',

                  hintStyle: AppTextStyle.body(context, Colors.grey),
                  prefixIcon: const Icon(
                    Icons.lock,
                    size: 25,
                    color: Colors.teal,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      visible.isObscure
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      visible.eyeVisible();
                    },
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.teal,
                    ),
                  ),

                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                      )),
                  isDense: true,
                  // Added this
                  contentPadding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                ),
                cursorColor: Colors.black,
                style: const TextStyle(color: Colors.black),
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                obscuringCharacter: '*',
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(12)),
                height: 40,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => const BottomNavigationWidget()));
                  },
                  child: Text(
                    'Sign Up',
                    style: AppTextStyle.subtitle(context, Colors.white)
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              AlreadyAccountWidget(),
              const OrDividerWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialIcon(iconSrc: "assets/icons/twitter.svg", press: () {}),
                  SocialIcon(
                      iconSrc: "assets/icons/facebook.svg", press: () {}),
                  SocialIcon(
                      iconSrc: "assets/icons/google-plus.svg", press: () {}),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
