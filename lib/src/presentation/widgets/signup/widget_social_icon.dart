import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({Key? key, required this.iconSrc, required this.press})
      : super(key: key);
  final String iconSrc;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function()?,
      child: Container(

        margin: const EdgeInsets.all(12),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 2, color: Colors.grey.shade200),
        ),
        child: SvgPicture.asset(iconSrc, height: 30, width: 30,color: Colors.teal,),
      ),
    );
  }
}
