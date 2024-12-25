import 'package:flutter/material.dart';
import 'package:stylish_ecommerce_app/app_color.dart';

class ProfilePageTextField extends StatelessWidget {
  const ProfilePageTextField(
      {super.key,
      required this.hintText,
      this.obscureText = false,
      this.suffixIcon});

  final String hintText;
  final bool obscureText;
  final Icon? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: Colors.black,
      ),
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        filled: true,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
        fillColor: Colors.transparent,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide:
              const BorderSide(color: AppColor.primaryColor, width: 1.0),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
      ),
    );
  }
}
