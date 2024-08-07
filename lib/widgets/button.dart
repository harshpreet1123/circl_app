import 'package:circl_app/styles/colors.dart';
import 'package:circl_app/styles/sizes.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String label;
  final bool isFilled;
  const Button({super.key, required this.label, required this.isFilled});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Ksize.fullWidth(context),
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: TextButton(
        onPressed: () {
          // Handle button press
        },
        style: TextButton.styleFrom(
          backgroundColor: isFilled ? Kcolors.whiteColor : Colors.transparent,
          padding: const EdgeInsets.all(16),
          side: BorderSide(width: 2, color: Kcolors.whiteColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: isFilled ? Kcolors.primaryColor : Kcolors.whiteColor,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
