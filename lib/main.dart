import 'package:flutter/material.dart';
import 'package:responsive_auth_screen/login_scree.dart';
import 'package:responsive_auth_screen/palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: Pallete.backgroundColor),
      home: const LoginScreen(),
    );
  }
}
