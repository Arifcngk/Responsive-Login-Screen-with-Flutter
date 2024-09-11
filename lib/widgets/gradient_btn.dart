import 'package:flutter/material.dart';
import 'package:responsive_auth_screen/palette.dart';

class GradientBtnWidget extends StatelessWidget {
  const GradientBtnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [
          Pallete.gradient1,
          Pallete.gradient2,
          Pallete.gradient3,
        ], begin: Alignment.bottomLeft, end: Alignment.topRight),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(395, 55),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: const Text(
          'Sign in',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
