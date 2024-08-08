import 'package:circl_app/styles/colors.dart';
import 'package:circl_app/widgets/button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kcolors.primaryColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Button(
              label: "Signup",
              isFilled: false,
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
            ),
            Button(
              label: "Login",
              isFilled: true,
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
            )
          ],
        ),
      )),
    );
  }
}
