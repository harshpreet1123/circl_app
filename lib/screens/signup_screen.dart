import 'package:circl_app/widgets/button.dart';
import 'package:circl_app/widgets/input_field.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 20),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.chevron_left,
                    size: 28,
                  ),
                ),
                const Text(
                  'Signup',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 28,
                  width: 28,
                )
              ]),
              const SizedBox(height: 40),
              const InputField(label: 'Name'),
              const SizedBox(height: 20),
              const InputField(label: 'Email'),
              const SizedBox(height: 20),
              const InputField(label: 'Password'),
              const SizedBox(height: 20),
              const InputField(label: 'Confirm Password'),
              const SizedBox(height: 20),
              Button(
                label: 'Signup',
                isFilled: true,
                isPrimary: true,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/verify-otp');
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an Account? ',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/login');
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Color(0xFF7F3DFF),
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
