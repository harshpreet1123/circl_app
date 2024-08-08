import 'package:circl_app/screens/login_screen.dart';
import 'package:circl_app/screens/onboarding_screen.dart';
import 'package:circl_app/screens/signup_screen.dart';
import 'package:circl_app/screens/splash_screen.dart';
import 'package:circl_app/screens/verify_otp_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Circl',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff7F3DFF)),
        useMaterial3: true,
      ),
      // Define the named routes here
      routes: {
        '/': (context) => const SplashScreen(),
        '/onboarding': (context) => const OnboardingScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => SignUpScreen(),
        '/verify-otp': (context) => VerifyOtpScreen()
      },
      initialRoute: '/',
    );
  }
}
