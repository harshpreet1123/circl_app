import 'package:circl_app/styles/colors.dart';
import 'package:circl_app/styles/sizes.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String label;
  final bool isFilled;
  final bool isPrimary;
  final void Function()? onPressed;

  const Button({
    super.key,
    required this.label,
    required this.isFilled,
    this.isPrimary = false,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Ksize.fullWidth(context),
      margin: const EdgeInsets.only(bottom: 20),
      child: TextButton(
        onPressed: onPressed ?? () {},
        style: TextButton.styleFrom(
          backgroundColor: isFilled
              ? (isPrimary ? Kcolors.primaryColor : Kcolors.whiteColor)
              : Colors.transparent,
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
            color: isFilled
                ? (isPrimary ? Kcolors.whiteColor : Kcolors.primaryColor)
                : Kcolors.whiteColor,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
