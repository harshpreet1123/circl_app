import 'package:circl_app/styles/sizes.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/onboarding');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: const Text(
                "Circl",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 64,
                  fontFamily: "Playtpi",
                  // color: Color(0xff7F3DFF),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: Ksize.fullWidth(context),
              child: Lottie.asset(
                "assets/animations/splash.json",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
