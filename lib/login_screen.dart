import 'package:flutter/material.dart';
import 'package:responsive_auth_screen/register_screen.dart';
import 'package:responsive_auth_screen/widgets/gradient_btn.dart';
import 'package:responsive_auth_screen/widgets/login_field.dart';
import 'package:responsive_auth_screen/widgets/socail_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    final heightRes = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/signin_balls.png',
                height: heightRes * 0.25,
              ),
              const Text(
                'Sign in.',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
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
              LoginFieldWidget(
                hintText: "Email",
                customController: _emailController,
              ),
              const SizedBox(height: 20),
              LoginFieldWidget(
                hintText: "Password",
                customController: _passwordController,
              ),
              const SizedBox(height: 20),
              const GradientBtnWidget(),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterScreen(),
                      ));
                },
                child: Align(
                  child: Text("Hesabım Yok ?"),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
