import 'package:flutter/material.dart';
import 'package:stylish_ecommerce_app/app_color.dart';

class CustomField extends StatelessWidget {
  const CustomField(
      {super.key,
      required this.hintText,
      required this.prefixIcon,
      this.sufixIcon});

  final String hintText;
  final IconData prefixIcon;
  final IconData? sufixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColor.primaryColor),
        borderRadius: BorderRadius.circular(12),
      ),
      fillColor: Colors.grey.withOpacity(0.1),
      filled: true,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      prefixIcon: Icon(
        prefixIcon,
        size: 28,
      ),
      hintText: hintText,
      suffixIcon: Icon(sufixIcon, size: 28),
    ));
  }
}
