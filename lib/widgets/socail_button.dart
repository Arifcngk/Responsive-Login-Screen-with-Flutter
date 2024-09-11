import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_auth_screen/palette.dart';

class SocialButtonWidget extends StatelessWidget {
  final String iconPath;
  final String text;
  final double horizontalPadding;
  const SocialButtonWidget(
      {super.key,
      required this.iconPath,
      this.horizontalPadding = 100,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: SvgPicture.asset(
        iconPath,
        width: 25,
        color: Pallete.whiteColor,
      ),
      label: Text(
        text,
        style: const TextStyle(color: Pallete.whiteColor, fontSize: 17),
      ),
      style: TextButton.styleFrom(
        padding:  EdgeInsets.symmetric(vertical: 30, horizontal: horizontalPadding),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Pallete.borderColor, width: 3),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
