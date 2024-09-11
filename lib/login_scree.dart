import 'package:flutter/material.dart';
import 'package:responsive_auth_screen/widgets/gradient_btn.dart';
import 'package:responsive_auth_screen/widgets/login_field.dart';
import 'package:responsive_auth_screen/widgets/socail_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/signin_balls.png'),
              const Text(
                'Sign in.',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50),
              const SocialButtonWidget(
                  iconPath: "assets/svgs/g_logo.svg",
                  text: "Continue with Google"),
              const SizedBox(height: 20),
              const SocialButtonWidget(
                iconPath: "assets/svgs/f_logo.svg",
                text: "Continue with Facebook",
                horizontalPadding: 90,
              ),
              const SizedBox(height: 15),
              const Text("or", style: TextStyle(fontSize: 17)),
              const SizedBox(height: 15),
              const LoginFieldWidget(hintText: "Email"),
              const SizedBox(height: 20),
              const LoginFieldWidget(hintText: "Password"),
              const SizedBox(height: 20),
              const GradientBtnWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
