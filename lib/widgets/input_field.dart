import 'package:circl_app/styles/colors.dart';
import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String label;
  const InputField({super.key, required this.label});

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: widget.label,
        labelStyle: TextStyle(
          color: Kcolors.placeholder,
          fontSize: 16,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        filled: true,
        fillColor: Colors.transparent,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(width: 1, color: Kcolors.inputFill),
        ),
      ),
    );
  }
}
