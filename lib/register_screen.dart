import 'package:flutter/material.dart';
import 'package:responsive_auth_screen/widgets/gradient_btn.dart';
import 'package:responsive_auth_screen/widgets/login_field.dart';
import 'package:responsive_auth_screen/widgets/socail_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    TextEditingController _nameController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/signin_balls.png'),
              const Text(
                'Register.',
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
              LoginFieldWidget(
                hintText: "Name",
                customController: _nameController,
              ),
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
            ],
          ),
        ),
      ),
    );
  }
}
