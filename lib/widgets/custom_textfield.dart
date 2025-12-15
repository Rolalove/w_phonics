import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.label,
    this.controller,
    this.obscureText = false,
    this.textInputType = TextInputType.text,
    this.suffixIcon,
  });

  final String label;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType textInputType;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: textInputType,

      style: const TextStyle(color: Colors.blue),

      cursorColor: Colors.purple,

      decoration: InputDecoration(
        suffixIcon: suffixIcon,

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.white),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.blue),
        ),

        labelText: label,
        labelStyle: const TextStyle(color: Colors.blue),
        floatingLabelStyle: const TextStyle(color: Colors.blue),
      ),
    );
  }
}
